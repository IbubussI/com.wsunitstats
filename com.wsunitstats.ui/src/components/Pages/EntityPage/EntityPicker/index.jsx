import * as React from 'react';
import Box from '@mui/material/Box';
import TextField from '@mui/material/TextField';
import Autocomplete from '@mui/material/Autocomplete';
import Grid from '@mui/material/Grid';
import parse from 'autosuggest-highlight/parse';
import match from 'autosuggest-highlight/match';
import { debounce } from '@mui/material/utils';
import { Image } from 'components/Atoms/Renderer';
import { Stack, Typography } from '@mui/material';
import { useParams } from 'react-router-dom';

export const EntityPicker = ({ initialValue, onSelect, options: componentOptions }) => {
  const [value, setValue] = React.useState(initialValue);
  const [inputValue, setInputValue] = React.useState('');
  const [options, setOptions] = React.useState([]);
  const params = useParams();

  const selectValue = React.useCallback((newValue) => {
    if (newValue && typeof newValue.gameId === 'number') {
      onSelect(newValue.gameId);
    }
    setValue(newValue);
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
      debouncedFetchHandler(
        new URLSearchParams({
          nameFilter: inputValue,
          locale: params.locale
        }),
        (results) => setOptions(results)
      );
    }

    return () => {
      active = false;
    };
  }, [inputValue, debouncedFetchHandler, params.locale]);

  // clear on navigation to empty page
  React.useEffect(() => {
    if (!params.gameId && params.gameId !== 0) {
      setValue(null);
    }
  }, [params.gameId]);

  console.log('entityPicker')
  return (
    <Autocomplete
      sx={{ width: '100%', margin: '2px', maxWidth: '350px' }}
      clearOnBlur={false}
      autoComplete
      autoHighlight
      includeInputInList
      filterSelectedOptions
      getOptionLabel={(option) => option.name ? option.name : ''}
      isOptionEqualToValue={(option, value) => value && option.gameId === value.gameId}
      options={options}
      value={value}
      componentsProps={{
        paper: {
          elevation: 3
        }
      }}
      onChange={(_, newValue) => {
        selectValue(newValue);
      }}
      onInputChange={(_, newInputValue) => {
        setInputValue(newInputValue);
      }}
      renderInput={({ ...params }) => {
        return (
          <TextField
            {...params}
            label={componentOptions.placeholder}
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
                <Stack direction='row' alignItems='center'>
                  <Stack sx={{ marginRight: 0.6, height: 'fit-content' }}>
                    <Image data={{
                      path: option.image,
                      width: 42,
                      height: 42,
                    }} />
                  </Stack>
                  <Stack>
                    <Box>
                      {parts.map((part, index) => (
                        <Typography key={index}
                          component='span'
                          variant='body1'
                          color='text.primary'
                          sx={{ fontWeight: part.highlight ? 'bold' : 'regular' }}
                        >
                          {part.text}
                        </Typography>
                      ))}
                    </Box>
                    {secondary && <Typography variant='body2' color='text.secondary'>
                      {secondary}
                    </Typography>}
                  </Stack>
                </Stack>
              </Grid>
            </Grid>
          </Box>
        );
      }}
    />
  );
}