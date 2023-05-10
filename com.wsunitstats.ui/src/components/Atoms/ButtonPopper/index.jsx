import * as React from 'react';
import Box from '@mui/material/Box';
import {
  Button,
  ClickAwayListener,
  Paper,
  Popper
} from '@mui/material';
import ArrowDropDownIcon from '@mui/icons-material/ArrowDropDown';
import ArrowDropUpIcon from '@mui/icons-material/ArrowDropUp';

export const ButtonPopper = ({
  children,
  buttonRenderer: ButtonRenderer,
}) => {
  const [anchorEl, setAnchorEl] = React.useState(null);
  const [open, setOpen] = React.useState(false);

  React.useEffect(() => {
    if (Boolean(anchorEl)) {
      setOpen(true);
    } else {
      setOpen(false);
    }
  }, [anchorEl]);

  const handleClickAway = () => {
    setOpen(false);
    setAnchorEl(null);
  }

  const handleClick = (event) => {
    setOpen((prev) => !prev);
    setAnchorEl(anchorEl ? null : event.currentTarget);
  }

  return (
    <>
      <ButtonRenderer onClick={handleClick} icon={open ? ArrowDropUpIcon : ArrowDropDownIcon} />
      <Popper
        open={open}
        anchorEl={anchorEl}
        modifiers={[
          {
            name: 'flip',
            enabled: false,
          },
        ]}>
        <ClickAwayListener onClickAway={handleClickAway}>
          <Paper elevation={6}>
            <Box sx={{ p: '16px' }}>
              {children}
            </Box>
          </Paper>
        </ClickAwayListener>
      </Popper>
    </>
  );
}

export const InfoButtonPopper = ({ children, label }) => {
  const ButtonContentRenderer = ({ onClick, icon: Icon }) => {
    return (
      <Button
        variant='outlined'
        onClick={onClick}
        sx={{
          width: '100%',
          textTransform: 'none',
          padding: '5px 24px',
          '&:hover': { backgroundColor: 'rgb(195, 225, 255)' },
        }}>
        {label}
        <Icon sx={{ position: "absolute", bottom: 5, right: 5 }} />
      </Button>
    );
  }
  return (
    <ButtonPopper
      children={children}
      buttonRenderer={ButtonContentRenderer} />
  );
}
