import { GridGroup, ResizableGrid } from "components/Layout/ResizableGrid";
import { WorkAbilityTable } from "components/Pages/UnitPage/Tabs/Abilities/WorkAbilityTable"
import { OnActionAbilityTable } from "./OnActionAbilityTable";
import { ZoneEventAbilityTable } from "./ZoneEventAbilityTable";

const MIN_WIDTH = 280;
const COLUMN_WIDTH = 480;

export const AbilitiesTab = ({ entity: unit }) => {
  const onActionAbilities = unit.abilities.filter(element => element.containerType === 0);
  const workAbilities = unit.abilities.filter(element => element.containerType === 1);
  const zoneEventAbilities = unit.abilities.filter(element => element.containerType === 2);

  return (
    <>
      <h3>Abilities</h3>
      <ResizableGrid minWidth={MIN_WIDTH} paddingTop={0}>
        <GridGroup heading={workAbilities[0]?.containerName} columnWidth={COLUMN_WIDTH}>
          {getTables(WorkAbilityTable, workAbilities)}
        </GridGroup>
        <GridGroup heading={onActionAbilities[0]?.containerName} columnWidth={COLUMN_WIDTH}>
          {getTables(OnActionAbilityTable, onActionAbilities)}
        </GridGroup>
        <GridGroup heading={zoneEventAbilities[0]?.containerName} columnWidth={COLUMN_WIDTH}>
          {getTables(ZoneEventAbilityTable, zoneEventAbilities)}
        </GridGroup>
      </ResizableGrid>
    </>
  );
}

const getTables = (AbilityComponent, abilities) => {
  if (abilities.length) {
    return abilities.map((abilityContainer, index) =>
      <AbilityComponent key={index} abilityContainer={abilityContainer} overflowMinWidth={MIN_WIDTH} />
    );
  } else {
    return null;
  }
}