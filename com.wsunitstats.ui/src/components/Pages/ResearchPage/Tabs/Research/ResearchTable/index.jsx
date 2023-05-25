import { Stack, Typography } from "@mui/material";
import { EntityImage } from "components/Atoms/EntityImage";
import { DoubleColumnFrame } from "components/Layout/DoubleColumnFrame";

export const ResearchTable = ({ research }) => {
  return (
    <DoubleColumnFrame childrenProps={[null, { overflow: 'auto', width: '100%' }]}>
      <Stack alignItems='center' spacing={0.8}>
        <h3 style={{ marginBlockStart: '0.4em', marginBlockEnd: '0.65em', textAlign: 'center' }}>{research.name}</h3>
        <EntityImage image={research.image} width='100px' height='100px'/>
        <Typography variant='body2' align='center'>
          {research.description}
        </Typography>
        <Typography variant='body2' align='center'>
          Game ID: {research.gameId}
        </Typography>
      </Stack>
    </DoubleColumnFrame>
  );
}