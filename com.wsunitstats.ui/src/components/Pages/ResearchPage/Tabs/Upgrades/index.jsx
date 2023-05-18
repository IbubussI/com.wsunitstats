import { ResizableGrid } from "components/Layout/ResizableGrid";
import { UpgradeTable } from "components/Pages/ResearchPage/Tabs/Upgrades/UpgradeTable";

const MIN_WIDTH = 320;
const OVERFLOW_WIDTH = 280;
const COLUMN_WIDTH = 500;

export const UpgradesTab = ({ entity: research }) => {
  return (
    <>
      <h3>Upgrades</h3>
      <ResizableGrid minWidth={MIN_WIDTH} columnWidth={COLUMN_WIDTH}>
        {research.upgrades.map((upgrade, index) =>
          <UpgradeTable key={index} upgrade={upgrade} overflowMinWidth={OVERFLOW_WIDTH} />
        )}
      </ResizableGrid>
    </>
  );
}