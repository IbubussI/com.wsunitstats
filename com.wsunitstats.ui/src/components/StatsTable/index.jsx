import * as React from 'react';
import Table from '@mui/material/Table';
import TableBody from '@mui/material/TableBody';
import TableCell from '@mui/material/TableCell';
import TableContainer from '@mui/material/TableContainer';
import TableRow from '@mui/material/TableRow';
import { BasicPaper } from 'components/Atoms/BasicPaper';

export const StatsTable = ({ content }) => {
  return (
    <TableContainer component={BasicPaper}>
      <Table style={{ tableLayout: 'fixed' }}>
        <TableBody>
          {content.map((row) => {
            if (row) {
              return (
                <TableRow
                  key={row.name}
                  sx={[
                    {
                      '&:last-child td, &:last-child th': {
                        border: 0
                      },
                    },
                    {
                      '& td': {
                        paddingRight: '7px',
                        paddingLeft: '7px',
                        paddingTop: '10px',
                        paddingBottom: '10px',
                      },
                    },
                  ]}
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