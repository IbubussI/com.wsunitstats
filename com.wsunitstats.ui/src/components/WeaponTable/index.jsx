import * as React from 'react';
import { Box, Stack } from '@mui/material';
import { BasicPaper } from 'components/Atoms/BasicPaper';
import { FlexibleTable, FlexibleTableHeaderRow, FlexibleTableRow, FlexibleTableSubValuedRow } from 'components/Atoms/FlexibleTable';
import { TagListRenderer, TextRenderer } from 'components/Atoms/FlexibleTable/renderers';
import { SecondaryDoubleTable } from 'components/Atoms/SecondaryDoubleTable';
import { InfoButtonPopper } from "components/Atoms/ButtonPopper";

const STATS_COLUMNS = 2;
const STATS_ROWS = 5;
const STATS_LENGTH = 10;

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

  const attackData = [
    {
      label: 'Ammo',
      renderer: TextRenderer,
      value: weapon.charges,
    },
    {
      label: 'Damages per projectile',
      renderer: TextRenderer,
      value: weapon.damagesCount,
    },
    {
      label: 'Damages per attack',
      renderer: TextRenderer,
      value: weapon.attacksPerAttack,
    },
    {
      label: 'Attacks per action',
      renderer: TextRenderer,
      value: weapon.attacksPerAction,
    },
    {
      label: 'Attack delay',
      renderer: TextRenderer,
      value: weapon.attackDelay && weapon.attackDelay.toFixed(3) + ', s',
    },
    {
      label: 'Attack time',
      renderer: TextRenderer,
      value: weapon.attackTime && weapon.attackTime.toFixed(3) + ', s',
    },
    {
      label: 'Average shot time',
      renderer: TextRenderer,
      value: weapon.avgShotTime && weapon.avgShotTime.toFixed(3) + ', s',
    }
  ].filter(element => element !== undefined);

  const buffData = [
    {
      label: 'Name',
      renderer: TextRenderer,
      value: weapon.buff?.name,
    },
    {
      label: 'Duration',
      renderer: TextRenderer,
      value: weapon.buff?.period,
    },
    {
      label: 'Affected units',
      baseline: true,
      renderer: TagListRenderer,
      value: weapon.buff?.affectedUnits && {
        tags: weapon.buff.affectedUnits,
        onClick: handleClick,
      }
    }
  ].filter(element => element.value !== undefined);

  const envData = [
    {
      label: 'Damage',
      renderer: TextRenderer,
      value: weapon.envDamage,
    },
    {
      label: 'Can damage',
      baseline: true,
      renderer: TagListRenderer,
      value: weapon.envsAffected && {
        tags: weapon.envsAffected,
        onClick: handleClick,
      }
    }
  ].filter(element => element.value !== undefined);

  const statsData = [
    {
      column: 1,
      renderer: FlexibleTableHeaderRow,
      childData: {
        avatarTooltip: typeof turretId === "number" ? "Turret ID #" + turretId : "Weapon ID #" + weapon.weaponId,
        id: typeof turretId === "number" ? "T" + turretId : "W" + weapon.weaponId,
        type: weapon.weaponType,
        disabled: weapon.enabled === false && 'disabled'
      }
    },
    {
      column: 1,
      renderer: FlexibleTableRow,
      childData: {
        label: 'Reload',
        value: weapon.rechargePeriod + ' sec'
      }
    },
    {
      column: 1,
      renderer: FlexibleTableRow,
      childData: {
        label: 'Spread',
        value: weapon.spread && weapon.spread + ' %'
      }
    },
    {
      column: 1,
      renderer: FlexibleTableSubValuedRow,
      childData: {
        label: 'Area type',
        value: {
          primaryValue: weapon.areaType,
          subValue: {
            label: 'radius',
            value: weapon.radius
          }
        }
      }
    },
    {
      column: 1,
      renderer: FlexibleTableSubValuedRow,
      childData: {
        label: 'Range',
        value: {
          primaryValue: weapon.distance.min ? weapon.distance.min + '...' + weapon.distance.max : weapon.distance.max,
          subValue: {
            label: 'stop',
            value: weapon.distance.stop
          }
        }
      }
    },
    {
      column: 2,
      renderer: FlexibleTableRow,
      childData: {
        label: 'Rotation speed',
        value: turretRotationSpeed
      }
    },
    {
      column: 2,
      renderer: FlexibleTableRow,
      childData: {
        label: 'Friendly damage',
        value: '' + !!weapon.damageFriendly
      }
    },
    {
      column: 2,
      renderer: FlexibleTableRow,
      childData: {
        label: 'Ground attack (X)',
        value: '' + !!weapon.attackGround
      }
    },
    {
      column: 2,
      renderer: FlexibleTableRow,
      childData: {
        label: 'Projectile speed',
        value: weapon.projectile?.speed
      }
    },
    {
      column: 2,
      renderer: FlexibleTableRow,
      childData: {
        label: 'Projectile inactive',
        value: weapon.projectile?.timeToStartCollision && weapon.projectile?.timeToStartCollision + ', s'
      }
    },
  ].filter(element => element.childData.type !== undefined || (element.childData.value !== undefined && (!Array.isArray(element.childData.value) || element.childData.value.length > 0)));
  
  fillEmptyRows(statsData);

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
        gap='4px'
        borderRight='3px solid rgb(85, 120, 218)'>

        <SecondaryDoubleTable
          label='Damage'
          headerSpan={2}
          data={damageData}
          tableWidth='150px'
          leftRowWidth='max-content'
          rightRowWidth='47px' />
        <Stack sx={{
          width: '100%',
          gap: '5px',
          padding: '5px',
          boxSizing: 'border-box'
        }}>
          <InfoButtonPopper title='Attack info' data={attackData} />
          <InfoButtonPopper title='Buff info' data={buffData} />
          <InfoButtonPopper title='Env info' data={envData} />
        </Stack>
      </Stack>

      <Box sx={{
        width: '100%',
        height: 'max-content',
        display: 'flex',
        flexDirection: 'row',
        padding: '3px'
      }}>
        <FlexibleTable
          columns={STATS_COLUMNS}
          rows={STATS_ROWS}
          data={statsData}
          rowHeight='max-content' />
      </Box>
    </Stack>
  );
}

const handleClick = () => {
  // tbd
};

function fillEmptyRows(data) {
  function getDummyRow(column) {
    return {
      column: column,
      renderer: FlexibleTableRow,
      childData: { label: '', value: '' }
    }
  }

  let actualColumnSizes = Array(STATS_COLUMNS).fill(0);
  let actualSpanRows = Array(STATS_COLUMNS).fill(0);
  let prevColumn = 1;
  for (let i = 0; i < STATS_LENGTH; ++i) {
    let currentElement = data[i];
    // Append missing elements to last column
    if (currentElement === undefined) {
      data.push(getDummyRow(prevColumn));
      continue;
    }
    // count spans 
    if (currentElement.rowSpan) {
      actualSpanRows[currentElement.column - 1] += currentElement.rowSpan - 1;
    }
    // if column end reached in data
    if (prevColumn < currentElement.column) {
      let prevColumnSize = actualColumnSizes[prevColumn - 1];
      // if extra columns need to be inserted
      if (prevColumnSize < STATS_ROWS - actualSpanRows[prevColumn - 1]) {
        data.splice(i, 0, getDummyRow(prevColumn));
      } else {
        prevColumn = currentElement.column;
      }
    }
    actualColumnSizes[prevColumn - 1]++;
  }
}