import * as React from 'react';
import * as Constants from 'utils/constants';
import { useSearchParams } from 'react-router-dom';
import { Stack } from '@mui/material';
import { LocalePicker } from 'components/Pages/EntityPage/LocalePicker';
import { EntityPicker } from 'components/Pages/EntityPage/EntityPicker';

export const EntityPage = ({ view: View, fetchEntityURI, pickerOptions }) => {
  const [option, setOption] = React.useState(null);
  const [entity, setEntity] = React.useState(null);
  const [searchParams, setSearchParams] = useSearchParams();
  const gameId = searchParams.get(Constants.PARAM_GAME_ID);
  const locale = searchParams.get(Constants.PARAM_LOCALE);
  
  const prevGameId = React.useRef(null);
  const prevLocale = React.useRef(null);

  const clear = React.useCallback((replace = true) => {
    setSearchParams(new URLSearchParams({
      [Constants.PARAM_LOCALE]: locale
    }), { replace: replace });
    setEntity(null);
    setOption(null);
  }, [setSearchParams, locale]);

  React.useEffect(() => {
    let active = true;

    const handleResult = (result) => {
      let received = result[0];
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

    if (active && (prevGameId.current !== gameId || prevLocale.current !== locale)) {
      if (gameId) {
        fetch(fetchEntityURI + '?' + new URLSearchParams({
          [Constants.PARAM_GAME_ID]: gameId,
          [Constants.PARAM_LOCALE]: locale
        }))
          .then((response) => response.json())
          .then(handleResult)
          .catch(console.log);
      } else {
        clear();
      }
      prevGameId.current = gameId;
      prevLocale.current = locale;
    }
    return () => {
      active = false;
    };
  }, [gameId, locale, clear, fetchEntityURI]);

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
          alignItems: 'center',
          justifyContent: 'center',
          fontSize: 'calc(10px + 2vmin)',
          padding: '15px',
          width: '90%',
          maxWidth: '400px'
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
      </Stack>
      <View entity={entity} />
    </>
  );
}

