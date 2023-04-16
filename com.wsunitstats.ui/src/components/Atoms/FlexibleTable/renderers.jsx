import { Box, Chip, Typography } from "@mui/material";

export const TextRenderer = ({ data }) => {
  return (
    <Typography variant='body2' color='text.primary'>
      {data}
    </Typography>
  );
}

export const ButtonTextRenderer = ({ data }) => {
  return (
    <Typography variant='body2' color='rgb(25, 118, 210)'>
      {data}
    </Typography>
  );
}

export const SubValueRenderer = ({ data }) => {
  return (
    <>
      <Typography variant='body2' color='text.primary' lineHeight={1.2}>
        {data.primaryValue}
      </Typography>
      {data.subValue.value && <Typography variant='caption' color='text.secondary' lineHeight={1.2}>
        {data.subValue.label + ': ' + data.subValue.value}
      </Typography>}
    </>
  );
}

export const TagListRenderer = ({ data }) => {
  return (
    <>
      {data.tags && data.tags.map((tag, index) => (
        <Box sx={{ paddingBottom: '2px' }}>
          <Chip
            key={index}
            label={tag}
            onClick={data.onClick}
            size='small'
            sx={{ border: '1px solid rgb(182, 182, 182)', width: 'max-content' }} />
        </Box>
      ))}
    </>
  );
}