import * as React from 'react';
import { UnitView } from 'components/UnitView';
import { useSearchParams } from 'react-router-dom';
import * as Constants from 'utils/Constants';
import { Stack } from '@mui/material';
import { LocalePicker } from 'components/LocalePicker';
import { UnitPicker } from 'components/UnitPicker';

export const UnitPage = () => {
  const [option, setOption] = React.useState(null);
  const [unit, setUnit] = React.useState(null);
  const [searchParams, setSearchParams] = useSearchParams();
  const gameId = searchParams.get(Constants.PARAM_GAME_ID);
  const locale = searchParams.get(Constants.PARAM_LOCALE);

  React.useEffect(() => {
    let active = true;

    const handleUnitResult = (result) => {
      let receivedUnit = result[0];
      if (receivedUnit) {
        setUnit(receivedUnit);
        setOption({
          name: receivedUnit.name,
          [Constants.PARAM_GAME_ID]: receivedUnit.gameId,
          nation: receivedUnit.nation
        });
      } else {
        searchParams.delete(Constants.PARAM_GAME_ID);
        setSearchParams(searchParams);
      }
    }

    if (active) {
      if (gameId) {
        fetch(Constants.HOST + Constants.UNIT_DATA_API + '?' + new URLSearchParams({
          [Constants.PARAM_GAME_ID]: gameId,
          [Constants.PARAM_LOCALE]: locale
        }))
          .then((response) => response.json())
          .then(handleUnitResult)
          .catch(console.log);
      } else {
        setUnit(null);
        setOption(null);
      }
    }
    return () => {
      active = false;
    };
  }, [gameId, locale, setSearchParams, searchParams]);

  return (
    <>
      <UnitForm
        onUnitIdChange={(gameId) => {
          // update unitId
          if (gameId === null) {
            searchParams.delete(Constants.PARAM_GAME_ID);
          } else {
            searchParams.set(Constants.PARAM_GAME_ID, gameId);
          }
          setSearchParams(searchParams);
        }}
        onLocaleChange={(locale) => {
          // update selected locale to url
          searchParams.set(Constants.PARAM_LOCALE, locale);
          setSearchParams(searchParams, { replace: true });
        }}
        locale={locale}
        option={option}
        setOption={setOption}
      />
      {unit ? <UnitView unit={unit} /> : <div>Waiting for your input...</div>}
    </>
  );
}

export const UnitForm = ({ onUnitIdChange, onLocaleChange, locale, option, setOption }) => {
  return (
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
      <UnitPicker
        locale={locale}
        value={option}
        setValue={setOption}
        onSelect={onUnitIdChange} />
    </Stack>
  );
}