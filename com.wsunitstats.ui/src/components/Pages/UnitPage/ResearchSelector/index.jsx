import * as React from 'react';
import * as Constants from 'utils/constants';
import { useParams } from 'react-router-dom';
import { Button, Stack } from '@mui/material';
import { CheckmarksSelect } from 'components/Atoms/CheckmarksSelect';
import { useOptionsController } from 'components/Hooks/useOptionsController';

export const ResearchSelector = ({ researches }) => {
  const params = useParams();
  const researchString = researches.join(',');
  const optionFetchURL = Constants.HOST + Constants.RESEARCH_OPTIONS_API + '?' + new URLSearchParams({
    gameIds: researchString,
    locale: params.locale
  });
  const optionsController = useOptionsController(Constants.PARAM_RESEARCH_IDS, optionFetchURL);

  return researches.length ? (
    <Stack direction='row' sx={{ gap: 0.5, width: '100%', margin: '2px', maxWidth: 'sm', paddingTop: '5px' }}>
      <CheckmarksSelect
        sx={{ width: '100%' }}
        label='Apply researches'
        values={optionsController.values}
        options={optionsController.options}
        onChange={optionsController.setValues}
        limitTags={3}
        getSecondaryText={(option) => 'ID: ' + option.gameId}
      />
      <Button
        variant='outlined'
        sx={{
          backgroundColor: optionsController.isApplied ? "rgba(121, 131, 141, 0.1)" : "rgba(44, 138, 232, 0.1)",
          "&:hover": { backgroundColor: "rgba(12, 127, 241, 0.26)" }
        }}
        onClick={optionsController.apply}
        disabled={optionsController.isApplied}>
        APPLY
      </Button>
    </Stack>
  ) : (false);
}