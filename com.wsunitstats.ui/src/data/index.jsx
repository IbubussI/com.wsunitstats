import * as Utils from "utils/utils";
import { EntityInfo, Text } from 'components/Atoms/Renderer';

export const getRequirementsData = (requirements, locale) => {
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
          values: [
            {
              primary: unit.unitName,
              secondary: unit.unitNation,
              image: {
                path: unit.unitImage,
                width: 35,
                height: 35,
              },
              link: {
                id: unit.unitId,
                locale: locale,
                path: Utils.getEntityRoute('unit')
              },
              overflow: true
            }
          ]
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
          values: [
            {
              primary: research.researchName,
              image: {
                path: research.researchImage,
                width: 35,
                height: 35,
              },
              link: {
                id: research.researchId,
                locale: locale,
                path: Utils.getEntityRoute('research')
              },
              overflow: true
            }
          ]
        }
      },
    ]
  });

  return {
    label: 'Requirements',
    unitData: {
      label: 'Units',
      subLabel: unitsAll,
      head: [
        'Game\u00A0ID',
        'Unit',
        'Quantity'
      ],
      body: unitRequirements
    },
    researchData: {
      label: 'Researches',
      subLabel: requirementsAll,
      head: [
        'Game\u00A0ID',
        'Research'
      ],
      body: researchRequirements
    }
  }
}