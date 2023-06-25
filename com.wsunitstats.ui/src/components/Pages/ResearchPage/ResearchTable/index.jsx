import * as Utils from "utils/utils";
import { Grid, Stack, Typography } from "@mui/material";
import { EntityImage } from "components/Atoms/EntityImage";
import { DoubleColumnFrame } from "components/Layout/DoubleColumnFrame";
import { EntityInfo } from "components/Atoms/Renderer";
import { useParams } from "react-router-dom";

export const ResearchTable = ({ research }) => {
  const { locale } = useParams();
  const upgrades = research.upgrades?.filter(element => element.unit);
  return (
    <DoubleColumnFrame column childrenProps={[null, { overflow: 'auto', width: '100%' }]}>
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
      {upgrades.length && <Stack alignItems='center' spacing={0.8}>
        <p>Affected units</p>
        <Grid container spacing={1}>
          {research.upgrades.map((upgrade) => {
            const upgradeData = {
              values: [
                upgrade.unit && {
                  primary: upgrade.unit.entityName,
                  secondary: upgrade.unit.entityNation ? upgrade.unit.entityNation + ', ID: ' + upgrade.unit.entityId : 'ID: ' + upgrade.unit.entityId,
                  image: {
                    path: upgrade.unit.entityImage,
                    width: 35,
                    height: 35,
                  },
                  link: {
                    id: upgrade.unit.entityId,
                    locale: locale,
                    path: Utils.getEntityRoute("unit")
                  },
                  overflow: false
                },
              ].filter(element => element),
            }
            return (
              <Grid item key={upgrade.id} xs={6} sx={{ alignItems: 'center', display: 'flex' }}>
                <EntityInfo data={upgradeData} />
              </Grid>
            );
          })}
        </Grid>
      </Stack>}
    </DoubleColumnFrame>
  );
}