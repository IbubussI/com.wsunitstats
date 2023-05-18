import { ResizableGrid } from "components/Layout/ResizableGrid";
import { ResearchTable } from "components/Pages/ResearchPage/Tabs/Research/ResearchTable";

const MIN_WIDTH = 400;
const OVERFLOW_WIDTH = 200;
const COLUMN_WIDTH = 500;

export const ResearchTab = ({ entity: research }) => {
  return (
    <>
      <h3>Research</h3>
      <ResizableGrid minWidth={MIN_WIDTH} columnWidth={COLUMN_WIDTH} paddingTop={1}>
        <ResearchTable research={research} overflowMinWidth={OVERFLOW_WIDTH}/>
      </ResizableGrid>
    </>
  );
}