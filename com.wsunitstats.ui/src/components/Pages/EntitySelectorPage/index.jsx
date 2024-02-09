import * as React from 'react';
import { useLoaderData } from 'react-router-dom';
import { Box, styled } from '@mui/material';
import { EntitySelectorView } from 'components/Pages/EntitySelectorPage/EntitySelectorView';

const StyledRootContainer = styled(Box)(() => ({
  width: '100%'
}));

export const EntitySelectorPage = ({ selectorOptions }) => {
  const loaderData = useLoaderData();
  const entities = loaderData ? loaderData : [];

  return (
    // key here is required to force remount of selector grid component upon data source change
    // to avoid rendering old data on the new page (avoid data-fetch related flicker)
    <StyledRootContainer>
      <EntitySelectorView key={selectorOptions.title} options={entities} {...selectorOptions} />
    </StyledRootContainer>
  );
}