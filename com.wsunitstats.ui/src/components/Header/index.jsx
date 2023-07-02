import * as React from 'react';
import * as Constants from 'utils/constants';
import * as Utils from 'utils/utils';
import AppBar from '@mui/material/AppBar';
import Box from '@mui/material/Box';
import Toolbar from '@mui/material/Toolbar';
import IconButton from '@mui/material/IconButton';
import Typography from '@mui/material/Typography';
import Menu from '@mui/material/Menu';
import MenuIcon from '@mui/icons-material/Menu';
import Container from '@mui/material/Container';
import Button from '@mui/material/Button';
import MenuItem from '@mui/material/MenuItem';
import { NavLink, useNavigate, useParams } from 'react-router-dom';
import { LocalePicker } from './LocalePicker';
import WarningAmberIcon from '@mui/icons-material/WarningAmber';
import { Stack, Tooltip } from '@mui/material';

const pages = [
  {
    path: Constants.UNIT_PAGE_PATH,
    name: 'Units'
  },
  {
    path: Constants.RESEARCH_PAGE_PATH,
    name: 'Researches'
  }
];

export const Header = () => {
  const navigate = useNavigate();
  const [anchorElNav, setAnchorElNav] = React.useState(null);
  const { locale } = useParams();

  const handleOpenNavMenu = (event) => {
    setAnchorElNav(event.currentTarget);
  };

  const handleCloseNavMenu = () => {
    setAnchorElNav(null);
  };

  const onLocaleChange = React.useCallback((newLocale, replace) => {
    navigate(Utils.setPathParams([{ param: newLocale, pos: 1 }]), { replace: replace });
  }, [navigate]);

  return (
    <AppBar position="static">
      <Container maxWidth="xl">
        <Toolbar disableGutters>
          {
            <Stack sx={{
              '& *': {
                display: { xs: 'none', md: 'flex' },
                color: '#ffda6b',
              }
            }}>
              <Typography fontSize='12px' mr={2}>
                Last updated: 02.07.2023
              </Typography>
              <Typography fontSize='12px' mr={2}>
                Game version: v137.1741_25545
              </Typography>
            </Stack>
          }

          <Box sx={{ flexGrow: 1, display: { xs: 'flex', md: 'none' } }}>
            <IconButton
              size="large"
              onClick={handleOpenNavMenu}
              color="inherit"
            >
              <MenuIcon />
            </IconButton>
            <Menu
              id="menu-appbar"
              anchorEl={anchorElNav}
              anchorOrigin={{
                vertical: 'bottom',
                horizontal: 'left',
              }}
              keepMounted
              transformOrigin={{
                vertical: 'top',
                horizontal: 'left',
              }}
              open={Boolean(anchorElNav)}
              onClose={handleCloseNavMenu}
              sx={{
                display: { xs: 'block', md: 'none' },
              }}
            >
              {pages.map((page) => (
                <MenuItem key={page.path} onClick={handleCloseNavMenu}>
                  <NavLink to={page.path} style={{ textDecoration: 'none', color: 'initial' }}>
                    <Typography textAlign="center">{page.name}</Typography>
                  </NavLink>
                </MenuItem>
              ))}
            </Menu>
          </Box>
          <Box sx={{ flexGrow: 1, display: { xs: 'none', md: 'flex' } }}>
            {pages.map((page) => (
              <NavLink key={page.path} to={page.path} style={{ textDecoration: 'none' }}>
                <Button
                  onClick={handleCloseNavMenu}
                  sx={{ my: 2, color: 'white', display: 'block' }}
                >
                  {page.name}
                </Button>
              </NavLink>
            ))}
          </Box>
          <Stack sx={{ gap: 1, alignItems: 'center', flexDirection: 'row', paddingTop: 1, paddingBottom: 1 }}>
            {locale !== Constants.DEFAULT_LOCALE_OPTION && <Tooltip arrow title='Only in-game values are localized using game localization files. Most of the UI is available only in English now'>
              <WarningAmberIcon sx={{ color: '#fd853c', filter: 'drop-shadow(0px 0px 3px rgb(0 0 0 / 0.8))', fontSize: 25 }} />
            </Tooltip>}
            <LocalePicker
              onSelect={onLocaleChange}
              currentLocale={locale} />
          </Stack>
        </Toolbar>
      </Container>
    </AppBar>
  );
}