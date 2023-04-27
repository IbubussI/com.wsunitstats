import { Box, Button, Chip, Stack, Avatar, Tooltip } from "@mui/material";
import { ButtonTextRenderer, SubValueRenderer, TextRenderer } from "./renderers";
import { ButtonPopper } from "../ButtonPopper";

export const FlexibleTable = ({ columns, rows, data, minWidth }) => {
  return (
    <Box sx={{
      minWidth: minWidth,
      display: 'grid',
      gridTemplateColumns: `repeat(${columns}, 1fr)`,
      gridTemplateRows: `repeat(${rows}, 1fr)`,
      gridColumnGap: '0px',
      gridRowGap: '0px',
      gridAutoFlow: 'column',
      width: '100%',
      '&>*:nth-of-type(n):hover': { backgroundColor: 'rgb(225, 225, 225)' }
    }}>
      {data.map((entry, index) => {
        let rowSpan = 'span ' + (entry.rowSpan ? entry.rowSpan : '1');
        let Renderer = entry.renderer;
        let column = entry.column;
        let row = entry.row ? entry.row : 'auto';
        let backgroundColor = isFillBackground(index, rows, column) ? 'rgb(240, 240, 240)' : '';
        return (
          <Box
            key={index}
            gridColumn={column}
            gridRow={`${row} / ${rowSpan}`}
            minHeight={'45px'}
            backgroundColor={backgroundColor}>
            <Renderer
              key={index}
              data={entry.childData}
              options={entry.options} />
          </Box>
        );
      })}
    </Box>
  );
}

export const FlexibleTableDoubleCellRow = ({
  labelRenderer: LabelRenderer,
  valueRenderer: ValueRenderer,
  data
}) => {
  return (
    <Stack
      direction="row"
      justifyContent='center'
      height='100%'>
      <Stack
        justifyContent='center'
        width='50%'
        height='100%'
        sx={{ paddingLeft: '7px' }}>
        <LabelRenderer data={data.label} />
      </Stack>
      <Stack
        justifyContent='center'
        width='50%'
        height='100%'
        sx={{ paddingLeft: '7px' }}>
        <ValueRenderer data={data.value} />
      </Stack>
    </Stack>
  );
}

export const FlexibleTableHeaderRow = ({ data }) => {
  let label = data.disabled ? `${data.type} (${data.disabled})` : data.type;

  return (
    <Stack
      alignItems='center'
      justifyContent='center'
      flexDirection='row'
      flexWrap='wrap'
      gap='5px'
      height='100%'>
      <Chip
        label={label}
        variant='outlined'
        avatar={
          <Tooltip title={data.avatarTooltip}>
            <Avatar sx={{ border: '1px solid' }}>
              {data.id}
            </Avatar>
          </Tooltip>
        }
        color={data.disabled ? 'error' : 'default'}
        sx={{
          fontWeight: 'bold',
          fontSize: 17,
          height: '36px',
          borderRadius: '18px'
        }} />
    </Stack>
  );
}

export const FlexibleTableRow = ({ data }) => {
  return (
    <FlexibleTableDoubleCellRow
      labelRenderer={TextRenderer}
      valueRenderer={TextRenderer}
      data={data} />
  );
}

export const FlexibleTableSubValuedRow = ({ data }) => {
  return (
    <FlexibleTableDoubleCellRow
      labelRenderer={TextRenderer}
      valueRenderer={SubValueRenderer}
      data={data} />
  );
}

export const FlexibleTableButtonRow = ({ data }) => {
  const ButtonContentRenderer = ({ onClick }) => {
    return (
      <Button
        onClick={onClick}
        sx={{
          textTransform: 'none',
          width: '100%',
          height: '100%',
          textAlign: 'left',
          '&>div': { width: '100%' },
          '&:hover': { backgroundColor: 'rgb(195, 225, 255)' },
          padding: 0,
        }}>
        <FlexibleTableDoubleCellRow
          labelRenderer={TextRenderer}
          valueRenderer={ButtonTextRenderer}
          data={{ label: data.label, value: 'click to open' }} />
      </Button>
    );
  }
  return (
    <ButtonPopper
      popperRenderer={data.renderer}
      popperRendererContent={data.value}
      popperTitle={data.popTitle}
      buttonRenderer={ButtonContentRenderer} />
  );
}

function isFillBackground(index, rows, column) {
  if (isEven(rows)) {
    return isEven(index);
  } else {
    return isEven(column) ? isEven(index) : !isEven(index);
  }
}

function isEven(n) {
  return n % 2 === 0;
}
