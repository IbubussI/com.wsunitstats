import * as React from 'react';
import { Stack } from '@mui/material';
import {
  FlexibleTable,
  FlexibleTableDoubleCellRow,
} from 'components/Atoms/FlexibleTable';
import { HeaderChip, SubValue, TagList, Text } from 'components/Atoms/Renderer';
import { DoubleColumnTable } from 'components/Atoms/DoubleColumnTable';
import { InfoButtonPopper } from "components/Atoms/ButtonPopper";
import * as Constants from "utils/constants";
import { DoubleColumnFrame } from 'components/Atoms/DoubleColumnFrame';

const STATS_COLUMNS = 2;
const STATS_ROWS = 4;
const FLEX_TABLE_RIGHT_WIDTH = '52%';
const FLEX_TABLE_LEFT_WIDTH = '48%';
 
export const WeaponTable = ({ item, isTurret }) => {
  const weapon = isTurret ? item.weapon : item;
  const turretRotationSpeed = item.turretRotationSpeed;
  const turretId = item.turretId;
  
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

  const weaponData = [
    {
      column: 1,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: 'Reload',
        value: weapon.rechargePeriod + Constants.SECONDS_END_MARKER,
        widthRight: FLEX_TABLE_RIGHT_WIDTH,
        widthLeft: FLEX_TABLE_LEFT_WIDTH
      }
    },
    {
      column: 1,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: 'Spread',
        value: weapon.spread && weapon.spread + '\u00A0%',
        widthRight: FLEX_TABLE_RIGHT_WIDTH,
        widthLeft: FLEX_TABLE_LEFT_WIDTH
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
        valueRenderer: SubValue,
        widthRight: FLEX_TABLE_RIGHT_WIDTH,
        widthLeft: FLEX_TABLE_LEFT_WIDTH
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
        valueRenderer: SubValue,
        widthRight: FLEX_TABLE_RIGHT_WIDTH,
        widthLeft: FLEX_TABLE_LEFT_WIDTH
      }
    },
    {
      column: 2,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: 'Rotation speed',
        value: turretRotationSpeed,
        widthRight: FLEX_TABLE_RIGHT_WIDTH,
        widthLeft: FLEX_TABLE_LEFT_WIDTH
      }
    },
    {
      column: 2,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: 'Friendly damage',
        value: '' + !!weapon.damageFriendly,
        widthRight: FLEX_TABLE_RIGHT_WIDTH,
        widthLeft: FLEX_TABLE_LEFT_WIDTH
      }
    },
    {
      column: 2,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: 'Ground attack\u00A0(X)',
        value: '' + !!weapon.attackGround,
        widthRight: FLEX_TABLE_RIGHT_WIDTH,
        widthLeft: FLEX_TABLE_LEFT_WIDTH
      }
    },
    {
      column: 2,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: 'Projectile speed',
        value: weapon.projectile?.speed,
        widthRight: FLEX_TABLE_RIGHT_WIDTH,
        widthLeft: FLEX_TABLE_LEFT_WIDTH
      }
    },
    {
      column: 2,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: 'Projectile inactive',
        value: weapon.projectile?.timeToStartCollision && weapon.projectile?.timeToStartCollision + Constants.SECONDS_END_MARKER,
        widthRight: FLEX_TABLE_RIGHT_WIDTH,
        widthLeft: FLEX_TABLE_LEFT_WIDTH
      }
    },
  ].filter(element => element.childData.type !== undefined || (element.childData.value !== undefined && (!Array.isArray(element.childData.value) || element.childData.value.length > 0)));

  const disabled = weapon.enabled === false && 'disabled';
  const labelData = {
    value: {
      tooltip: isTurret ? "Turret ID #" + turretId : "Weapon ID #" + weapon.weaponId,
      id: isTurret ? "T" + turretId : "W" + weapon.weaponId,
      label: weapon.weaponType,
      disabled: disabled
    },
    valueRenderer: HeaderChip,
    shift: '80px'
  }

  return (
    <DoubleColumnFrame childrenProps={[{ paddingTop: '14px'}, { overflow: 'auto', width: '100%' }]} borderLabel={labelData} disabled={disabled}>
      <>
        <DoubleColumnTable data={damageTableData} />
        <Stack sx={{
          width: '100%',
          gap: '5px',
          padding: '5px',
          boxSizing: 'border-box'
        }}>
          {attackData.content.length > 0 && <InfoButtonPopper label={attackData.label}>
            <DoubleColumnTable data={attackData} />
          </InfoButtonPopper>}
          {buffData.content.length > 0 && <InfoButtonPopper label={buffData.label}>
            <DoubleColumnTable data={buffData} />
          </InfoButtonPopper>}
          {envData.content.length > 0 && <InfoButtonPopper label={envData.label}>
            <DoubleColumnTable data={envData} />
          </InfoButtonPopper>}
        </Stack>
      </>

      <FlexibleTable
        columns={STATS_COLUMNS}
        rows={STATS_ROWS}
        data={weaponData}
        rowHeight='max-content'
        minWidth='340px' />
    </DoubleColumnFrame>
  );
}

const handleClick = () => {
  // tbd
};