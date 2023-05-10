import { Box, Stack } from "@mui/material";

const BORDER = '3px solid rgb(85, 120, 218)';
const BORDER_RADIUS = 2;

export const DoubleColumnFrame = ({ children, childrenProps, column }) => {
  const isSingle = !Array.isArray(children);
  const childrenFiltered = isSingle ? children : children.filter(element => element);
  const direction = column ? 'column' : 'row';
  return (
    <>
      {isSingle
        ? <SingleChildRenderer child={childrenFiltered} childProps={childrenProps} />
        : <ArrayChildRenderer children={childrenFiltered} childrenProps={childrenProps} direction={direction} />}
    </>
  );
}

const SingleChildRenderer = ({ child, childProps: givenProps }) => {
  const childProps = {
    padding: '4px',
    boxSizing: 'border-box',
    ...givenProps
  }
  return (
    <Stack sx={{
      border: BORDER,
      borderRadius: BORDER_RADIUS,
    }}>
      <Box sx={childProps}>
        {child}
      </Box>
    </Stack>
  );
}

const ArrayChildRenderer = ({ children, childrenProps, direction }) => {
  const isRow = direction === 'row';
  return (
    <Stack sx={{
      flexDirection: direction,
      border: BORDER,
      borderRadius: BORDER_RADIUS,
    }}>
      {children.map((child, index) => {
        const isNotLast = index + 1 !== children.length;
        const rowBorder = isRow && isNotLast ? BORDER : '';
        const columnBorder = !isRow && isNotLast ? BORDER : '';

        const childProps = {
          padding: '4px',
          boxSizing: 'border-box',
          borderRight: rowBorder,
          borderBottom: columnBorder,
          ...childrenProps[index]
        }
        return (
          <Box key={index} sx={childProps}>
            {child}
          </Box>
        );
      })}
    </Stack>
  );
}