import * as React from 'react';
import './index.css';
import { Box, CircularProgress, Tab, Tabs } from '@mui/material';

export const EntityTabsView = ({
  entity,
  tabsData,
  loading,
  tabsView: TabsViewComponent = TabsView,
  defaultView: DefaultViewComponent = DefaultView
}) => {
  const [currentTab, setCurrentTab] = React.useState(undefined);

  const setTab = React.useCallback((tab) => {
    const url = new URL(window.location.href);
    url.hash = `#${tab}`;
    window.history.replaceState({}, '', url.toString());
    setCurrentTab(tab);
  }, []);

  const isTabValid = React.useCallback((tab) => {
    if (tab) {
      for (const tab of tabsData) {
        if (tab.id === tab) {
          return true;
        }
      }
    }
    return false;
  }, [tabsData]);

  React.useEffect(() => {
    const hash = window.location.hash;
    const initialTab = hash?.slice(1);
    if (!currentTab && tabsData.length) {
      if (isTabValid(initialTab)) {
        setTab(initialTab);
      } else {
        setTab(tabsData[0]?.id);
      }
    }
    if (currentTab !== initialTab) {
      setTab(initialTab);
    }
  }, [currentTab, tabsData, setTab, isTabValid]);

  const isRenderContent = tabsData.length > 0 || loading;

  applyBodyStyle(isRenderContent);
  return isRenderContent
    ? (<TabsViewComponent tabsData={tabsData} currentTab={currentTab} setTab={setTab} entity={entity} loading={loading}/>)
    : (<DefaultViewComponent />);
}

export const TabsView = ({ tabsData, currentTab, setTab, entity, loading }) => {
  return !entity || !currentTab || tabsData.length === 0 || loading ? <CircularProgress/> : (
    <>
      <Box display="flex" justifyContent="center" width="100%">
        <Tabs value={currentTab} onChange={(_, newTab) => setTab(newTab)} allowScrollButtonsMobile variant="scrollable">
          {tabsData.map((tab) => <Tab key={tab.id} label={tab.label} value={tab.id}/>)}
        </Tabs>
      </Box>
      {tabsData.map((tab) => {
        const TabComponent = tab.component;
        return (
          <TabView key={tab.id} value={currentTab} selfValue={tab.id}>
            {loading ? <CircularProgress/> : <TabComponent entity={entity} />}
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