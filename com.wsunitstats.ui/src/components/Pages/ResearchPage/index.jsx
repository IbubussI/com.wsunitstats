import * as React from 'react';
import './index.css';
import { useOutletContext } from 'react-router-dom';
import { ResearchTable } from 'components/Pages/ResearchPage/ResearchTable';
import { GridGroup, ResizableGrid } from 'components/Layout/ResizableGrid';

const MIN_WIDTH = 400;
const OVERFLOW_WIDTH = 200;
const COLUMN_WIDTH = 500;

export const ResearchPage = () => {
  const entity = useOutletContext();
  const research = entity;

  return (
    <>
      <h3>Research</h3>
      <ResizableGrid minWidth={MIN_WIDTH} paddingTop={1}>
        <GridGroup columnWidth={COLUMN_WIDTH}>
          <ResearchTable research={research} overflowMinWidth={OVERFLOW_WIDTH} />
        </GridGroup>
      </ResizableGrid>
    </>
  );
}