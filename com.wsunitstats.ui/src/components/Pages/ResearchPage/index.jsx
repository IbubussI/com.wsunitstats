import * as React from 'react';
import * as Constants from 'utils/constants';
import { EntityPage } from 'components/Pages/EntityPage';
import { ResearchView } from 'components/Pages/ResearchPage/ResearchView';

export const ResearchPage = () => {
  return (
    <EntityPage
      view={ResearchView}
      fetchEntityURI={Constants.HOST + Constants.RESEARCH_DATA_API}
      pickerOptions={{
        fetchURI: Constants.HOST + Constants.RESEARCH_OPTIONS_API,
        placeholder: 'Type the Research name',
        optionSecondaryCallback: (option) => "ID: " + option.gameId
      }}
    />
  );
}