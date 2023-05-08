import { Stack } from "@mui/material";
import { ArmorChart } from "components/Tabs/Common/ArmorChart";
import { BasicPaper } from "components/Atoms/BasicPaper";
import { DoubleColumnFrame } from "components/Atoms/DoubleColumnFrame";
import { CommonTable } from "components/Tabs/Common/CommonTable";

export const CommonTab = ({ unit }) => {
  return (
    <>
      <h3>Common properties</h3>
      <Stack component={BasicPaper} sx={{ padding: 1, width: '100%', maxWidth: '500px' }}>
        <DoubleColumnFrame rightWidth='100%'>
          <Stack alignItems='center'>
            <h2 style={{ marginBlockStart: '0.65em', marginBlockEnd: '0.65em' }}>{unit.name}</h2>
            <Stack sx={{
              width: '150px',
              height: '150px',
              justifyContent: 'center',
              alignItems: 'center',
              border: '1px solid',
            }}>
              <img style={{ border: '5px solid #555', boxSizing: 'border-box' }} src={`/files/images/${unit.image}`} alt="" />
            </Stack>
            {unit.armor?.length > 0 &&
              <>
                <h3>Armor</h3>
                <ArmorChart
                  content={unit.armor}
                  valuePrefix={'Thickness: '}
                  colors={[
                    'rgba(122, 16, 16, 1)',
                    'rgba(168, 87, 15, 1)',
                    'rgba(168, 116, 15, 1)',
                    'rgba(15, 132, 21, 1)',
                  ]} />
              </>}
          </Stack>
          <CommonTable unit={unit} />
        </DoubleColumnFrame>
      </Stack>
    </>
  );
}