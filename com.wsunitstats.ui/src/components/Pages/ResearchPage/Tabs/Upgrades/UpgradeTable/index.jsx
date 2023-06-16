import * as Utils from "utils/utils";
import { FlexibleTable, FlexibleTableDoubleCellRow } from "components/Layout/FlexibleTable";
import { EntityInfo, HeaderChip } from 'components/Atoms/Renderer';
import { useParams } from "react-router-dom";
import { DoubleColumnFrame } from "components/Layout/DoubleColumnFrame";
import { Stack, Typography } from "@mui/material";

const UPGRADE_COLUMNS = 1;
const FLEX_TABLE_RIGHT_WIDTH = '67%';
const FLEX_TABLE_LEFT_WIDTH = '33%';

export const UpgradeTable = ({ upgrade, overflowMinWidth }) => {
  const { locale } = useParams();
  const upgradeData = [
    {
      column: 1,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: 'Target',
        value: {
          values: [
            upgrade.unit && {
              primary: upgrade.unit.entityName,
              secondary: upgrade.unit.entityNation,
              image: {
                path: upgrade.unit.entityImage,
                width: 35,
                height: 35,
              },
              link: {
                id: upgrade.unit.entityId,
                locale: locale,
                path: Utils.getEntityRoute("unit")
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
        label: 'Program ID',
        value: '' + upgrade.programId,
        widthRight: FLEX_TABLE_RIGHT_WIDTH,
        widthLeft: FLEX_TABLE_LEFT_WIDTH
      }
    },
    {
      column: 1,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: 'Program file',
        value: upgrade.programFile,
        widthRight: FLEX_TABLE_RIGHT_WIDTH,
        widthLeft: FLEX_TABLE_LEFT_WIDTH
      }
    }
  ].filter(x => x.childData.value && (!x.childData.value.values || x.childData.value.values.length > 0));

  let upgradeParametersData = [];
  if (upgrade?.parameters) {
    for (const key of Object.keys(upgrade.parameters)) {
      upgradeParametersData.push({
        column: 1,
        renderer: FlexibleTableDoubleCellRow,
        childData: {
          label: key,
          value: upgrade.parameters[key],
          widthRight: FLEX_TABLE_RIGHT_WIDTH,
          widthLeft: FLEX_TABLE_LEFT_WIDTH
        }
      });
    }
  }


  const labelData = {
    value: {
      tooltip: "Upgrade ID #" + upgrade.upgradeId,
      id: upgrade.upgradeId,
      disabled: false
    },
    valueRenderer: HeaderChip,
    shift: '80px'
  }

  return (
    <DoubleColumnFrame childrenProps={[{ paddingTop: '14px' }, { paddingTop: '6px' }]} borderLabel={labelData} column>
      <FlexibleTable
        columns={UPGRADE_COLUMNS}
        rows={upgradeData.length}
        data={upgradeData}
        rowHeight='max-content'
        minWidth={overflowMinWidth} />
      {upgradeParametersData.length && <Stack spacing={1}>
        <Typography variant='body2'>
          Program parameters:
        </Typography>
        <FlexibleTable
          columns={1}
          rows={upgradeParametersData.length}
          data={upgradeParametersData}
          rowHeight='max-content'
          minWidth={overflowMinWidth} />
      </Stack>}
    </DoubleColumnFrame>
  );
}