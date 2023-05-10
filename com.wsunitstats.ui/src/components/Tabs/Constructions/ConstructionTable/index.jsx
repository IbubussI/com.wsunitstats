import * as Constants from "utils/constants";
import * as Utils from "utils/utils";
import { DoubleColumnFrame } from "components/Atoms/DoubleColumnFrame";
import { FlexibleTable, FlexibleTableDoubleCellRow } from "components/Atoms/FlexibleTable";
import { EntityInfo } from "components/Atoms/Renderer";
import { useSearchParams } from "react-router-dom";

const BUILD_COLUMNS = 1;
const FLEX_TABLE_RIGHT_WIDTH = '65%';
const FLEX_TABLE_LEFT_WIDTH = '35%';

export const ConstructionTable = ({ construction }) => {
  const [searchParams] = useSearchParams();

  const constructionData = [
    {
      column: 1,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: 'Construction ID',
        value: construction.constructionId + '',
        widthRight: FLEX_TABLE_RIGHT_WIDTH,
        widthLeft: FLEX_TABLE_LEFT_WIDTH
      }
    },
    {
      column: 1,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: 'Target',
        value: construction.entityInfo && {
          primary: construction.entityInfo.entityName,
          secondary: construction.entityInfo.entityNation,
          image: {
            path: construction.entityInfo.entityImage,
            width: 35,
            height: 35,
          },
          link: {
            id: construction.entityInfo.entityId,
            locale: searchParams.get(Constants.PARAM_LOCALE),
            path: Utils.getEntityRoute('unit')
          },
          overflow: true
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
        label: 'Distance',
        value: construction.distance,
        widthRight: FLEX_TABLE_RIGHT_WIDTH,
        widthLeft: FLEX_TABLE_LEFT_WIDTH
      }
    },
    {
      column: 1,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: 'Construction speed',
        value: construction.constructionSpeed.toFixed(1) + '% / sec (for 1 worker)',
        widthRight: FLEX_TABLE_RIGHT_WIDTH,
        widthLeft: FLEX_TABLE_LEFT_WIDTH
      }
    },
  ].filter(element => element.childData.value);

  return (
    <DoubleColumnFrame childrenProps={{ width: '100%' }}>
      <FlexibleTable
        columns={BUILD_COLUMNS}
        rows={constructionData.length}
        data={constructionData}
        minWidth='200px'
      />
    </DoubleColumnFrame>
  );
}