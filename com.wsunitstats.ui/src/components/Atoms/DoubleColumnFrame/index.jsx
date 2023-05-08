import { Stack } from "@mui/material";

export const DoubleColumnFrame = ({ children, leftWidth, rightWidth }) => {
  const LeftContent = children[0];
  const RightContent = children[1];
  return (
    <Stack sx={{
        flexDirection: "row",
        border: '3px solid rgb(85, 120, 218)',
        borderRadius: 2,
      }}>
      {LeftContent && <Stack sx={{
        padding: '4px',
        width: leftWidth,
        borderRight: '3px solid rgb(85, 120, 218)',
      }}>
        {LeftContent}
      </Stack>}
      {RightContent && <Stack sx={{
        width: rightWidth,
        padding: '4px',
        overflow: 'auto',
      }}>
        {RightContent}
      </Stack>}
    </Stack>
  );
}