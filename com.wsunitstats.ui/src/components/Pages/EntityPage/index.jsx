import * as React from 'react';
import * as Constants from 'utils/constants';
import { useSearchParams } from 'react-router-dom';
import { Stack } from '@mui/material';
import { LocalePicker } from 'components/Pages/EntityPage/LocalePicker';
import { EntityPicker } from 'components/Pages/EntityPage/EntityPicker';
import isEqual from 'lodash/isEqual';

export const EntityPage = (props) => {
  const { view: View, navItems, fetchEntityURI, fetchEntityParams, pickerOptions } = props;
  let [option, setOption] = React.useState(null);
  let [entity, setEntity] = React.useState(null);
  const [loading, setLoading] = React.useState(false);
  const [searchParams, setSearchParams] = useSearchParams();
  const gameId = searchParams.get(Constants.PARAM_GAME_ID);
  const locale = searchParams.get(Constants.PARAM_LOCALE);
  
  const prevGameId = React.useRef(null);
  const prevLocale = React.useRef(null);
  const prevParams = React.useRef(null);

  // for immediate sync in case of browser navigation
  if (!gameId) {
      entity = null;
      option = null;
  }

  const clear = React.useCallback((replace = true) => {
    let params = {};
    if (locale) {
      params = {[Constants.PARAM_LOCALE]: locale};
    }
    setSearchParams(new URLSearchParams(params), { replace: replace });
    setEntity(null);
    setOption(null);
  }, [setSearchParams, locale]);

  React.useEffect(() => {
    let active = true;

    const handleResult = (result) => {
      const received = result[0];
      setLoading(false);
      if (received) {
        setEntity(received);
        setOption({
          name: received.name,
          [Constants.PARAM_GAME_ID]: received.gameId,
          nation: received.nation
        });
      } else {
        clear();
      }
    }

    if (active && (prevGameId.current !== gameId || prevLocale.current !== locale || !isEqual(prevParams.current, fetchEntityParams))) {
      if (gameId) {
        setLoading(true);
        fetch(fetchEntityURI + '?' + new URLSearchParams({
          [Constants.PARAM_GAME_ID]: gameId,
          [Constants.PARAM_LOCALE]: locale,
          ...fetchEntityParams
        }))
          .then((response) => response.json())
          .then(handleResult)
          .catch(console.log);
      } else {
        clear();
      }
      prevGameId.current = gameId;
      prevLocale.current = locale;
      prevParams.current = fetchEntityParams;
    }
    return () => {
      active = false;
    };
  }, [gameId, locale, clear, fetchEntityURI, fetchEntityParams]);

  const onIdChange = (gameId) => {
    if (gameId === null) {
      clear(false);
    } else {
      searchParams.set(Constants.PARAM_GAME_ID, gameId);
      setSearchParams(searchParams);
    }
  }

  const onLocaleChange = (locale) => {
    searchParams.set(Constants.PARAM_LOCALE, locale);
    setSearchParams(searchParams, { replace: true });
  }

  return (
    <>
      <Stack
        sx={{
          flexDirection: 'row',
          alignItems: 'stretch',
          justifyContent: 'center',
          fontSize: 'calc(10px + 2vmin)',
          padding: '15px',
          width: '90%'
        }}>
        <LocalePicker
          onSelect={onLocaleChange}
          currentLocale={locale} />
        <EntityPicker
          locale={locale}
          value={option}
          setValue={setOption}
          onSelect={onIdChange}
          options={pickerOptions} />
        {navItems}
      </Stack>
      <View entity={entity} loading={loading} />
    </>
  );
}

