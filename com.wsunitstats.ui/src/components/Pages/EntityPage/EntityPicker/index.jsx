import * as React from 'react';
import * as Constants from 'utils/constants';
import Box from '@mui/material/Box';
import TextField from '@mui/material/TextField';
import Autocomplete from '@mui/material/Autocomplete';
import Grid from '@mui/material/Grid';
import parse from 'autosuggest-highlight/parse';
import match from 'autosuggest-highlight/match';
import { debounce } from '@mui/material/utils';
import { EntityInfo } from 'components/Atoms/Renderer';

export const EntityPicker = ({ locale, onSelect, value, setValue, options: componentOptions }) => {
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
      fetch(componentOptions.fetchURI + '?' + params)
        .then((response) => response.ok ? response.json() : [])
        .then(callback)
        .catch(console.log);
    },
    [componentOptions.fetchURI],
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
      getOptionLabel={(option) => option.name}
      isOptionEqualToValue={(option, value) => option.gameId === value.gameId}
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
            label={componentOptions.placeholder}
            inputProps={{ ...inputProps, readOnly: readOnly }}
            fullWidth
          />
        );
      }}
      renderOption={(props, option) => {
        const matches = match(option.name, inputValue, { insideWords: true });
        const parts = parse(option.name, matches);
        const secondary = componentOptions.optionSecondaryCallback(option);
        return (
          <Box component='li' {...props} key={option.gameId}>
            <Grid container alignItems="center">
              <Grid item sx={{ width: 'calc(100% - 44px)' }}>
                <EntityInfo data={{
                  primaryVariant: 'body1',
                  primaryColor: 'text.primary',
                  primaryLineHeight: 'inherit',
                  secondaryVariant: 'body2',
                  secondaryColor: 'text.secondary',
                  secondaryLineHeight: 'inherit',
                  imageSpacing: 0.6,
                  values: [
                    {
                      primary: option.name,
                      secondary: secondary,
                      image: {
                        path: option.image,
                        width: 42,
                        height: 42,
                      },
                      link: {
                        path: Constants.NO_LINK_INDICATOR
                      },
                    },
                  ]
                }} />
              </Grid>
            </Grid>
          </Box>
        );
      }}
    />
  );
}