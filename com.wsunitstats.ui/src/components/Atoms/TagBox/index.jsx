import { Box, Stack, Typography } from "@mui/material";
import { Tag, Text } from "components/Atoms/Renderer";

export const TagBox = ({ tagsData }) => {
  return (
    <Box sx={{ padding: '7px' }}>
      <Text data={tagsData.label} />
      <Stack direction='row' sx={{ paddingTop: '3px', gap: '3px', flexWrap: 'wrap' }}>
        {tagsData.tags
          ? tagsData.tags.map((tag, index) => (
            <Tag key={index} data={{ tag: tag, onClick: () => { } }} />
          ))
          : <Typography>{'\u2013'}</Typography>}
      </Stack>
    </Box>
  );
}



