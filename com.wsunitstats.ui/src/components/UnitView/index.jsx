import * as React from 'react';
import * as Constants from "utils/constants";
import './index.css';
import { useSearchParams } from 'react-router-dom';
import { Tab, Tabs } from '@mui/material';
import { CommonTab } from 'components/Tabs/Common';
import { WeaponTab } from 'components/Tabs/Weapons';
import { AbilitiesTab } from 'components/Tabs/Abilities';
import { BuildingTab } from 'components/Tabs/Building';

export const UnitView = ({ unit }) => {
  const [searchParams, setSearchParams] = useSearchParams();
  const currentTab = searchParams.get('tab');

  const tabsData = [
    {
      id: Constants.UNIT_COMMON_TAB,
      label: 'Common',
      component: CommonTab,
      isShow: !!unit
    },
    {
      id: Constants.UNIT_WEAPONS_TAB,
      label: 'Weapons',
      component: WeaponTab,
      isShow: unit?.weapons?.length || unit?.turrets?.length
    },
    {
      id: Constants.UNIT_ABILITIES_TAB,
      label: 'Abilities',
      component: AbilitiesTab,
      isShow: unit?.abilities?.length
    },
    {
      id: Constants.UNIT_BUILD_TAB,
      label: 'Building',
      component: BuildingTab,
      isShow: unit?.build
    },
  ].filter(element => element.isShow);

  const setTab = React.useCallback(tab => {
    searchParams.set('tab', tab);
    setSearchParams(searchParams);
  }, [searchParams, setSearchParams]);

  const removeTab = React.useCallback(() => {
    searchParams.delete('tab');
    setSearchParams(searchParams);
  }, [searchParams, setSearchParams]);

  const isTabValid = React.useCallback((tab, tabsData) => {
    if (!tab) {
      return false;
    }
    for(const tabData of tabsData) {
      if (tabData.id === tab) {
        return true;
      }
    }
    return false;
  }, []);

  React.useEffect(() => {
    if (unit && !isTabValid(currentTab, tabsData)) {
      setTab(tabsData[0].id);
    }
    if (currentTab && !unit && !searchParams.get(Constants.PARAM_GAME_ID)) {
      removeTab();
    }
    //adding tabsData to dependencies leads to re-render loop
    //eslint-disable-next-line react-hooks/exhaustive-deps
  }, [setTab, removeTab, isTabValid, currentTab, unit, searchParams]);
  
  let isRenderContent = currentTab && tabsData.length > 0;
  applyBodyStyle(isRenderContent);
  return (
    <>
      {isRenderContent
        ? <TabsUnitView tabsData={tabsData} currentTab={currentTab} unit={unit} setTab={setTab} />
        : <DefaultUnitView />}
    </>
  );
}

const TabsUnitView = ({ tabsData, currentTab, unit, setTab }) => {
  return (
    <>
      <Tabs value={currentTab} onChange={(_, newValue) => setTab(newValue)}> 
        {tabsData.map((tab) => <Tab key={tab.id} label={tab.label} value={tab.id} />)}
      </Tabs>
      {tabsData.map((tab) => {
        let TabComponent = tab.component;
        return (
          <TabView key={tab.id} value={currentTab} selfValue={tab.id}>
            <TabComponent unit={unit} />
          </TabView>
        );
      })}
    </>
  );
}

const TabView = ({ selfValue, value, children }) => {
  return (
    <div className="unit-view-container" hidden={value !== selfValue}>
      {value === selfValue && children}
    </div>
  );
}

const DefaultUnitView = () => <div>Waiting for your input...</div>

const applyBodyStyle = (isContent) => {
  let bodyRoot = document.querySelector(".body-root");
  if (bodyRoot) {
    let bodyClassList = bodyRoot.classList;
    if (isContent) {
      bodyClassList.add('content-body-root');
    } else {
      bodyClassList.remove('content-body-root');
    }
  }
}