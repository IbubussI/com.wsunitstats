import * as React from 'react';
import Box from '@mui/material/Box';
import { ClickAwayListener, Paper, Popper } from '@mui/material';
import ArrowDropDownIcon from '@mui/icons-material/ArrowDropDown';
import ArrowDropUpIcon from '@mui/icons-material/ArrowDropUp';

export const ButtonPopper = ({
  popperRenderer: PopperRenderer,
  buttonRenderer: ButtonRenderer,
  popperRendererContent,
  popperTitle
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
              <PopperRenderer data={popperRendererContent} title={popperTitle}/>
            </Box>
          </Paper>
        </ClickAwayListener>
      </Popper>
    </>
  );
}
