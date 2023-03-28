import * as React from 'react';
import * as Constants from '../../utils/Constants';
import './index.css';
import { UnitStats } from '../UnitStats';

export const ViewLayout = ({ unitId, locale }) => {
  const [unit, setUnit] = React.useState(null);

  React.useEffect(() => {
    let active = true;
    if (active) {
      if (unitId) {
        if (!locale) {
          locale = '';
        }

        fetch(Constants.HOST + Constants.UNIT_DATA_API + '?' + new URLSearchParams({
          id: unitId,
          locale: locale
        }))
          .then((response) => response.json())
          .then((unit) => {
            setUnit(unit[0]);
          })
          .catch(console.log);
      } else {
        setUnit(null);
      }
    }

    return () => {
      active = false;
    };
  }, [unitId, locale]);

  if (!unit) {
    return (null);
  } else {
    return (
      <div className="view-layout-root">
        <h2>{unit.name}</h2>
        <img className="view-layout-image" src={`/files/images/${unit.image}`} />
        <div className="view-layout-stats">
          <UnitStats unit={unit} />
        </div>
      </div>
    );
  }
}