import { Box } from '@mui/material';
import * as React from 'react';
import * as Constants from '../../utils/Constants';

export const ViewLayout = ({ unitId }) => {
  const [unit, setUnit] = React.useState([]);

  React.useEffect(() => {
    let active = true;
    if (active) {
      if (unitId) {
        fetch(Constants.HOST + Constants.UNIT_DATA_API + unitId)
          .then((response) => response.json())
          .then((unit) => {
            setUnit(unit[0]);
          })
          .catch(console.log);
      } else {
        setUnit([]);
      }
    }

    return () => {
      active = false;
    };
  }, [unitId]);

  return (
    <>
      <Box>
        name: {unit.name}
      </Box>
      <Box>
        id: {unit.gameId}
      </Box>
    </>   
  );
}