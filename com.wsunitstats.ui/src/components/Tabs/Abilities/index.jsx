import { Stack } from "@mui/material";
import { BasicPaper } from "components/Atoms/BasicPaper";
import { AbilityTable } from "components/Tabs/Abilities/AbilityTable"

export const AbilitiesTab = ({ unit }) => {
  return (
    <>
      <h3>Abilities</h3>
      <Stack component={BasicPaper} spacing={3.5} sx={{ padding: 1, paddingTop: 3, width: '100%', maxWidth: '500px' }}>
        {unit.abilities.map((ability, index) =>
          <AbilityTable key={index} ability={ability} />
        )}
      </Stack>
    </>
  );
}