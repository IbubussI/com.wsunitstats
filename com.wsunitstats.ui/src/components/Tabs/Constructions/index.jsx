import { Stack, Typography } from "@mui/material";
import { ConstructionTable } from "components/Tabs/Constructions/ConstructionTable";
import { BasicPaper } from "components/Atoms/BasicPaper";

export const ConstructionsTab = ({ unit }) => {
  return (
    <>
      <h3>Constructions</h3>
      <Stack component={BasicPaper} spacing={3.5} sx={{ padding: 1, paddingTop: 3, width: '100%', maxWidth: '500px' }}>
        {unit.construction.map((construction, index) => <ConstructionTable key={index} construction={construction} />)}
        <Typography variant="caption" color="text.secondary">
          * NOTE: Construction speed is now calculated with the use of some sort of "magic number", that was get empirically by measuring the time. Despite it has decent precision, it does not 100% correlate with in-game values. If you know the exact formula and want to share it with me, you can find my Discord below 
        </Typography>
      </Stack>
    </>
  );
}