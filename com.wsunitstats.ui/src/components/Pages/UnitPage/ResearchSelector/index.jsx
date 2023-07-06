import * as React from 'react';
import * as Constants from 'utils/constants';
import { useParams, useSearchParams } from 'react-router-dom';
import { Button, Stack } from '@mui/material';
import { CheckmarksSelect } from 'components/Atoms/CheckmarksSelect';
import isEqual from 'lodash/isEqual';

export const ResearchSelector = () => {
  const [searchParams, setSearchParams] = useSearchParams();
  const [options, setOptions] = React.useState([]);
  const [selected, setSelected] = React.useState([]);
  const params = useParams();

  const getQueryResearchIds = React.useCallback(() => {
    const currentResearchesQueryParams = searchParams.get(Constants.PARAM_RESEARCH_ID)?.split(',');
    return currentResearchesQueryParams ? [...currentResearchesQueryParams] : [];
  }, [searchParams]);

  React.useEffect(() => {
    const currentResearches = getQueryResearchIds();
    setSelected(currentResearches
      .filter((value, index, array) => array.indexOf(value) === index)
      .filter((value) => {
      for (const option of options) {
        if (option.gameId.toString() === value) {
          return true;
        }
      }
      return false;
    }));
  }, [options, getQueryResearchIds])

  const fetchOptions = React.useCallback(() => {
    fetch(Constants.HOST + Constants.RESEARCH_UNIT_OPTIONS_API + '?' + new URLSearchParams({
      gameId: params.gameId,
      locale: params.locale
    }))
      .then((response) => response.ok ? response.json() : [])
      .then((result) => setOptions(result))
      .catch(console.log);
  }, [params.gameId, params.locale]);

  React.useEffect(() => fetchOptions(), [fetchOptions]);

  const handleChange = (_, newValue) => {
    setSelected(newValue);
  };

  const applySelected = () => {
    let prevSelected = searchParams.get(Constants.PARAM_RESEARCH_ID);
    if (prevSelected) {
      prevSelected = prevSelected.split(',');
    } else {
      prevSelected = [];
    }
    if (!isEqual(prevSelected, selected)) {
      if (selected.length) {
        searchParams.set(Constants.PARAM_RESEARCH_ID, selected.join(','));
      } else {
        searchParams.delete(Constants.PARAM_RESEARCH_ID);
      }
      setSearchParams(searchParams, { replace: true });
    }
  }

  const optionsMetadata = new Map();
  const optionIds = [];
  options.forEach((option) => {
    optionsMetadata.set(option.gameId.toString(), {
      image: option.image,
      name: option.name,
      secondary: 'ID: ' + option.gameId
    });
    optionIds.push(option.gameId.toString());
  });

  const isButtonDisabled = isEqual(getQueryResearchIds(), selected);

  return options.length ? (
    <Stack direction='row' sx={{ gap: 0.5, width: '100%', margin: '2px', maxWidth: '350px' }}>
      <CheckmarksSelect label='Apply researches' onChange={handleChange} options={optionIds} optionsMetadata={optionsMetadata} value={selected} />
      <Button
        variant='outlined'
        sx={{
          backgroundColor: isButtonDisabled ? "rgba(121, 131, 141, 0.1)" : "rgba(44, 138, 232, 0.1)",
          "&:hover": { backgroundColor: "rgba(12, 127, 241, 0.26)" }
        }}
        onClick={applySelected}
        disabled={isButtonDisabled}>
        APPLY
      </Button>
    </Stack>
  ) : (null);
}