import * as Data from "data";
import * as Constants from "utils/constants";
import { InfoButtonPopper } from "components/Atoms/ButtonPopper";
import { ClassicTable } from "components/Atoms/ClassicTable";
import { DoubleColumnFrame } from "components/Atoms/DoubleColumnFrame";
import { FlexibleTable, FlexibleTableDoubleCellRow } from "components/Atoms/FlexibleTable";
import { Resource } from "components/Atoms/Renderer";
import { useSearchParams } from "react-router-dom";

const BUILD_COLUMNS = 1;
const FLEX_TABLE_RIGHT_WIDTH = '50%';
const FLEX_TABLE_LEFT_WIDTH = '50%';

export const BuildingTable = ({ build }) => {
  const [searchParams] = useSearchParams();

  const buildData = [
    {
      column: 1,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: 'Full cost',
        value: build.fullCost,
        valueRenderer: Resource,
        widthRight: FLEX_TABLE_RIGHT_WIDTH,
        widthLeft: FLEX_TABLE_LEFT_WIDTH
      }
    },
    {
      column: 1,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: 'Init cost',
        value: build.initCost,
        valueRenderer: Resource,
        widthRight: FLEX_TABLE_RIGHT_WIDTH,
        widthLeft: FLEX_TABLE_LEFT_WIDTH
      }
    },
    {
      column: 1,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: 'Heal cost',
        value: build.healCost,
        valueRenderer: Resource,
        widthRight: FLEX_TABLE_RIGHT_WIDTH,
        widthLeft: FLEX_TABLE_LEFT_WIDTH
      }
    },
    {
      column: 1,
      renderer: FlexibleTableDoubleCellRow,
      childData: {
        label: 'Init health',
        value: build.initHealth,
        widthRight: FLEX_TABLE_RIGHT_WIDTH,
        widthLeft: FLEX_TABLE_LEFT_WIDTH
      }
    },
  ];

  const requirementsData = build.requirements && Data.getRequirementsData(build.requirements, searchParams.get(Constants.PARAM_LOCALE));

  return (
    <>
        <FlexibleTable
          columns={BUILD_COLUMNS}
          rows={buildData.length}
          data={buildData}
          minWidth='600px'
        />
      {requirementsData &&
        <InfoButtonPopper label={requirementsData.label}>
          {requirementsData.unitData.body && <ClassicTable data={requirementsData.unitData} />}
          {requirementsData.researchData.body && <ClassicTable data={requirementsData.researchData} />}
        </InfoButtonPopper>}
    </>
  );
}