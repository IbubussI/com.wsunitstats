import * as React from 'react';
import * as Constants from "utils/constants";
import './index.css';
import { EntityTabsView } from 'components/Pages/EntityPage/EntityTabsView';
import { ResearchTab } from '../Tabs/Research';
import { UpgradesTab } from '../Tabs/Upgrades';

export const ResearchView = ({ entity: research, loading }) => {
  const tabsData = [
    {
      id: Constants.RESEARCH_MAIN_TAB,
      label: 'Research',
      component: ResearchTab,
      isShow: !!research
    },
    {
      id: Constants.RESEARCH_UPGRADES_TAB,
      label: 'Upgrades',
      component: UpgradesTab,
      isShow: research?.upgrades
    },
  ].filter(element => element.isShow);

  return (
    <EntityTabsView entity={research} tabsData={tabsData} loading={loading} />
  );
}