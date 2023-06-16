import * as React from 'react';
import * as Constants from 'utils/constants';
import { useParams, useSearchParams } from 'react-router-dom';
import { Stack } from '@mui/material';
import { EntityPicker } from 'components/Pages/EntityPage/EntityPicker';
import isEqual from 'lodash/isEqual';

export const EntityPage = ({ view: View, navItems, fetchEntityURI, fetchEntityParams, pickerOptions }) => {
  let [option, setOption] = React.useState(null);
  let [entity, setEntity] = React.useState(null);
  const [loading, setLoading] = React.useState(false);
  const [searchParams, setSearchParams] = useSearchParams();
  const gameId = searchParams.get(Constants.PARAM_GAME_ID);
  const { locale } = useParams();

  // for immediate sync in case of browser navigation
  if (!gameId) {
      entity = null;
      option = null;
  }

  const clear = React.useCallback((replace = true) => {
    setSearchParams(new URLSearchParams(), { replace: replace });
    setEntity(null);
    setOption(null);
  }, [setSearchParams]);

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
    return () => {
      active = false;
    };
  }, [gameId, locale, clear, fetchEntityURI, fetchEntityParams]);

  const onIdChange = (gameId) => {
    if (gameId !== null) {
      searchParams.set(Constants.PARAM_GAME_ID, gameId);
      setSearchParams(searchParams);
    }
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

