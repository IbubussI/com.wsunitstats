import * as React from 'react';
import { UnitView } from 'components/UnitView';
import { useSearchParams } from 'react-router-dom';
import * as Constants from 'utils/Constants';
import { UnitForm } from './UnitForm';

export const UnitPage = () => {
  const [option, setOption] = React.useState(null);
  const [unit, setUnit] = React.useState(null);
  const [searchParams, setSearchParams] = useSearchParams();
  const unitId = searchParams.get('unitId');
  const locale = searchParams.get('locale');

  React.useEffect(() => {
    let active = true;

    const handleUnitResult = (result) => {
      let receivedUnit = result[0];
      if (receivedUnit) {
        setUnit(receivedUnit);
        setOption({
          name: receivedUnit.name,
          id: receivedUnit.id,
          nation: receivedUnit.nation
        });
      } else {
        searchParams.delete('unitId');
        setSearchParams(searchParams);
      }
    }

    if (active) {
      if (unitId) {
        fetch(Constants.HOST + Constants.UNIT_DATA_API + '?' + new URLSearchParams({
          id: unitId,
          locale: locale
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
  }, [unitId, locale, setSearchParams, searchParams]);

  return (
    <>
      <UnitForm
        onUnitIdChange={(unitId) => {
          // update unitId
          if (unitId === null) {
            searchParams.delete('unitId');
          } else {
            searchParams.set('unitId', unitId);
          }
          setSearchParams(searchParams);
        }}
        onLocaleChange={(locale) => {
          // update selected locale to url
          searchParams.set('locale', locale);
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