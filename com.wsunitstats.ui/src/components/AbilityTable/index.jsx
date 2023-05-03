import { Box, Stack } from "@mui/material";
import { BasicPaper } from "components/Atoms/BasicPaper";
import { FlexibleTable, FlexibleTableDoubleCellRow, FlexibleTableSingleCellRow } from "components/Atoms/FlexibleTable";
import { EntityInfo, HeaderChip, SubValue, Text } from 'components/Atoms/Renderer';
import { DoubleColumnTable } from "components/Atoms/DoubleColumnTable";
import { InfoButtonPopper } from "components/Atoms/ButtonPopper";
import * as Constants from "utils/Constants";
import { useSearchParams } from "react-router-dom";
import { ClassicTable } from "components/Atoms/ClassicTable";
import * as Utils from "utils/utils";

const ABILITY_COLUMNS = 1;

export const AbilityTable = ({ abilities }) => {
  return (
    <Stack component={BasicPaper} spacing={0.5} sx={{ padding: 1 }}>
      {abilities.map((ability, index) =>
        <AbilityTableEntry
          key={index}
          ability={ability}
        />)}
    </Stack>
  );
}

const AbilityTableEntry = ({ ability }) => {
  const [searchParams] = useSearchParams();
  const abilityData = [
    {
      column: 1,
      renderer: FlexibleTableSingleCellRow,
      childData: {
        value: {
          tooltip: "Ability ID #" + ability.abilityId,
          id: "A" + ability.abilityId,
          label: ability.abilityName,
          disabled: ability.enabled === false && 'disabled'
        },
        valueRenderer: HeaderChip,
        width: '50%'
      },
    },
    {
      column: 1,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: 'Target',
        value: ability.entityInfo && {
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
        valueRenderer: EntityInfo,
        widthRight: '70%',
        widthLeft: '30%'
      }
    },
    {
      column: 1,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: 'Make time',
        value: ability.makeTime && ability.makeTime + Constants.SECONDS_END_MARKER,
        widthRight: '70%',
        widthLeft: '30%'
      }
    },
    {
      column: 1,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: 'Reserve limit',
        value: ability.reserve?.reserveLimit,
        widthRight: '70%',
        widthLeft: '30%'
      }
    },
    {
      column: 1,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: 'Reserve time',
        value: ability.reserve && ability.reserve.reserveTime + Constants.SECONDS_END_MARKER,
        widthRight: '70%',
        widthLeft: '30%'
      }
    },
    {
      column: 1,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: 'Count',
        value: ability.count,
        widthRight: '70%',
        widthLeft: '30%'
      }
    },
    {
      column: 1,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: 'Duration',
        value: ability.duration && ability.duration + Constants.SECONDS_END_MARKER,
        widthRight: '70%',
        widthLeft: '30%'
      }
    },
    {
      column: 1,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: 'Life time',
        value: ability.lifeTime && ability.lifeTime + Constants.SECONDS_END_MARKER,
        widthRight: '70%',
        widthLeft: '30%'
      }
    }
  ].filter(x => x.childData.value || x.childData.renderer);

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

  let requirementsData;
  let requirements = ability.requirements;
  if (requirements) {
    const unitsAll = requirements.unitsAll ? '(All of below)' : '(One of below)';
    const requirementsAll = requirements.requirementsAll ? '(All of below)' : '(One of below)';
    const unitRequirements = requirements.units?.map((unit) => {
      return [
        {
          renderer: Text,
          align: 'center',
          data: unit.unitId
        },
        {
          renderer: EntityInfo,
          data: {
            primary: unit.unitName,
            secondary: unit.unitNation,
            image: {
              path: unit.unitImage,
              width: 35,
              height: 35,
            },
            link: {
              id: unit.unitId,
              locale: searchParams.get(Constants.PARAM_LOCALE),
              path: Utils.getEntityRoute('unit')
            },
            overflow: true
          }
        },
        {
          renderer: Text,
          data: unit.quantity
        },
      ]
    });

    const researchRequirements = requirements.researches?.map((research) => {
      return [
        {
          renderer: Text,
          align: 'center',
          data: research.researchId
        },
        {
          renderer: EntityInfo,
          data: {
            primary: research.researchName,
            image: {
              path: research.researchImage,
              width: 35,
              height: 35,
            },
            link: {
              id: research.researchId,
              locale: searchParams.get(Constants.PARAM_LOCALE),
              path: Utils.getEntityRoute('research')
            },
            overflow: true
          }
        },
      ]
    });

    requirementsData = {
      label: 'Requirements',
      unitData: {
        label: 'Units',
        subLabel: unitsAll,
        head: [
          'Game ID',
          'Unit',
          'Quantity'
        ],
        body: unitRequirements
      },
      researchData: {
        label: 'Researches',
        subLabel: requirementsAll,
        head: [
          'Game ID',
          'Research'
        ],
        body: researchRequirements
      }
    }
  }

  const costData = ability.cost?.map((resource) => {
    return resource
  });

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
    content: costData,
  }

  return (
    <Stack
      direction="row"
      justifyContent='center'
      sx={{
        border: '3px solid rgb(85, 120, 218)',
        borderRadius: 2,
      }}>
      <Stack
        flex='1 1 20%'
        alignItems='center'
        borderRight='3px solid rgb(85, 120, 218)'>
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
      </Stack>
      <Box sx={{
        width: '100%',
        height: 'max-content',
        display: 'flex',
        flexDirection: 'row',
        padding: '3px',
        overflow: 'auto',
      }}>
        <FlexibleTable
          columns={ABILITY_COLUMNS}
          rows={abilityData.length}
          data={abilityData}
          rowHeight='max-content'
          minWidth='390px' />
      </Box>
    </Stack>
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