import { AbilityTable } from "components/Tabs/Abilities/AbilityTable"

export const AbilitiesTab = ({ unit }) => {
  return (
    <>
      <h3>Abilities</h3>
      <AbilityTable abilities={unit.abilities} />
    </>
  );
}