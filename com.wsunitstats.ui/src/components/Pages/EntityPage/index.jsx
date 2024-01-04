import * as React from 'react';
import * as Constants from 'utils/constants';
import { styled, useTheme } from '@mui/material/styles';
import Box from '@mui/material/Box';
import Drawer from '@mui/material/Drawer';
import Toolbar from '@mui/material/Toolbar';
import List from '@mui/material/List';
import Divider from '@mui/material/Divider';
import IconButton from '@mui/material/IconButton';
import TuneIcon from '@mui/icons-material/Tune';
import ChevronLeftIcon from '@mui/icons-material/ChevronLeft';
import ListItem from '@mui/material/ListItem';
import ListItemButton from '@mui/material/ListItemButton';
import ListItemIcon from '@mui/material/ListItemIcon';
import ListItemText from '@mui/material/ListItemText';
import InboxIcon from '@mui/icons-material/MoveToInbox';
import MailIcon from '@mui/icons-material/Mail';
import { Button, useMediaQuery } from '@mui/material';
import { Outlet, useLoaderData } from 'react-router-dom';

const Main = styled('main', { shouldForwardProp: (prop) => prop !== 'open' })(
  ({ theme, open }) => ({
    padding: theme.spacing(1, 3, 3, 3),
    marginLeft: `-${Constants.FILTER_SIDEKICK_WIDTH}px`,
    transition: theme.transitions.create('margin', {
      easing: theme.transitions.easing.sharp,
      duration: theme.transitions.duration.leavingScreen,
    }),
    ...(open && {
      transition: theme.transitions.create('margin', {
        easing: theme.transitions.easing.easeOut,
        duration: theme.transitions.duration.enteringScreen,
      }),
      marginLeft: 0,
    }),
  }),
);

const DrawerHeader = styled('div')(({ theme }) => ({
  display: 'flex',
  alignItems: 'center',
  padding: theme.spacing(0, 1),
  // necessary for the content of drawer to be below filter bar
  ...theme.mixins.toolbar,
  justifyContent: 'flex-end',
}));

const FilterDrawer = styled(Drawer)
  (({ theme }) => ({
    width: Constants.FILTER_SIDEKICK_WIDTH,
    flexShrink: 0,
    '& .MuiDrawer-paper': {
      width: Constants.FILTER_SIDEKICK_WIDTH,
      boxSizing: 'border-box',
      display: 'flex',
      position: 'static',
      borderRight: `1px solid ${(theme.vars || theme).palette.divider}`,
      borderBottom: `1px solid ${(theme.vars || theme).palette.divider}`
    },
  }));

export const EntityPage = () => {
  const loaderData = useLoaderData();
  const theme = useTheme();
  const isMobile = useMediaQuery(theme.breakpoints.down('sm'));
  const [open, setOpen] = React.useState(isMobile ? false : true);
  const entity = loaderData ? loaderData[0] : undefined;

  const handleDrawerOpen = () => {
    setOpen(true);
  };

  const handleDrawerClose = () => {
    setOpen(false);
  };

  return (
    <Box sx={{ display: 'flex', width: '100%', flex: 1 }}>
      <FilterDrawer
        variant="persistent"
        anchor="left"
        open={open}
      >
        <DrawerHeader>
          <IconButton onClick={handleDrawerClose}>
            <ChevronLeftIcon />
          </IconButton>
        </DrawerHeader>
        <Divider />
        <List>
          {['Inbox', 'Starred', 'Send email', 'Drafts'].map((text, index) => (
            <ListItem key={text} disablePadding>
              <ListItemButton>
                <ListItemIcon>
                  {index % 2 === 0 ? <InboxIcon /> : <MailIcon />}
                </ListItemIcon>
                <ListItemText primary={text} />
              </ListItemButton>
            </ListItem>
          ))}
        </List>
        <Divider />
        <List>
          {['All mail', 'Trash', 'Spam'].map((text, index) => (
            <ListItem key={text} disablePadding>
              <ListItemButton>
                <ListItemIcon>
                  {index % 2 === 0 ? <InboxIcon /> : <MailIcon />}
                </ListItemIcon>
                <ListItemText primary={text} />
              </ListItemButton>
            </ListItem>
          ))}
        </List>
      </FilterDrawer>
      <Main open={open} sx={{ display: 'flex', flexDirection: 'column', width: '100%' }}>
        <Toolbar>
          <Button
            variant="outlined"
            startIcon={<TuneIcon />}
            onClick={handleDrawerOpen}
            sx={{ ...(open && { display: 'none' }), margin: theme.spacing(0, 2) }}
          >
            Filters
          </Button>
        </Toolbar>
        {entity ? <Outlet context={entity} />
          : <DefaultView />}
      </Main>
    </Box>
  );
}

const DefaultView = () => <div>Waiting for your input...</div>