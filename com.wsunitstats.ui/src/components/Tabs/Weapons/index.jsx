import { WeaponTable } from "components/Tabs/Weapons/WeaponTable";

export const WeaponTab = ({ unit }) => {
  return (
    <>
      <h3>Weapons</h3>
      <WeaponTable weapons={unit.weapons} turrets={unit.turrets} />
    </>
  );
}