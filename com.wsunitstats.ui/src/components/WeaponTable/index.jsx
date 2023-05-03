import * as React from 'react';
import { Box, Stack } from '@mui/material';
import { BasicPaper } from 'components/Atoms/BasicPaper';
import {
  FlexibleTable,
  FlexibleTableDoubleCellRow,
  FlexibleTableSingleCellRow
} from 'components/Atoms/FlexibleTable';
import { HeaderChip, SubValue, TagList, Text } from 'components/Atoms/Renderer';
import { DoubleColumnTable } from 'components/Atoms/DoubleColumnTable';
import { InfoButtonPopper } from "components/Atoms/ButtonPopper";
import * as Constants from "utils/Constants";

const STATS_COLUMNS = 2;
const STATS_ROWS = 5;

export const WeaponTable = ({ turrets, weapons }) => {
  if (turrets || weapons) {
    return (
      <Stack component={BasicPaper} spacing={0.5} sx={{ padding: 1 }}>
        {weapons && weapons.map((weapon, index) => {
          return (
            <WeaponTableEntry
              key={index}
              weapon={weapon} />
          );
        })}
        {turrets && turrets.map((turret, index) => {
          return (
            <React.Fragment key={index}>
              {turret.weapons.map((weapon, index) => {
                return (
                  <WeaponTableEntry
                    key={index}
                    weapon={weapon}
                    turretRotationSpeed={turret.rotationSpeed}
                    turretId={turret.turretId} />
                );
              })}
            </React.Fragment>
          );
        })}
      </Stack>
    );
  }
}

const WeaponTableEntry = ({ weapon, turretRotationSpeed, turretId }) => {
  const attacksNumber = weapon.damagesCount * weapon.attacksPerAttack * weapon.attacksPerAction;

  const damageData = weapon.damages.map((damage) => {
    let damageValue = attacksNumber > 1 && damage.value > 0 ? attacksNumber + 'x' + damage.value : damage.value;
    return { leftCell: damage.type, rightCell: damageValue }
  });

  const damageTableData = {
    label: 'Damage',
    variant: 'damage',
    width: '150px',
    rowStyle: {
      leftRowWidth: 'max-content',
      rightRowWidth: '47px',
      firstRowPaddingTop: '5px',
      paddingTop: '0px',
      paddingBottom: '0px'
    },
    content: damageData
  }

  const attackData = {
    label: 'Attack info',
    variant: 'popper',
    tableLayout: 'fixed',
    width: 'max-content',
    rowStyle: {
      firstRowPaddingTop: '10px',
      paddingTop: '4px',
      paddingBottom: '4px'
    },
    content: [
      {
        label: 'Ammo',
        renderer: Text,
        value: weapon.charges,
      },
      {
        label: 'Damages per projectile',
        renderer: Text,
        value: weapon.damagesCount,
      },
      {
        label: 'Damages per attack',
        renderer: Text,
        value: weapon.attacksPerAttack,
      },
      {
        label: 'Attacks per action',
        renderer: Text,
        value: weapon.attacksPerAction,
      },
      {
        label: 'Attack delay',
        renderer: Text,
        value: weapon.attackDelay && weapon.attackDelay.toFixed(3) + Constants.SECONDS_END_MARKER,
      },
      {
        label: 'Attack time',
        renderer: Text,
        value: weapon.attackTime && weapon.attackTime.toFixed(3) + Constants.SECONDS_END_MARKER,
      },
      {
        label: 'Average shot time',
        renderer: Text,
        value: weapon.avgShotTime && weapon.avgShotTime.toFixed(3) + Constants.SECONDS_END_MARKER,
      }
    ].filter(element => element.value !== undefined)
  }

  const buffData = {
    label: 'Buff info',
    variant: 'popper',
    tableLayout: 'fixed',
    width: 'max-content',
    rowStyle: {
      firstRowPaddingTop: '10px',
      paddingTop: '4px',
      paddingBottom: '4px'
    },
    content: [
      {
        label: 'Name',
        renderer: Text,
        value: weapon.buff?.name,
      },
      {
        label: 'Duration',
        renderer: Text,
        value: weapon.buff?.period && weapon.buff?.period + " sec",
      },
      {
        label: 'Affected units',
        baseline: true,
        renderer: TagList,
        value: weapon.buff?.affectedUnits && {
          tags: weapon.buff.affectedUnits,
          onClick: handleClick,
        }
      }
    ].filter(element => element.value !== undefined)
  }

  const envData = {
    label: 'Env info',
    variant: 'popper',
    tableLayout: 'fixed',
    width: 'max-content',
    rowStyle: {
      firstRowPaddingTop: '10px',
      paddingTop: '4px',
      paddingBottom: '4px'
    },
    content: [
      {
        label: 'Damage',
        renderer: Text,
        value: weapon.envDamage,
      },
      {
        label: 'Can damage',
        labelBaseline: true,
        renderer: TagList,
        value: weapon.envsAffected && {
          tags: weapon.envsAffected,
          onClick: handleClick,
        }
      }
    ].filter(element => element.value !== undefined)
  }

  const statsData = [
    {
      column: 1,
      renderer: FlexibleTableSingleCellRow,
      childData: {
        value: {
          tooltip: typeof turretId === "number" ? "Turret ID #" + turretId : "Weapon ID #" + weapon.weaponId,
          id: typeof turretId === "number" ? "T" + turretId : "W" + weapon.weaponId,
          label: weapon.weaponType,
          disabled: weapon.enabled === false && 'disabled'
        },
        valueRenderer: HeaderChip
      }
    },
    {
      column: 1,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: 'Reload',
        value: weapon.rechargePeriod + Constants.SECONDS_END_MARKER
      }
    },
    {
      column: 1,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: 'Spread',
        value: weapon.spread && weapon.spread + ' %'
      }
    },
    {
      column: 1,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: 'Area type',
        value: {
          primaryValue: weapon.areaType,
          subValues: [
            {
              label: 'radius',
              value: weapon.radius
            },
            {
              label: 'angle',
              value: weapon.angle
            }
          ]
        },
        valueRenderer: SubValue
      }
    },
    {
      column: 1,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: 'Range',
        value: {
          primaryValue: weapon.distance.min ? weapon.distance.min + '...' + weapon.distance.max : weapon.distance.max,
          subValues: [
            {
              label: 'stop',
              value: weapon.distance.stop
            }
          ]
        },
        valueRenderer: SubValue
      }
    },
    {
      column: 2,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: 'Rotation speed',
        value: turretRotationSpeed
      }
    },
    {
      column: 2,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: 'Friendly damage',
        value: '' + !!weapon.damageFriendly
      }
    },
    {
      column: 2,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: 'Ground attack (X)',
        value: '' + !!weapon.attackGround
      }
    },
    {
      column: 2,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: 'Projectile speed',
        value: weapon.projectile?.speed
      }
    },
    {
      column: 2,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: 'Projectile inactive',
        value: weapon.projectile?.timeToStartCollision && weapon.projectile?.timeToStartCollision + Constants.SECONDS_END_MARKER
      }
    },
  ].filter(element => element.childData.type !== undefined || (element.childData.value !== undefined && (!Array.isArray(element.childData.value) || element.childData.value.length > 0)));

  return (
    <Stack
      direction="row"
      justifyContent='center'
      sx={{
        border: '3px solid rgb(85, 120, 218)',
        borderRadius: 2,
      }}>
      <Stack
        flex='1 1 20%'
        alignItems='center'
        borderRight='3px solid rgb(85, 120, 218)'>
        <DoubleColumnTable data={damageTableData} />
        <Stack sx={{
          width: '100%',
          gap: '5px',
          padding: '5px',
          boxSizing: 'border-box'
        }}>
          {attackData.content.length > 0 && <InfoButtonPopper label={attackData.label}>
            <DoubleColumnTable data={attackData}/>
          </InfoButtonPopper>}
          {buffData.content.length > 0 && <InfoButtonPopper label={buffData.label}>
            <DoubleColumnTable data={buffData}/>
          </InfoButtonPopper>}
          {envData.content.length > 0 && <InfoButtonPopper label={envData.label}>
            <DoubleColumnTable data={envData}/>
          </InfoButtonPopper>}
        </Stack>
      </Stack>
      <Box sx={{
        width: '100%',
        height: 'max-content',
        display: 'flex',
        flexDirection: 'row',
        padding: '3px',
        overflow: 'auto',
      }}>
        <FlexibleTable
          columns={STATS_COLUMNS}
          rows={STATS_ROWS}
          data={statsData}
          rowHeight='max-content'
          minWidth='390px' />
      </Box>
    </Stack>
  );
}

const handleClick = () => {
  // tbd
};