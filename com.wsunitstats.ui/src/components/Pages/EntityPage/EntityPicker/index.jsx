import * as React from 'react';
import Box from '@mui/material/Box';
import TextField from '@mui/material/TextField';
import Autocomplete from '@mui/material/Autocomplete';
import Grid from '@mui/material/Grid';
import Typography from '@mui/material/Typography';
import parse from 'autosuggest-highlight/parse';
import match from 'autosuggest-highlight/match';
import { debounce } from '@mui/material/utils';

export const EntityPicker = ({ locale, onSelect, value, setValue, fetchURI, placeholder }) => {
  const [inputValue, setInputValue] = React.useState('');
  const [options, setOptions] = React.useState([]);

  const selectValue = React.useCallback((newValue) => {
    if (Array.isArray(newValue)) {
      newValue = null;
    }
    setValue(newValue);
    if (newValue && typeof newValue.gameId === 'number') {
      onSelect(newValue.gameId);
    } else {
      onSelect(null);
    }
  }, [onSelect, setValue]);

  const fetchHandler = React.useCallback(
    (params, callback) => {
      fetch(fetchURI + '?' + params)
        .then((response) => response.ok ? response.json() : [])
        .then(callback)
        .catch(console.log);
    },
    [fetchURI],
  );

  const debouncedFetchHandler = React.useMemo(
    () => debounce(fetchHandler, 300),
    [fetchHandler],
  );

  // update options on input text change
  React.useEffect(() => {
    let active = true;
    if (active) {
      if (inputValue === '') {
        // don't fetch for empty input
        setOptions([]);
      } else {
        debouncedFetchHandler(
          new URLSearchParams({
            nameFilter: inputValue,
            locale: locale
          }),
          (results) => setOptions(results)
        );
      }
    }
    return () => {
      active = false;
    };
  }, [inputValue, debouncedFetchHandler, locale]);

  return (
    <Autocomplete
      sx={{ width: '100%', margin: '2px' }}
      getOptionLabel={(option) =>
        typeof option === 'string' ? option : option.name
      }
      isOptionEqualToValue={(option, value) =>
        typeof option === 'string' ? option === value : option.gameId === value.gameId
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
      onChange={(_, newValue) => {
        selectValue(newValue)
      }}
      onInputChange={(_, newInputValue) => {
        setInputValue(newInputValue);
      }}
      renderInput={({ inputProps, ...params }) => {
        const readOnly = value ? true : false;
        return (
          <TextField
            {...params}
            label={placeholder}
            inputProps={{ ...inputProps, readOnly: readOnly }}
            fullWidth
          />
        );
      }}
      renderOption={(props, option) => {
        const matches = match(option.name, inputValue, { insideWords: true });
        const parts = parse(option.name, matches);
        return (
          <Box component='li' {...props} key={option.gameId}>
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

                {option.nation && <Typography variant="body2" color="text.secondary">
                  {option.nation}
                </Typography>}
              </Grid>
            </Grid>
          </Box>
        );
      }}
    />
  );
}