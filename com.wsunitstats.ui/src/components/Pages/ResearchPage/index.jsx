import * as React from 'react';
import * as Constants from 'utils/constants';
import { Typography } from '@mui/material';
import { EntityPage } from '../EntityPage';

export const ResearchPage = () => {
  return (
    <EntityPage
      view={Typography}
      fetchEntityURI={Constants.HOST + Constants.RESEARCH_DATA_API}
      fetchOptionsURI={Constants.HOST + Constants.RESEARCH_OPTIONS_API}
      autocompletePlaceholder='Type the Research name'/>
  );
}