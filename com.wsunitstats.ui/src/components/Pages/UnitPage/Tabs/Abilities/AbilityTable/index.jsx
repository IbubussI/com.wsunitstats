import * as Constants from "utils/constants";
import * as Utils from "utils/utils";
import * as Data from "data";
import { Stack } from "@mui/material";
import { FlexibleTable, FlexibleTableDoubleCellRow } from "components/Layout/FlexibleTable";
import { EntityInfo, HeaderChip, SubValue, Text } from 'components/Atoms/Renderer';
import { DoubleColumnTable } from "components/Layout/DoubleColumnTable";
import { InfoButtonPopper } from "components/Atoms/ButtonPopper";
import { useSearchParams } from "react-router-dom";
import { ClassicTable } from "components/Layout/ClassicTable";
import { DoubleColumnFrame } from "components/Layout/DoubleColumnFrame";

const ABILITY_COLUMNS = 1;
const FLEX_TABLE_RIGHT_WIDTH = '67%';
const FLEX_TABLE_LEFT_WIDTH = '33%';

export const AbilityTable = ({ ability, overflowMinWidth }) => {
  const [searchParams] = useSearchParams();
  const abilityData = [
    {
      column: 1,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: 'Target',
        value: {
          values: [
            ability.entityInfo && {
              primary: ability.entityInfo.entityName,
              secondary: ability.entityInfo.entityNation,
              image: {
                path: ability.entityInfo.entityImage,
                width: 35,
                height: 35,
              },
              link: {
                id: ability.entityInfo.entityId,
                locale: searchParams.get(Constants.PARAM_LOCALE),
                path: getAbilityRoute(ability.abilityType)
              },
              overflow: true
            },
          ].filter(element => element),
        },
        valueRenderer: EntityInfo,
        widthRight: FLEX_TABLE_RIGHT_WIDTH,
        widthLeft: FLEX_TABLE_LEFT_WIDTH
      }
    },
    {
      column: 1,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: 'Make time',
        value: ability.makeTime && ability.makeTime + Constants.SECONDS_END_MARKER,
        widthRight: FLEX_TABLE_RIGHT_WIDTH,
        widthLeft: FLEX_TABLE_LEFT_WIDTH
      }
    },
    {
      column: 1,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: 'Reserve limit',
        value: ability.reserve?.reserveLimit,
        widthRight: FLEX_TABLE_RIGHT_WIDTH,
        widthLeft: FLEX_TABLE_LEFT_WIDTH
      }
    },
    {
      column: 1,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: 'Reserve time',
        value: ability.reserve && ability.reserve.reserveTime + Constants.SECONDS_END_MARKER,
        widthRight: FLEX_TABLE_RIGHT_WIDTH,
        widthLeft: FLEX_TABLE_LEFT_WIDTH
      }
    },
    {
      column: 1,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: 'Count',
        value: ability.count,
        widthRight: FLEX_TABLE_RIGHT_WIDTH,
        widthLeft: FLEX_TABLE_LEFT_WIDTH
      }
    },
    {
      column: 1,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: 'Duration',
        value: ability.duration && ability.duration + Constants.SECONDS_END_MARKER,
        widthRight: FLEX_TABLE_RIGHT_WIDTH,
        widthLeft: FLEX_TABLE_LEFT_WIDTH
      }
    },
    {
      column: 1,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: 'Life time',
        value: ability.lifeTime && ability.lifeTime + Constants.SECONDS_END_MARKER,
        widthRight: FLEX_TABLE_RIGHT_WIDTH,
        widthLeft: FLEX_TABLE_LEFT_WIDTH
      }
    }
  ].filter(x => x.childData.value && (!x.childData.value.values || x.childData.value.values.length > 0));

  const onAction = ability.onAction;
  const buffData = !onAction ? undefined : {
    label: 'Buff info',
    variant: 'popper',
    tableLayout: 'fixed',
    width: 'max-content',
    rowStyle: {
      firstRowPaddingTop: '10px',
      paddingTop: '4px',
      paddingBottom: '4px'
    },
    content: [
      {
        label: 'Distance',
        renderer: SubValue,
        value: {
          primaryValue: onAction.distance.min ? onAction.distance.min + '...' + onAction.distance.max : onAction.distance.max,
          subValues: [
            {
              label: 'stop',
              value: onAction.distance.stop
            }
          ]
        },
      },
      {
        label: 'On agro',
        renderer: Text,
        value: '' + onAction.onAgro,
      },
      {
        label: 'Recharge Time',
        renderer: Text,
        value: onAction.rechargeTime && onAction.rechargeTime + Constants.SECONDS_END_MARKER,
      },
    ].filter(element => element.value !== undefined)
  }

  const requirementsData = ability.requirements && Data.getRequirementsData(ability.requirements, searchParams.get(Constants.PARAM_LOCALE));

  const costTableData = {
    label: 'Cost',
    variant: 'resource',
    width: '150px',
    rowStyle: {
      leftRowWidth: 'max-content',
      rightRowWidth: '71px',
      firstRowPaddingTop: '5px',
      paddingTop: '0px',
      paddingBottom: '0px'
    },
    content: ability.cost,
  }

  const disabled = ability.enabled === false && 'disabled';
  const labelData = {
    value: {
      tooltip: "Ability ID #" + ability.abilityId,
      id: ability.abilityId,
      label: ability.abilityName,
      disabled: disabled
    },
    valueRenderer: HeaderChip,
    shift: '80px'
  }

  return (
    <DoubleColumnFrame childrenProps={[{ paddingTop: '14px'}, { overflow: 'auto', width: '100%' }]} borderLabel={labelData} disabled={disabled}>
      <>
        <DoubleColumnTable data={costTableData} />
        <Stack sx={{
          width: '100%',
          gap: '5px',
          padding: '5px',
          boxSizing: 'border-box'
        }}>
          {requirementsData &&
            <InfoButtonPopper label={requirementsData.label}>
              {requirementsData.unitData.body && <ClassicTable data={requirementsData.unitData} />}
              {requirementsData.researchData.body && <ClassicTable data={requirementsData.researchData} />}
            </InfoButtonPopper>}
          {buffData && buffData.content.length > 0 &&
            <InfoButtonPopper label={buffData.label}>
              <DoubleColumnTable data={buffData} />
            </InfoButtonPopper>}
        </Stack>
      </>
      <FlexibleTable
        columns={ABILITY_COLUMNS}
        rows={abilityData.length}
        data={abilityData}
        rowHeight='max-content'
        minWidth={overflowMinWidth} />
    </DoubleColumnFrame>
  );
}

/**
 * Shorhand for Utils.getEntityRoute()
 * @param {*} abilityType
 * 0 => training
 * 
 * 1 => research
 * 
 * 2 => transformation
 * 
 * 3 => create env
 * @returns redirection target for given ability type
 */
function getAbilityRoute(abilityType) {
  let result;
  switch (abilityType) {
    case 0: case 2: result = Utils.getEntityRoute('unit'); break;
    case 1: result = Utils.getEntityRoute('research'); break;
    default: result = Utils.getEntityRoute('');
  }
  return result;
}