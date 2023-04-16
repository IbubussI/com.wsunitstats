import { Box } from "@mui/material";

export const FlexibleTable = ({ columns, rows, data, rowHeight }) => {
  return (
    <Box sx={{
      display: 'grid',
      gridTemplateColumns: `repeat(${columns}, 1fr)`,
      gridTemplateRows: `repeat(${rows}, 1fr)`,
      gridColumnGap: '0px',
      gridRowGap: '0px',
      gridAutoFlow: 'column',
      width: '100%',
      height: `${rowHeight}`,
      '&>*:nth-of-type(n):hover': { backgroundColor: 'rgb(225, 225, 225)' },
      '&>*:nth-of-type(even)': { backgroundColor: 'rgb(240, 240, 240)' },
    }}>
      {data.map((entry, index) => {
        let rowSpan = 'span ' + (entry.rowSpan ? entry.rowSpan : '1');
        let Renderer = entry.renderer;
        let column = entry.column ? entry.column : 'auto';
        let row = entry.row ? entry.row : 'auto';
        return (
          <Box
            key={index}
            gridColumn={column}
            gridRow={`${row} / ${rowSpan}`}>
            <Renderer
              key={index}
              data={entry.childData}
              options={entry.options}/>
          </Box>
        );
      })}
    </Box>
  );
}
