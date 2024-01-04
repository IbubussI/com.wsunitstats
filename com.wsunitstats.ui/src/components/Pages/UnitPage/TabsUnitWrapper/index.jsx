import { ResearchSelector } from "components/Pages/UnitPage/ResearchSelector";
import { TabsView } from "components/Pages/EntityPage/EntityTabsView";
import { Box } from "@mui/material";

export const TabsUnitWrapper = (props) => {
  return (
    <>
      <Box display="flex" justifyContent="center" width="100%">
        <ResearchSelector />
      </Box>
      <TabsView {...props} />
    </>
  );
}