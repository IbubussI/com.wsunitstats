import * as React from 'react';
import { FlexibleTable, FlexibleTableDoubleCellRow } from 'components/Atoms/FlexibleTable';

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
    <FlexibleTable
      columns={COMMON_COLUMN}
      rows={commonData.length}
      data={commonData}
      rowHeight='max-content'
      minWidth='200px' />
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