import { Stack } from "@mui/material";
import { BasicPaper } from "components/Atoms/BasicPaper";
import { BuildingTable } from "components/Tabs/Building/BuildingTable";

export const BuildingTab = ({ unit }) => {
  return (
    <>
      <h3>Building</h3>
      <Stack component={BasicPaper} sx={{ padding: 1, width: '100%', maxWidth: '450px' }}>
        <BuildingTable build={unit.build} />
      </Stack>
    </>
  );
}