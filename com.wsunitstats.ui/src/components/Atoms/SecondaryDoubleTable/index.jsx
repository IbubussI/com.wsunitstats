import { Table, TableBody, TableCell, TableContainer, TableHead, TableRow, Typography } from "@mui/material";

export const SecondaryDoubleTable = ({
  label,
  headerSpan,
  showBorder,
  data,
  tableWidth,
  leftRowWidth,
  rightRowWidth
}) => {
  if (!data) {
    return (null);
  }
  return (
    <TableContainer sx={{
      border: showBorder && "1px solid rgb(144, 144, 144)",
      borderRadius: 2,
      width: '100%',
      boxSizing: 'border-box'
    }}>
      <Table style={{ tableLayout: 'auto', width: '100%', minWidth: tableWidth }}>
        <TableHead sx={{
          '& tr th': {
            paddingTop: '6px',
            paddingBottom: '6px'
          },
        }}>
          <TableRow>
            <TableCell align="center" colSpan={headerSpan}>
              <Typography variant='body2' color='text.primary' sx={{ fontWeight: 'bold' }}>
                {label}
              </Typography>
            </TableCell>
          </TableRow>
        </TableHead>
        <TableBody sx={{
          '& tr td': {
            paddingRight: '7px',
            paddingLeft: '7px',
            paddingBottom: '0px',
            border: 0,
          },
        }}>
          {data.map((row, index) => {
            let variant = index === 0 ? 'body2' : 'caption';
            let color = index === 0 ? 'text.primary' : 'text.secondary';
            if (!row) {
              return (null);
            }
            return (
              <TableRow key={index} sx={{
                '& td': {
                  paddingTop: index === 0 ? '5px' : '0px'
                }
              }}>
                <TableCell>
                  <Typography variant={variant} color={color} sx={{ width: leftRowWidth }}>
                    {row.leftCell}
                  </Typography>
                </TableCell>
                <TableCell sx={{ width: rightRowWidth }}>
                  <Typography variant={variant} color={color}>
                    {row.rightCell}
                  </Typography>
                </TableCell>
              </TableRow>
            );
          })}
        </TableBody>
      </Table>
    </TableContainer>
  );
}