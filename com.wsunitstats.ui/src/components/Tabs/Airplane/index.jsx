import { ResizableGrid } from "components/Layout/ResizableGrid";
import { AirplaneTable } from "components/Tabs/Airplane/AirplaneTable";

const MIN_WIDTH = 250;
const OVERFLOW_WIDTH = 200;
const COLUMN_WIDTH = 450;

export const AirplaneTab = ({ unit }) => {
  return (
    <>
      <h3>Airplane</h3>
      <ResizableGrid minWidth={MIN_WIDTH} columnWidth={COLUMN_WIDTH} paddingTop={1}>
        <AirplaneTable airplane={unit.airplane} overflowMinWidth={OVERFLOW_WIDTH}/>
      </ResizableGrid>
    </>
  );
}