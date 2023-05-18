import * as React from 'react';
import * as Constants from "utils/constants";
import './index.css';
import { useSearchParams } from 'react-router-dom';
import { Box, Tab, Tabs } from '@mui/material';

export const EntityTabsView = ({ entity, tabsData }) => {
  const [searchParams, setSearchParams] = useSearchParams();
  const currentTab = searchParams.get('tab');

  const setTab = React.useCallback((tab, replace = false) => {
    searchParams.set('tab', tab);
    setSearchParams(searchParams, { replace: replace });
  }, [searchParams, setSearchParams]);

  const removeTab = React.useCallback(() => {
    searchParams.delete('tab');
    setSearchParams(searchParams, { replace: true });
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
    if (entity && !isTabValid(currentTab, tabsData)) {
      setTab(tabsData[0].id, true);
    }
    if (currentTab && !entity && !searchParams.get(Constants.PARAM_GAME_ID)) {
      removeTab();
    }
    //adding tabsData to dependencies leads to re-render loop
    //eslint-disable-next-line react-hooks/exhaustive-deps
  }, [setTab, removeTab, isTabValid, currentTab, entity, searchParams]);
  
  const isRenderContent = currentTab && tabsData.length > 0;
  applyBodyStyle(isRenderContent);
  return (
    <>
      {isRenderContent
        ? <TabsView tabsData={tabsData} currentTab={currentTab} entity={entity} setTab={setTab} />
        : <DefaultView />}
    </>
  );
}

const TabsView = ({ tabsData, currentTab, entity, setTab }) => {
  return (
    <>
      <Box display="flex" justifyContent="center" width="100%">
        <Tabs value={currentTab} onChange={(_, newValue) => setTab(newValue)} allowScrollButtonsMobile variant="scrollable">
          {tabsData.map((tab) => <Tab key={tab.id} label={tab.label} value={tab.id} />)}
        </Tabs>
      </Box>
      {tabsData.map((tab) => {
        const TabComponent = tab.component;
        return (
          <TabView key={tab.id} value={currentTab} selfValue={tab.id}>
            <TabComponent entity={entity} />
          </TabView>
        );
      })}
    </>
  );
}

const TabView = ({ selfValue, value, children }) => {
  return (
    <div className="entity-view-container" hidden={value !== selfValue}>
      {value === selfValue && children}
    </div>
  );
}

const DefaultView = () => <div>Waiting for your input...</div>

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