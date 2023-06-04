import * as React from 'react';
import './index.css';
import { Box, CircularProgress, Tab, Tabs } from '@mui/material';

export const EntityTabsView = ({
  entity,
  tabsData,
  loading,
  tabsView: TabsViewComponent = TabsView,
  defaultview: DefaultViewComponent = DefaultView
}) => {
  const [currentTab, setCurrentTab] = React.useState(undefined);

  React.useEffect(() => {
    const hash = window.location.hash;
    setCurrentTab(hash ? hash.slice(1) : tabsData[0]?.id);
    if (!hash && currentTab && tabsData.length) {
      const url = new URL(window.location.href);
      url.hash = `#${currentTab}`;
      window.history.replaceState({}, '', url.toString());
    }
  }, [currentTab, tabsData]);

  const isRenderContent = (currentTab && tabsData.length > 0) || loading;

  applyBodyStyle(isRenderContent);
  return isRenderContent
    ? (<TabsViewComponent tabsData={tabsData} currentTab={currentTab} entity={entity} loading={loading}/>)
    : (<DefaultViewComponent loading={loading} />);
}

export const TabsView = ({ tabsData, currentTab, entity, loading }) => {
  return tabsData.length === 0 && loading ? <CircularProgress/> : (
    <>
      <Box display="flex" justifyContent="center" width="100%">
        <Tabs value={currentTab} allowScrollButtonsMobile variant="scrollable">
          {tabsData.map((tab) => <Tab key={tab.id} label={tab.label} value={tab.id} href={`#${tab.id}`}/>)}
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

const DefaultView = ({ loading }) => loading ? <CircularProgress/> : <div>Waiting for your input...</div>

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