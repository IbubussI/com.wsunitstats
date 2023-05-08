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
      subString = subString.concat(`${entry.label}: ${entry.value}${delimiter}`);
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
        <Box sx={{ paddingBottom: '2px' }}>
          <Chip
            key={index}
            label={tag}
            onClick={data.onClick}
            size='small'
            sx={{ border: '1px solid rgb(182, 182, 182)', width: 'max-content' }} />
        </Box>
      ))}
    </>
  );
}

export const Resource = ({ data }) => {
  return (
    <Stack direction='row' spacing={2}>
      {data.map((resource, index) =>
        <Tooltip key={index} title={resource.resource}>
          <Stack direction='row' alignItems='center' sx={{ minWidth: '40px'}}>
            <Box sx={{ marginRight: 0.4 }}>
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
        <Stack sx={{ marginRight: 0.4, height: 'fit-content'}}>
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
  let color = data.disabled ? 'error.main' : 'text.secondary';
  let textColor = data.disabled ? 'error.main' : 'text.primary';
  let borderColor = data.disabled ? 'error.main' : 'rgb(189, 189, 189)';
  return (
    <Stack alignItems='center'>
      <Box sx={{
        border: '1px solid',
        borderColor: borderColor,
        color: color,
        borderRadius: '18px',
        display: 'inline-flex',
        alignItems: 'center',
        justifyContent: 'center',
        fontWeight: '700',
        height: '36px'
      }}>
        <Tooltip title={data.tooltip}>
          <Avatar sx={{
            fontWeight: 'inherit',
            border: '1px solid',
            width: '24px',
            height: '24px',
            fontSize: '0.75rem',
            color: color,
            marginLeft: '5px',
            marginRight: '-6px'
          }}>
            {data.id}
          </Avatar>
        </Tooltip>
        <Stack alignItems='center' sx={{
          paddingRight: '12px',
          paddingLeft: '12px',
        }}>
          <Typography
            variant='body2'
            sx={{
              fontWeight: 'inherit',
              fontSize: 14,
              lineHeight: 'initial',
              color: textColor
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
        </Stack>
      </Box>
    </Stack>
  );
}

const DisabledLink = ({ children }) => {
  return (
    <>
      {children}
    </>
  );
}