import { Table, TableBody, TableCell, TableContainer, TableHead, TableRow, Typography } from "@mui/material";

export const PopDoubleTable = ({ title, data }) => {
  return (
    <TableContainer sx={{
      borderRadius: 2,
      margin: "6px",
      width: 'max-content'
    }}>
      <Table style={{ tableLayout: 'fixed', width: 'max-content' }}>
        <TableHead sx={{
          '& tr th': {
            paddingTop: '8px',
            paddingBottom: '8px',
          },
        }}>
          <TableRow>
            <TableCell align="center" colSpan={2}>
              <Typography variant='body2' color='text.primary' sx={{ fontWeight: 'bold' }}>
                {title}
              </Typography>
            </TableCell>
          </TableRow>
        </TableHead>
        <TableBody sx={{
          '& tr td': {
            paddingRight: '7px',
            paddingLeft: '7px',
            paddingTop: '4px',
            paddingBottom: '4px',
            border: 0,
          },
          '& tr:first-child td': {
            paddingTop: '10px',
          },
        }}>
          {data.map((entry, index) => {
            let Renderer = entry.renderer;
            if (entry.value === undefined) {
              return null;
            }
            return (
              <TableRow key={index}>
                <TableCell sx={{ verticalAlign: entry.baseline && 'baseline' }}>
                  {entry.label}
                </TableCell>
                <TableCell>
                  <Renderer data={entry.value} />
                </TableCell>
              </TableRow>
            );
          })}
        </TableBody>
      </Table>
    </TableContainer>
  );
}
