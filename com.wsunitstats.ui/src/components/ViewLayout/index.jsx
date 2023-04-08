import * as React from 'react';
import * as Constants from '../../utils/Constants';
import './index.css';
import { StatsTable } from '../StatsTable';
import { DoughnutPercentChart } from '../DoughnutPercentChart';

export const ViewLayout = ({ unitId, locale }) => {
  const [unit, setUnit] = React.useState(null);

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
            <StatsTable content={getCommonProps(unit)} />
          </div>
          <div className="armor-container">
            <h3>Armor</h3>
            <div className="armor-chart">
              {unit.armor?.length &&
                <DoughnutPercentChart
                  content={unit.armor}
                  valuePrefix={'Thickness: '}
                />
              }
            </div>
          </div>
          <h3>Extra properties</h3>
          <div className="extra-table">
            <StatsTable content={getExtraProps(unit)} />
          </div>
        </div>
      }
    </div>
  );
}

// ======= Data conversion here should be replaced with ready-to-use (and localized) data from backend =======

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

function getCommonProps(unit) {
  return [
    createRowData('Nation', unit.nation),
    createRowData('View Range', unit.viewRange),
    createRowData('Health', unit.health),
    createRowData('Regeneration Speed', unit.regenerationSpeed, 'hp/sec'),

    createRowData('Movement Speed', unit.movement?.speed),
    createRowData('Rotation Speed', unit.movement?.rotationSpeed),

    createRowData('Transporting size', unit.transporting?.ownSize),
    createRowData('Transporting capacity',  unit.transporting?.carrySize),
    createRowData('Can transport', unit.transporting?.carrySize ? (unit.transporting.onlyInfantry ? 'Only infantry' : 'Any land unit') : null),

    createRowData('Takes population', unit.supply?.consume),
    createRowData('Gives population', unit.supply?.produce),

    createRowData('Receives friendly damage', unit.receiveFriendlyDamage === false ? 'False' : 'True'),
  ];
}

function getExtraProps(unit) {
  return [
    createRowData('Game ID', unit.gameId),
    createRowData('Size', unit.size),
    createRowData('Threat', unit.threat),
    createRowData('Limit', unit.limit),
    createRowData('Parent must not move', unit.parentMustIdle ? 'True' : null),
    createRowData('Controllable', unit.controllable ? 'True' : 'False')
  ];
}