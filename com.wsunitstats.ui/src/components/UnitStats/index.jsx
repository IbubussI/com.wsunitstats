import * as React from 'react';
import Table from '@mui/material/Table';
import TableBody from '@mui/material/TableBody';
import TableCell from '@mui/material/TableCell';
import TableContainer from '@mui/material/TableContainer';
import TableRow from '@mui/material/TableRow';
import Paper from '@mui/material/Paper';
import './index.css';

const CustomPaper = (props) => {
  return <Paper elevation={3} {...props} />;
};

export const UnitStats = ({ unit }) => {
  function createRowData(name, valueObject, units) {
    if (valueObject != null) {
      let value = "";
      if (units) {
        value = `${valueObject}, (${units})`;
      } else {
        value = valueObject.toString();
      }
      return { name, value };
    } else {
      return null;
    }
  }

  const content = [
    createRowData('Game ID', unit.gameId),
    createRowData('Nation', unit.nation),
    createRowData('Size', unit.size),
    createRowData('View Range', unit.viewRange),
    createRowData('Health', unit.health),
    createRowData('Regeneration Speed', unit.regenerationSpeed, 'hp/sec'),

    createRowData('Movement Speed', unit.movement ? unit.movement.speed : null),
    createRowData('Rotation Speed', unit.movement ? unit.movement.rotationSpeed : null),

    createRowData('Transporting size', unit.transporting ? unit.transporting.ownSize : null),
    createRowData('Transporting capacity',  unit.transporting ? unit.transporting.carrySize : null),
    createRowData('Can transport only infantry',  unit.transporting ? unit.transporting.onlyInfantry : null),

    createRowData('Takes population', unit.supply ? unit.supply.consume : null),
    createRowData('Gives population', unit.supply ? unit.supply.produce : null),

    createRowData('Receives friendly damage', unit.receiveFriendlyDamage),
    createRowData('Threat', unit.threat),
    createRowData('Limit', unit.limit),
    createRowData('Parent must not move', unit.parentMustIdle),
    createRowData('Controllable', unit.controllable)
  ];

  return (
    <TableContainer component={CustomPaper}>
      <Table aria-label="Unit Data" style={{ tableLayout: 'fixed' }}>
        <TableBody>
          {content.map((row) => {
            if (row) {
              return (
                <TableRow
                  key={row.name}
                  sx={{ '&:last-child td, &:last-child th': { border: 0 } }}
                >
                  <TableCell align="right">{row.name}</TableCell>
                  <TableCell>{row.value}</TableCell>
                </TableRow>
              );
            } else {
              return (null);
            }
          })}
        </TableBody>
      </Table>
    </TableContainer>
  );
}