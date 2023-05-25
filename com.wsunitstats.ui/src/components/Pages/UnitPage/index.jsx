import * as React from 'react';
import * as Constants from 'utils/constants';
import { UnitView } from 'components/Pages/UnitPage/UnitView';
import { EntityPage } from '../EntityPage';

export const UnitPage = () => {
  return (
    <EntityPage
      view={UnitView}
      fetchEntityURI={Constants.HOST + Constants.UNIT_DATA_API}
      pickerOptions={{
        fetchURI: Constants.HOST + Constants.UNIT_OPTIONS_API,
        placeholder: 'Type the Unit name',
        optionSecondaryCallback: (option) => option.nation
      }}
    />
  );
}