import * as React from 'react';
import Typography from '@mui/material/Typography';
import { Box, Chip, Stack, Button } from '@mui/material';
import { BasicPaper } from '../BasicPaper';
import { FlexibleTable } from '../Atoms/FlexibleTable';
import { ButtonTextRenderer, SubValueRenderer, TagListRenderer, TextRenderer } from '../Atoms/FlexibleTable/renderers';
import { SecondaryDoubleTable } from '../Atoms/SecondaryDoubleTable';
import { ButtonPopper } from "../Atoms/ButtonPopper";
import { PopDoubleTable } from '../Atoms/PopDoubleTable';

const STATS_COLUMNS = 2;
const STATS_ROWS = 6;
// 2*6 - 1 span for title
const STATS_LENGTH = 11;

export const WeaponTable = ({ turrets, weapons, ariaLabel }) => {
  if (turrets || weapons) {
    return (
      <Stack component={BasicPaper} spacing={0.5} sx={{ padding: 1 }}>
        {weapons && weapons.map((weapon, index) => {
          return (
            <WeaponTableEntry
              ariaLabel={ariaLabel}
              key={index}
              weapon={weapon}
              weaponType={getType(false, weapon)} />
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
                    weaponType={getType(true, weapon)}
                    turretRotationSpeed={turret.rotationSpeed} />
                );
              })}
            </React.Fragment>
          );
        })}
      </Stack>
    );
  }
}

function getType(isTurret, weapon) {
  if (isTurret) {
    return 'Turret';
  } else if (weapon.charges) {
    return 'Avia bomb';
  } else {
    return weapon.spread ? 'Range' : 'Melee';
  }
}

const WeaponTableEntry = ({ weapon, weaponType, turretRotationSpeed }) => {
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
      rowSpan: 2,
      renderer: FlexibleTableWeaponHeaderRow,
      childData: {
        type: weaponType,
        disabled: weapon.enabled === false && 'disabled'
      }
    },
    {
      column: 1,
      renderer: FlexibleTableRow,
      childData: {
        label: 'Rotation speed',
        value: turretRotationSpeed
      }
    },
    {
      column: 1,
      renderer: FlexibleTableRow,
      childData: {
        label: 'Friendly damage',
        value: '' + !!weapon.damageFriendly
      }
    },
    {
      column: 1,
      renderer: FlexibleTableButtonRow,
      childData: {
        label: 'Buff',
        renderer: PopDoubleTable,
        popTitle: 'Buff',
        value: buffData
      }
    },
    {
      column: 1,
      renderer: FlexibleTableButtonRow,
      childData: {
        label: 'Environment',
        renderer: PopDoubleTable,
        popTitle: 'Environment',
        value: envData
      }
    },
    {
      column: 2,
      renderer: FlexibleTableRow,
      childData: {
        label: 'Reload',
        value: weapon.rechargePeriod + ' sec'
      }
    },
    {
      column: 2,
      renderer: FlexibleTableRow,
      childData: {
        label: 'Spread',
        value: weapon.spread && weapon.spread + ' %'
      }
    },
    {
      column: 2,
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
      column: 2,
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
      <Box sx={{
        width: '100%',
        height: 'max-content',
        display: 'flex',
        flexDirection: 'row',
      }}>
        <FlexibleTable
          columns={STATS_COLUMNS}
          rows={STATS_ROWS}
          data={statsData}
          rowHeight='max-content' />
      </Box>

      <Stack
        flex='1 1 20%'
        alignItems='center'
        gap={'5px'}
        borderLeft='3px solid rgb(85, 120, 218)'>
        <SecondaryDoubleTable
          label='Damage'
          headerSpan={2}
          data={damageData}
          tableWidth='150px'
          leftRowWidth='max-content'
          rightRowWidth='47px' />
        <AttackInfoButton data={attackData} />
      </Stack>
    </Stack>
  );
}

const AttackInfoButton = ({data}) => {
  const ButtonContentRenderer = ({ onClick, icon: Icon }) => {
    return (
      <Button
        variant='outlined'
        onClick={onClick}
        endIcon={<Icon/>}
        sx={{
          width: 'max-content',
          textTransform: 'none',
          '&:hover': { backgroundColor: 'rgb(195, 225, 255)' },
        }}>
        Attack info
      </Button>
    );
  }
  return (
    <ButtonPopper
      popperRenderer={PopDoubleTable}
      popperRendererContent={data}
      popperTitle={'Attack info'}
      buttonRenderer={ButtonContentRenderer} />
  );
}

const FlexibleTableDoubleCellRow = ({
  labelRenderer: LabelRenderer,
  valueRenderer: ValueRenderer,
  labelWidth,
  valueWidth,
  data
}) => {
  return (
    <Stack
      direction="row"
      justifyContent='center'
      height='100%'>
      <Stack
        justifyContent='center'
        width={labelWidth}
        height='100%'
        sx={{ paddingLeft: '7px' }}>
        <LabelRenderer data={data.label} />
      </Stack>
      <Stack
        justifyContent='center'
        width={valueWidth}
        height='100%'
        sx={{ paddingLeft: '7px' }}>
        <ValueRenderer data={data.value} />
      </Stack>
    </Stack>
  );
}

const FlexibleTableWeaponHeaderRow = ({ data }) => {
  let label = data.disabled ? `${data.type} (${data.disabled})` : data.type;
  return (
    <Stack
      alignItems='center'
      justifyContent='center'
      flexDirection='row'
      flexWrap='wrap'
      gap='5px'
      height='100%'>
      <Chip
        label={label}
        variant='outlined'
        color={data.disabled ? 'error' : 'default'}
        sx={{ fontWeight: 'bold'}} />
    </Stack>
  );
}

const FlexibleTableRow = ({ data }) => {
  return (
    <FlexibleTableDoubleCellRow
      labelRenderer={TextRenderer}
      valueRenderer={TextRenderer}
      labelWidth='60%'
      valueWidth='40%'
      data={data} />
  );
}

const FlexibleTableSubValuedRow = ({ data }) => {
  return (
    <FlexibleTableDoubleCellRow
      labelRenderer={TextRenderer}
      valueRenderer={SubValueRenderer}
      labelWidth='60%'
      valueWidth='40%'
      data={data} />
  );
}

const FlexibleTableButtonRow = ({ data }) => {
  const ButtonContentRenderer = ({onClick}) => {
    return (
      <Button
        onClick={onClick}
        sx={{
          textTransform: 'none',
          width: '100%',
          height: '100%',
          textAlign: 'left',
          '&>div': { width: '100%' },
          '&:hover': { backgroundColor: 'rgb(195, 225, 255)'},
          padding: 0,
        }}>
        <FlexibleTableDoubleCellRow
          labelRenderer={TextRenderer}
          valueRenderer={ButtonTextRenderer}
          labelWidth='60%'
          valueWidth='40%'
          data={{ label: data.label, value: 'click to open' }} />
      </Button>
    );
  }
  return (
    <ButtonPopper
      popperRenderer={data.renderer}
      popperRendererContent={data.value}
      popperTitle={data.popTitle}
      buttonRenderer={ButtonContentRenderer} />
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