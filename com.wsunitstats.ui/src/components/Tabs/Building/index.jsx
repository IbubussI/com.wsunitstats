import { BuildingTable } from "components/Tabs/Building/BuildingTable";

export const BuildingTab = ({ unit }) => {
  return (
    <>
      <h3>Building</h3>
      <BuildingTable build={unit.build} />
    </>
  );
}