import * as React from 'react';
import * as Constants from 'utils/constants';
import * as Utils from 'utils/utils';
import { useNavigate } from 'react-router-dom';
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
    <EntityPicker
      initialValue={initialValue}
      onSelect={onIdChange}
      options={pickerOptions} />
  );
}
