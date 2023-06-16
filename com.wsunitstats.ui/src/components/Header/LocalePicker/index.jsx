import * as React from 'react';
import * as Constants from 'utils/constants';
import { Autocomplete, TextField, autocompleteClasses, inputLabelClasses, outlinedInputClasses, styled, svgIconClasses } from '@mui/material';

const StyledAutocomplete = styled(Autocomplete)({
  [`& .${autocompleteClasses.inputRoot} .${autocompleteClasses.input}`]: {
    color: 'white',
    borderColor: 'white',
    cursor: 'pointer'
  },
  [`& .${inputLabelClasses.root}`]: {
    color: 'white !important',
  },
  [`& .${outlinedInputClasses.notchedOutline}`]: {
    borderColor: 'white'
  },
  [`&:hover .${outlinedInputClasses.notchedOutline}`]: {
    borderColor: 'white !important'
  },
  [`&:focus-within .${outlinedInputClasses.notchedOutline}`]: {
    borderColor: 'white !important',
    borderWidth: '1px !important'
  },
  [`& .${svgIconClasses.root}`]: {
    color: 'white'
  },
});

export const LocalePicker = ({ onSelect, currentLocale }) => {
  const [locales, setLocales] = React.useState([]);
  const [value, setValue] = React.useState('');

  React.useEffect(() => {
    fetch(Constants.HOST + Constants.LOCALE_OPTIONS_API)
      .then((response) => response.json())
      .then((locales) => {
        setLocales(locales);
      })
      .catch(console.log);
  }, []);

  React.useEffect(() => {
    if (locales.length > 0) {
      let actualLocale = currentLocale;
      if (!locales.includes(currentLocale)) {
        actualLocale = Constants.DEFAULT_LOCALE_OPTION;
        onSelect(actualLocale);
      }
      setValue(actualLocale);
    }
  }, [currentLocale, onSelect, locales]);

  return (
    <StyledAutocomplete
      options={locales}
      getOptionLabel={(locale) => locale.toUpperCase()}
      sx={{ width: 100 }}
      value={value}
      disableClearable
      onChange={(_, newValue) => {
        setValue(newValue);
        onSelect(newValue);
      }}
      componentsProps={{
        paper: {
          elevation: 3
        }
      }}
      renderInput={({ inputProps, ...props }) => (
        <TextField {...props} inputProps={{ ...inputProps, readOnly: true }} label="Locale" />
      )}
    />
  );
}