import * as React from 'react';
import { Stack } from "@mui/material";
import { BasicPaper } from "components/Atoms/BasicPaper";
import { WeaponTable } from "components/Tabs/Weapons/WeaponTable";

export const WeaponTab = ({ unit }) => {
  return (
    <>
      <h3>Weapons</h3>
      <Stack component={BasicPaper} spacing={3.5} sx={{ padding: 1, paddingTop: 3, width: '100%', maxWidth: '700px' }}>
        {unit.weapons && unit.weapons.map((weapon, index) => {
          return (
            <WeaponTable key={index} item={weapon} />
          );
        })}
        {unit.turrets && unit.turrets.map((turret, index) => {
          return (
            <React.Fragment key={index}>
              {turret.weapons.map((weapon, index) => {
                return (
                  <WeaponTable key={index}
                    item={{
                      weapon: weapon,
                      turretId: turret.turretId,
                      turretRotationSpeed: turret.rotationSpeed
                    }}
                    isTurret={true} />
                );
              })}
            </React.Fragment>
          );
        })}
      </Stack>
    </>
  );
}