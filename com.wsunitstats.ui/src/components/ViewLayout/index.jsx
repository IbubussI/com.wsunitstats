import * as React from 'react';
import * as Constants from '../../utils/Constants';
import './index.css';
import { StatsTable } from '../StatsTable';
import { ArmorChart } from '../ArmorChart';
import { WeaponTable } from '../WeaponTable';

export const ViewLayout = ({ unitId, locale }) => {
  const [unit, setUnit] = React.useState(null);

  const getCommonProps = (unit) => [
    createRowData('Game ID', unit.gameId),
    createRowData('Nation', unit.nation),
    createRowData('View Range', unit.viewRange),
    createRowData('Size', unit.size),
    createRowData('Health', unit.health),
    createRowData('Regeneration Speed', unit.regenerationSpeed, 'hp/sec'),

    createRowData('Movement Speed', unit.movement?.speed),
    createRowData('Rotation Speed', unit.movement?.rotationSpeed),

    createRowData('Transporting size', unit.transporting?.ownSize),
    createRowData('Transporting capacity',  unit.transporting?.carrySize),
    createRowData('Can transport', unit.transporting?.carrySize ? (unit.transporting.onlyInfantry ? 'Only infantry' : 'Any land unit') : null),

    createRowData('Takes population', unit.supply?.consume),
    createRowData('Gives population', unit.supply?.produce),
    createRowData('Limit', unit.limit),

    createRowData('Receives friendly damage', unit.receiveFriendlyDamage === false ? 'False' : 'True'),
    createRowData('Parent must not move', unit.parentMustIdle ? 'True' : null),
    createRowData('Controllable', unit.controllable === undefined || unit.controllable ? 'True' : 'False'),

    createRowData('Threat', unit.threat),
  ];

  React.useEffect(() => {
    let active = true;
    if (active) {
      if (unitId) {
        let actualLocale = ''
        if (locale) {
          actualLocale = locale;
        }

        fetch(Constants.HOST + Constants.UNIT_DATA_API + '?' + new URLSearchParams({
          id: unitId,
          locale: actualLocale
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

  return (
    <div className="view-layout-root">
      {unit &&
        <div className="view-layout-container">
          <h2>{unit.name}</h2>
          <img className="image" src={`/files/images/${unit.image}`} alt="" />
          <h3>Common properties</h3>
          <div className="common-table">
            <StatsTable
              content={getCommonProps(unit)}
              ariaLabel='Common properties'
            />
          </div>
          {unit.armor?.length &&
            <div className="armor-container">
              <h3>Armor</h3>
              <div className="armor-chart">
                <ArmorChart
                  content={unit.armor}
                  valuePrefix={'Thickness: '}
                />
              </div>
            </div>}
          {(unit.weapons?.length || unit.turrets?.length) &&
            <>
              <h3>Weapons</h3>
              <div className="weapon-table">
                <WeaponTable
                  weapons={unit.weapons}
                  turrets={unit.turrets}
                  ariaLabel='Weapons'
                />
              </div>
            </>}
        </div>
      }
    </div>
  );
}

function createRowData(name, valueObject, units) {
  if (valueObject != null) {
    let value = "";
    if (units) {
      value = `${valueObject}, (${units})`;
    } else {
      value = valueObject.toString();
    }
    return { name, value };
  } else {
    return null;
  }
}