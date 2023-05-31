import { ResearchSelector } from "components/Pages/UnitPage/UnitView/ResearchSelector";
import { TabsView } from "components/Pages/EntityPage/EntityTabsView";

export const TabsUnitWrapper = (props) => {
  return (
    <>
      <ResearchSelector />
      <TabsView {...props} />
    </>
  );
}