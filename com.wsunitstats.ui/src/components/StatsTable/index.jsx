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

export const StatsTable = ({ content }) => {
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