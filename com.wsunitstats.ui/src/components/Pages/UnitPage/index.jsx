import * as React from 'react';
import * as Constants from 'utils/constants';
import { UnitView } from 'components/Pages/UnitPage/UnitView';
import { EntityPage } from 'components/Pages/EntityPage';
import { useSearchParams } from 'react-router-dom';

export const UnitPage = () => {
  const [searchParams] = useSearchParams();
  const researches = searchParams.get(Constants.PARAM_RESEARCH_ID);
  const fetchParams = researches ? {[Constants.PARAM_RESEARCH_ID]: researches} : {};
  return (
    <EntityPage
      view={UnitView}
      fetchEntityURI={Constants.HOST + Constants.UNIT_DATA_API}
      fetchEntityParams={fetchParams}
      pickerOptions={{
        fetchURI: Constants.HOST + Constants.UNIT_OPTIONS_API,
        placeholder: 'Type the Unit name',
        optionSecondaryCallback: (option) => option.nation
      }}
    />
  );
}