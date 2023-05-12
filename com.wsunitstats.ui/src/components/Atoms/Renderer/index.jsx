import * as Utils from 'utils/utils';
import * as Constants from "utils/constants";
import { Avatar, Box, Chip, Link, Stack, Tooltip, Typography } from "@mui/material";
import React from 'react';

export const Image = ({ data }) => {
  return (
    <Box
      component="img"
      sx={{
        height: data.height,
        width: data.width,
      }}
      alt=''
      src={Utils.resolveImage(data.path)}
    />
  );
}

export const Text = ({ data }) => {
  return (
    <Typography variant='body2' color='text.primary'>
      {data}
    </Typography>
  );
}

export const ButtonText = ({ data }) => {
  return (
    <Typography variant='body2' color='rgb(25, 118, 210)'>
      {data}
    </Typography>
  );
}

export const SubValue = ({ data }) => {
  let subString = '';
  data.subValues.forEach((entry, index) => {
    let delimiter = data.subValues[index + 1] && typeof data.subValues[index + 1].value === 'number' ? ', ' : '';
    if (entry.value) {
      subString = subString.concat(`${entry.label}:\u00A0${entry.value}${delimiter}`);
    }
  });
  return (
    <>
      <Typography variant='body2' color='text.primary' lineHeight={1.2}>
        {data.primaryValue}
      </Typography>
      <Typography variant='caption' color='text.secondary' lineHeight={1.2}>
        {subString}
      </Typography>
    </>
  );
}

export const TagList = ({ data }) => {
  return (
    <>
      {data.tags && data.tags.map((tag, index) => (
        <Box sx={{ paddingBottom: '1px' }}>
          <Chip
            key={index}
            label={tag}
            onClick={data.onClick}
            size='small'
            sx={{
              width: 'max-content',
              height: '19px',
              backgroundColor: 'rgb(24, 117, 238)',
              textTransform: 'uppercase',
              color: 'white',
              '& span': {
                fontWeight: 'bold',
                fontSize: 11
              },
              '&:hover': {
                backgroundColor: 'rgb(139, 195, 255)'
              },
              '&:hover span': {
                color: 'rgb(1, 113, 212)'
              },
            }} />
        </Box>
      ))}
    </>
  );
}

export const Resource = ({ data }) => {
  return (
    <Stack
      direction='row'
      spacing={0.7}
      sx={{
        width: 'fit-content',
        border: '1px solid rgb(182, 182, 182)',
        padding: '5px',
        paddingBottom: '3px',
        margin: '5px',
        marginLeft: '0'
      }}>
      {data.map((resource, index) =>
        <Tooltip key={index} title={resource.resource}>
          <Stack direction='column' alignItems='center' sx={{ minWidth: '50px' }}>
            <Box>
              <Image data={{
                path: resource.image,
                width: 25,
                height: 25,
              }} />
            </Box>
            <Typography variant='body2' color='text.primary'>
              {resource.value}
            </Typography>
          </Stack>
        </Tooltip>
      )}
    </Stack>
  );
}

export const EntityInfo = ({ data }) => {
  let minWidth = data.overflow ? '0' : '';
  let availableLines = data.secondary ? 1 : 2;
  let overflow = data.overflow ? {
    overflow: 'hidden',
    textOverflow: 'ellipsis',
    display: '-webkit-box',
    WebkitLineClamp: availableLines,
    WebkitBoxOrient: 'vertical',
  } : '';
  const LinkContent = () => {
    return (
      <Stack direction='row' alignItems='center' id="2123">
        <Stack sx={{ marginRight: 0.4, height: 'fit-content' }}>
          <Image data={data.image} />
        </Stack>
        <Stack minWidth={minWidth}>
          <Typography variant='body2' lineHeight={1.2} sx={overflow}>
            {data.primary}
          </Typography>
          {data.secondary && <Typography variant='caption' lineHeight={1.2}>
            {data.secondary}
          </Typography>}
        </Stack>
      </Stack>
    );
  }
  return (
    <>
      {data.link.path === Constants.NO_LINK_INDICATOR ?
        <DisabledLink>
          <LinkContent />
        </DisabledLink>
        :
        <Link href={Utils.makeEntityLink(data.link)}>
          <LinkContent />
        </Link>}
    </>
  );
}

export const HeaderChip = ({ data }) => {
  const color = data.disabled ? 'error.main' : 'text.secondary';
  const textColor = data.disabled ? 'error.main' : 'text.primary';
  const borderColor = data.disabled ? 'error.main' : 'rgb(85, 120, 218)';
  const isLabel = data.label;
  return (
    <Box sx={{
      border: '3px solid',
      borderColor: borderColor,
      color: color,
      borderRadius: '18px',
      display: 'inline-flex',
      alignItems: 'center',
      justifyContent: 'center',
      fontWeight: '700',
      height: '32px',
      backgroundColor: 'white',

    }}>
      <Tooltip title={data.tooltip}>
        <Avatar sx={{
          fontWeight: 'inherit',
          border: '1px solid',
          width: '24px',
          height: '24px',
          fontSize: '0.75rem',
          color: color,
          marginLeft: isLabel ? '4px' : '3px',
          marginRight: isLabel ? '-6px' : '3px'
        }}>
          {data.id}
        </Avatar>
      </Tooltip>
      {isLabel && <Stack alignItems='center' sx={{
        paddingRight: '12px',
        paddingLeft: '12px',
      }}>
        <Typography
          variant='body2'
          sx={{
            fontWeight: 'inherit',
            fontSize: 14,
            lineHeight: 'initial',
            color: textColor,
            paddingBottom: data.disabled ? '1px' : '',
            marginTop: data.disabled ? '-3px' : ''
          }}>
          {data.label}
        </Typography>
        {data.disabled &&
          <Chip
            label='disabled'
            variant='contained'
            color='error'
            sx={{
              textTransform: 'uppercase',
              fontSize: '11px',
              height: '14px',
              minwidth: 'fit-content',
              '& > .MuiChip-label': {
                padding: '4px'
              }
            }} />}
      </Stack>}
    </Box>
  );
}

const DisabledLink = ({ children }) => {
  return (
    <>
      {children}
    </>
  );
}