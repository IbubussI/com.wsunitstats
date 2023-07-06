import * as React from 'react';
import { CheckBox, CheckBoxOutlineBlank } from "@mui/icons-material";
import { Autocomplete, Checkbox, Stack, TextField, Typography } from "@mui/material";
import { Image } from "components/Atoms/Renderer";

export const CheckmarksSelect = ({ label, onChange, options, optionsMetadata, value }) => {
  const icon = <CheckBoxOutlineBlank fontSize="small" />;
  const checkedIcon = <CheckBox fontSize="small" />;

  return (
    <Autocomplete
      sx={{
        width: '100%',
        '& .MuiAutocomplete-inputRoot .MuiAutocomplete-input': {
          minWidth: 0,
          cursor: 'pointer',
          paddingRight: 0,
          paddingLeft: 0
        }
      }}
      multiple
      disableCloseOnSelect
      onChange={onChange}
      options={options}
      value={value}
      limitTags={2}
      getOptionLabel={(option) => optionsMetadata.get(option).name }
      renderOption={(props, option, { selected }) => {
        const optionData = optionsMetadata.get(option);
        return (
          <li {...props}>
            <Checkbox
              icon={icon}
              checkedIcon={checkedIcon}
              style={{ marginRight: 8 }}
              checked={selected}
            />
            <Stack direction='row' alignItems='center'>
              <Stack sx={{ marginRight: 0.6, height: 'fit-content' }}>
                <Image data={{
                  path: optionData.image,
                  width: 42,
                  height: 42,
                }} />
              </Stack>
              <Stack>
                <Typography variant='body1' color='text.primary'>
                  {optionData.name}
                </Typography>
                <Typography variant='body2' color='text.secondary'>
                  {optionData.secondary}
                </Typography>
              </Stack>
            </Stack>
          </li>
        );
      }}
      renderInput={({ inputProps, ...props }) => (
        <TextField {...props} inputProps={{ ...inputProps, readOnly: true }} label={label} sx={{ minWidth: '0'}}/>
      )}
      componentsProps={{
        paper: {
          elevation: 3
        }
      }}
    />
  );
}