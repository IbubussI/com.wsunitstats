import * as React from 'react';
import * as Constants from 'utils/constants';
import Box from '@mui/material/Box';
import InputLabel from '@mui/material/InputLabel';
import MenuItem from '@mui/material/MenuItem';
import FormControl from '@mui/material/FormControl';
import Select from '@mui/material/Select';

export const LocalePicker = ({onSelect, currentLocale}) => {
  const [locales, setLocales] = React.useState([]);
  const [value, setValue] = React.useState('');

  React.useEffect(() => {
    let active = true;

    if (active && locales.length === 0) {
      fetch(Constants.HOST + Constants.LOCALE_OPTIONS_API)
        .then((response) => response.json())
        .then((locales) => {
          setLocales(locales);
        })
        .catch(console.log);
    }

    if (locales.length > 0) {
      let actualLocale = currentLocale;
      if (!locales.includes(currentLocale)) {
        actualLocale = Constants.DEFAULT_LOCALE_OPTION;
        onSelect(actualLocale);
      }
      setValue(actualLocale);
    }

    return () => {
      active = false;
    };
  }, [locales, currentLocale, onSelect]);

  return (
    <Box sx={{ width: 80, margin: '2px' }}>
      <FormControl fullWidth>
        <InputLabel id="locale-select-label">Locale</InputLabel>
        <Select
          labelId="locale-select-label"
          id="locale-select"
          value={value}
          label="Locale"
          MenuProps={{
            PaperProps: {
              sx: { maxHeight: 190 },
              elevation: 4
            }
          }}
          onChange={(event) => {
            setValue(event.target.value);
            onSelect(event.target.value);
          }}
        >
          {locales.map((locale) => (
            <MenuItem key={locale} value={locale}>{locale.toUpperCase()}</MenuItem>
          ))}
        </Select>
      </FormControl>
    </Box>
  );
}