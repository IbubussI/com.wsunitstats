import { ResizableGrid } from "components/Layout/ResizableGrid";
import { SubmarineTable } from "components/Pages/UnitPage/Tabs/Submarine/SubmarineTable";

const MIN_WIDTH = 250;
const OVERFLOW_WIDTH = 200;
const COLUMN_WIDTH = 450;

export const SubmarineTab = ({ entity: unit }) => {
  return (
    <>
      <h3>Submarine</h3>
      <ResizableGrid minWidth={MIN_WIDTH} columnWidth={COLUMN_WIDTH} paddingTop={1}>
        <SubmarineTable submarine={unit.submarine} overflowMinWidth={OVERFLOW_WIDTH}/>
      </ResizableGrid>
    </>
  );
}