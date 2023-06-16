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

const homePage = {
  path: Constants.UNIT_PAGE_PATH,
  name: 'WS UNIT STATS'
};

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

  const onLocaleChange = React.useCallback((newLocale) => {
    if (locale !== newLocale) {
      navigate(Utils.setPathParameter(newLocale, 1));
    }
  }, [locale, navigate]);

  return (
    <AppBar position="static">
      <Container maxWidth="xl">
        <Toolbar disableGutters>
          <Typography
            variant="h6"
            noWrap
            sx={{
              mr: 2,
              display: { xs: 'none', md: 'flex' },
              fontFamily: 'monospace',
              fontWeight: 700,
              letterSpacing: '.15rem',
              color: 'inherit',
              textDecoration: 'none',
            }}
          >
            {homePage.name}
          </Typography>

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
          <Typography
            variant="h5"
            noWrap
            sx={{
              mr: 2,
              display: { xs: 'flex', md: 'none' },
              flexGrow: 1,
              fontFamily: 'monospace',
              fontWeight: 700,
              letterSpacing: '.15rem',
              color: 'inherit',
              textDecoration: 'none',
            }}
          >
            WS UNIT STATS
          </Typography>
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
          <LocalePicker
            onSelect={onLocaleChange}
            currentLocale={locale} />
        </Toolbar>
      </Container>
    </AppBar>
  );
}