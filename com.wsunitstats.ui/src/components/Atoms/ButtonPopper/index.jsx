import * as React from 'react';
import Box from '@mui/material/Box';
import {
  Button,
  ClickAwayListener,
  Paper,
  Popper,
  Table,
  TableBody,
  TableCell,
  TableContainer,
  TableHead,
  TableRow,
  Typography
} from '@mui/material';
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

export const InfoButtonPopper = ({data, title}) => {
  const ButtonContentRenderer = ({ onClick, icon: Icon }) => {
    return (
      <Button
        variant='outlined'
        onClick={onClick}
        sx={{
          width: '100%',
          textTransform: 'none',
          '&:hover': { backgroundColor: 'rgb(195, 225, 255)' },
        }}>
        {title}
        <Icon sx={{ position: "absolute", bottom: 5, right: 5 }}/>
      </Button>
    );
  }
  if (!data || data.length == 0) {
    return (null);
  }
  return (
    <ButtonPopper
      popperRenderer={PopDoubleTable}
      popperRendererContent={data}
      popperTitle={title}
      buttonRenderer={ButtonContentRenderer} />
  );
}

export const PopDoubleTable = ({ title, data }) => {
  return (
    <TableContainer sx={{
      borderRadius: 2,
      margin: "6px",
      width: 'max-content'
    }}>
      <Table style={{ tableLayout: 'fixed', width: 'max-content' }}>
        <TableHead sx={{
          '& tr th': {
            paddingTop: '8px',
            paddingBottom: '8px',
          },
        }}>
          <TableRow>
            <TableCell align="center" colSpan={2}>
              <Typography variant='body2' color='text.primary' sx={{ fontWeight: 'bold' }}>
                {title}
              </Typography>
            </TableCell>
          </TableRow>
        </TableHead>
        <TableBody sx={{
          '& tr td': {
            paddingRight: '7px',
            paddingLeft: '7px',
            paddingTop: '4px',
            paddingBottom: '4px',
            border: 0,
          },
          '& tr:first-child td': {
            paddingTop: '10px',
          },
        }}>
          {data.map((entry, index) => {
            let Renderer = entry.renderer;
            if (entry.value === undefined) {
              return null;
            }
            return (
              <TableRow key={index}>
                <TableCell sx={{ verticalAlign: entry.baseline && 'baseline' }}>
                  {entry.label}
                </TableCell>
                <TableCell>
                  <Renderer data={entry.value} />
                </TableCell>
              </TableRow>
            );
          })}
        </TableBody>
      </Table>
    </TableContainer>
  );
}
