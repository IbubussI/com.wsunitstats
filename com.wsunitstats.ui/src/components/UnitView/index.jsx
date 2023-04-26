import * as React from 'react';
import './index.css';
import { StatsTable } from 'components/StatsTable';
import { ArmorChart } from 'components/ArmorChart';
import { WeaponTable } from 'components/WeaponTable';
import { AbilityTable } from 'components/AbilityTable';

export const UnitView = ({ unit }) => {

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

  if (unit) {
    return (
      <div className="unit-view-container">
        <h2>{unit.name}</h2>
        <img className="image" src={`/files/images/${unit.image}`} alt="" />
        <h3>Common properties</h3>
        <div className="common-table">
          <StatsTable
            content={getCommonProps(unit)}
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
            <div className="flex-table">
              <WeaponTable
                weapons={unit.weapons}
                turrets={unit.turrets}
              />
            </div>
          </>}
        {unit.abilities?.length &&
          <>
            <h3>Abilities</h3>
            <div className="flex-table">
              <AbilityTable
                abilities={unit.abilities}
              />
            </div>
          </>}
      </div>
    );
  } else {
    return (null);
  }
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