import * as React from 'react';
import * as Constants from 'utils/constants';
import * as Utils from 'utils/utils';
import { useNavigate } from 'react-router-dom';
import { Stack } from '@mui/material';
import { EntityPicker } from 'components/Pages/EntityPage/EntityPicker';

export const EntityHeader = ({ entity, pickerOptions }) => {
  const navigate = useNavigate();

  const onIdChange = (newGameId) => {
    if (newGameId !== null) {
      navigate(Utils.setPathParams([{ param: newGameId, pos: 3 }, { param: Constants.INITIAL_TAB, pos: 4 }]));
    }
  }

  const initialValue = entity ? { name: entity.name, gameId: entity.gameId } : null;

  return (
    <Stack
      sx={{
        flexDirection: 'row',
        alignItems: 'stretch',
        justifyContent: 'center',
        fontSize: 'calc(10px + 2vmin)',
        padding: '15px',
        width: '90%'
      }}>
      <EntityPicker
        initialValue={initialValue}
        onSelect={onIdChange}
        options={pickerOptions} />
    </Stack>
  );
}
