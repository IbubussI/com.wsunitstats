import * as React from 'react';
import * as Constants from '../../utils/Constants';
import Box from '@mui/material/Box';
import TextField from '@mui/material/TextField';
import Autocomplete from '@mui/material/Autocomplete';
import Grid from '@mui/material/Grid';
import Typography from '@mui/material/Typography';
import parse from 'autosuggest-highlight/parse';
import match from 'autosuggest-highlight/match';
import { debounce } from '@mui/material/utils';

export const UnitPicker = ({ locale, onSelect }) => {
  const [value, setValue] = React.useState(null);
  const [inputValue, setInputValue] = React.useState('');
  const [options, setOptions] = React.useState([]);

  const fetchHandler = React.useMemo(
    () =>
      debounce((name, locale, callback) => {
        if (name) {
          fetch(Constants.HOST + Constants.UNIT_OPTIONS_API + '?' + new URLSearchParams({
            nameFilter: name,
            locale: locale
          }))
            .then((response) => response.json())
            .then(callback)
            .catch(console.log);
        }
      }, 400),
    [],
  );

  React.useEffect(() => {
    let active = true;

    if (inputValue === '') {
      setOptions(value ? [value] : []);
      return undefined;
    }

    fetchHandler(inputValue, locale, (results) => {
      if (active) {
        setOptions(results);
      }
    });

    return () => {
      active = false;
    };
  }, [value, inputValue, fetchHandler, locale]);

  return (
    <Autocomplete
      id="unit-select"
      sx={{ width: 300, margin: '2px' }}
      getOptionLabel={(option) =>
        typeof option === 'string' ? option : option.name
      }
      isOptionEqualToValue={(option, value) =>
        typeof option === 'string' ? option === value : option.id === value.id
      }
      filterOptions={(x) => x}
      options={options}
      autoComplete
      includeInputInList
      filterSelectedOptions
      value={value}
      noOptionsText="No options"
      componentsProps={{
        paper: {
          elevation: 4
        }
      }}
      onChange={(event, newValue) => {
        setValue(newValue);
        if (newValue) {
          onSelect(newValue.id);
        } else {
          onSelect(null);
        }
      }}
      onInputChange={(event, newInputValue) => {
        setInputValue(newInputValue);
      }}
      renderInput={({ inputProps, ...params }) => {
        const readOnly = value ? true : false;
        return (
          <TextField
            {...params}
            label="Type the Unit name"
            inputProps={{ ...inputProps, readOnly: readOnly }}
            fullWidth
          />
        );
      }}
      renderOption={(props, option) => {
        const matches = match(option.name, inputValue, { insideWords: true });
        const parts = parse(option.name, matches);
        return (
          <Box component='li' {...props} key={option.id}>
            <Grid container alignItems="center">
              <Grid item sx={{ width: 'calc(100% - 44px)', wordWrap: 'break-word' }}>
                {parts.map((part, index) => (
                  <Box
                    key={index}
                    component="span"
                    sx={{ fontWeight: part.highlight ? 'bold' : 'regular' }}
                  >
                    {part.text}
                  </Box>
                ))}

                <Typography variant="body2" color="text.secondary">
                  {option.nation}
                </Typography>
              </Grid>
            </Grid>
          </Box>
        );
      }}
    />
  );
}