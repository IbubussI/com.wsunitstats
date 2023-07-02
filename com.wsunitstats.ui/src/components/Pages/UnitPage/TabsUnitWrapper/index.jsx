import { ResearchSelector } from "components/Pages/UnitPage/ResearchSelector";
import { TabsView } from "components/Pages/EntityPage/EntityTabsView";

export const TabsUnitWrapper = (props) => {
  return (
    <>
      <ResearchSelector />
      <TabsView {...props} />
    </>
  );
}