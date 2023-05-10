import * as React from 'react';
import { FlexibleTable, FlexibleTableDoubleCellRow } from 'components/Atoms/FlexibleTable';
import { Stack } from '@mui/material';
import { DoubleColumnFrame } from 'components/Atoms/DoubleColumnFrame';
import { ArmorChart } from '../ArmorChart';

const COMMON_COLUMN = 1;
const FLEX_TABLE_RIGHT_WIDTH = '50%';
const FLEX_TABLE_LEFT_WIDTH = '50%';

export const CommonTable = ({ unit }) => {
  const commonData = [
    createRowData('Game ID', unit.gameId),
    createRowData('Nation', unit.nation),
    createRowData('View Range', unit.viewRange),
    createRowData('Size', unit.size),
    createRowData('Health', unit.health),
    createRowData('Regeneration Speed', unit.regenerationSpeed, 'hp/sec'),

    createRowData('Movement Speed', unit.movement?.speed),
    createRowData('Rotation Speed', unit.movement?.rotationSpeed),

    createRowData('Transporting size', unit.transporting?.ownSize),
    createRowData('Transporting capacity', unit.transporting?.carrySize),
    createRowData('Can transport', unit.transporting?.carrySize ? (unit.transporting.onlyInfantry ? 'Only infantry' : 'Any land unit') : null),

    createRowData('Takes population', unit.supply?.consume),
    createRowData('Gives population', unit.supply?.produce),
    createRowData('Limit', unit.limit),

    createRowData('Receives friendly\u00A0DMG', unit.receiveFriendlyDamage === false ? 'False' : 'True'),
    createRowData('Parent must not move', unit.parentMustIdle ? 'True' : null),
    createRowData('Controllable', unit.controllable === undefined || unit.controllable ? 'True' : 'False'),

    createRowData('Threat', unit.threat),
  ].filter(element => element);

  return (
    <DoubleColumnFrame childrenProps={[null, { overflow: 'auto', width: '100%' }]}>
      <Stack alignItems='center'>
        <h3 style={{ marginBlockStart: '0.65em', marginBlockEnd: '0.65em', maxWidth: '150px', textAlign: 'center' }}>{unit.name}</h3>
        <Stack sx={{
          width: '150px',
          height: '150px',
          justifyContent: 'center',
          alignItems: 'center',
          border: '1px solid',
        }}>
          <img style={{ border: '5px solid #555', boxSizing: 'border-box' }} src={`/files/images/${unit.image}`} alt="" />
        </Stack>
        {unit.armor?.length > 0 &&
          <>
            <h3>Armor</h3>
            <ArmorChart
              content={unit.armor}
              valuePrefix={'Thickness: '}
              colors={[
                'rgba(122, 16, 16, 1)',
                'rgba(168, 87, 15, 1)',
                'rgba(168, 116, 15, 1)',
                'rgba(15, 132, 21, 1)',
              ]} />
          </>}
      </Stack>
      <FlexibleTable
        columns={COMMON_COLUMN}
        rows={commonData.length}
        data={commonData}
        rowHeight='max-content'
        minWidth='200px' />
    </DoubleColumnFrame>
  );
}

function createRowData(name, valueObject, units) {
  if (valueObject != null) {
    let value = "";
    if (units) {
      value = `${valueObject} ${units}`;
    } else {
      value = valueObject.toString();
    }
    return {
      column: 1,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: name,
        value: value,
        widthRight: FLEX_TABLE_RIGHT_WIDTH,
        widthLeft: FLEX_TABLE_LEFT_WIDTH
      }
    };
  } else {
    return null;
  }
}