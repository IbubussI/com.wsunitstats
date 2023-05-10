import { Stack } from "@mui/material";
import { BasicPaper } from "components/Atoms/BasicPaper";
import { CommonTable } from "components/Tabs/Common/CommonTable";

export const CommonTab = ({ unit }) => {
  return (
    <>
      <h3>Common properties</h3>
      <Stack component={BasicPaper} sx={{ padding: 1, width: '100%', maxWidth: '500px' }}>
        <CommonTable unit={unit} />
      </Stack>
    </>
  );
}