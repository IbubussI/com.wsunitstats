import { ResizableGrid } from "components/Layout/ResizableGrid";
import { AbilityTable } from "components/Tabs/Abilities/AbilityTable"

const MIN_WIDTH = 280;
const COLUMN_WIDTH = 500;

export const AbilitiesTab = ({ unit }) => {
  return (
    <>
      <h3>Abilities</h3>
      <ResizableGrid minWidth={MIN_WIDTH} columnWidth={COLUMN_WIDTH}>
        {unit.abilities.map((ability, index) =>
          <AbilityTable key={index} ability={ability} overflowMinWidth={MIN_WIDTH} />
        )}
      </ResizableGrid>
    </>
  );
}