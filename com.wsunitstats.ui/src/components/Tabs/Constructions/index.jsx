import { ConstructionTable } from "./ConstructionTable";

export const ConstructionsTab = ({ unit }) => {
  return (
    <>
      <h3>Constructions</h3>
      <div style={{ width: '100%' }}>
        <ConstructionTable/>
      </div>
    </>
  );
}