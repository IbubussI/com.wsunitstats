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
  function createRowData(name, value, units) {
    if (units) {
      value = `${value}, (${units})`;
    }
    return {name, value};
  }

  const rows = [
    createRowData('Game ID', unit.gameId),
    createRowData('Health', unit.health),
  ];

  return (
    <TableContainer component={CustomPaper}>
      <Table aria-label="Unit Data" style={{ tableLayout: 'fixed' }}>
        <TableBody>
          {rows.map((row) => (
            <TableRow
              key={row.name}
              sx={{ '&:last-child td, &:last-child th': { border: 0 } }}
            >
              <TableCell align="right">{row.name}</TableCell>
              <TableCell>{row.value}</TableCell>
            </TableRow>
          ))}
        </TableBody>
      </Table>
    </TableContainer>
  );
}