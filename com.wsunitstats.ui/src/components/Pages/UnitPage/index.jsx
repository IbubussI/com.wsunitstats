import * as React from 'react';
import * as Constants from 'utils/constants';
import { UnitView } from 'components/Pages/UnitPage/UnitView';
import { EntityPage } from 'components/Pages/EntityPage';
import { Autocomplete, Box, Checkbox, Chip, FormControl, InputLabel, ListItemText, MenuItem, OutlinedInput, Select, TextField } from '@mui/material';
import { MenuListButtonPopper } from 'components/Atoms/ButtonPopper';
import { CheckBox, CheckBoxOutlineBlank } from '@mui/icons-material';
import { useSearchParams } from 'react-router-dom';
import CancelIcon from '@mui/icons-material/Cancel';

export const UnitPage = () => {
  return (
    <EntityPage
      view={UnitView}
      fetchEntityURI={Constants.HOST + Constants.UNIT_DATA_API}
      pickerOptions={{
        fetchURI: Constants.HOST + Constants.UNIT_OPTIONS_API,
        placeholder: 'Type the Unit name',
        optionSecondaryCallback: (option) => option.nation
      }}
      navItems={
        <MultipleSelectCheckmarks />
      }
    />
  );
}

const names = [
  "dsfdssfdsf",
  2,
  3,
  4,
  5,
];

const ITEM_HEIGHT = 48;
const ITEM_PADDING_TOP = 8;
const MenuProps = {
  PaperProps: {
    style: {
      maxHeight: ITEM_HEIGHT * 4.5 + ITEM_PADDING_TOP,
      width: 250,
    },
  },
};

export default function MultipleSelectCheckmarks() {
  const [searchParams, setSearchParams] = useSearchParams();

  const handleChange = (event) => {
    /* if (event.target.checked) {
      deleteResearch(event.target.value);
    } else {
      addResearch(event.target.value);
    } */
    searchParams.set(Constants.PARAM_RESEARCH_ID, event.target.value.join(','));
    setSearchParams(searchParams);
  };

  const handleChange_ = (_, newValue) => {
    if (newValue.length > 0) {
      searchParams.set(Constants.PARAM_RESEARCH_ID, newValue.join(','));
    } else {
      searchParams.delete(Constants.PARAM_RESEARCH_ID);
    }
    setSearchParams(searchParams);
  };

  const deleteResearch = (researchId) => {
    const currentResearches = searchParams.get(Constants.PARAM_RESEARCH_ID)?.split(',');
    if (currentResearches) {
      const index = currentResearches.indexOf(researchId);
      if (index > -1) {
        if (currentResearches.length > 1) {
          currentResearches.splice(index, 1);
          searchParams.set(Constants.PARAM_RESEARCH_ID, currentResearches.join(','));
        } else {
          searchParams.delete(Constants.PARAM_RESEARCH_ID);
        }
      }
      setSearchParams(searchParams);
    }
  }

  const addResearch = (researchId) => {
    const currentResearches = searchParams.get(Constants.PARAM_RESEARCH_ID);
    let newResearches = currentResearches ? currentResearches + ',' + researchId : researchId;
    searchParams.set(Constants.PARAM_RESEARCH_ID, newResearches);
    setSearchParams(searchParams);
  }

  const getResearches = () => {
    const currentResearches = searchParams.get(Constants.PARAM_RESEARCH_ID)?.split(',');
    return currentResearches ? [...currentResearches] : [];
  }

  const getResearches_ = () => {
    const currentResearches = searchParams.get(Constants.PARAM_RESEARCH_ID)?.split(',');
    if (Array.isArray(currentResearches)) {
      return currentResearches;
    } else if (currentResearches) {
      return [currentResearches];
    } else {
      return [];
    }
  }

  const isResearchSet = (researchId) => {
    return getResearches().indexOf(researchId) > -1;
  }

  return (
    <>
      <FormControl sx={{ margin: '2px', width: 200 }}>
        <InputLabel id="demo-multiple-chip-label">Chip</InputLabel>
        <Select
          labelId="demo-multiple-chip-label"
          id="demo-multiple-chip"
          multiple
          value={getResearches()}
          onChange={handleChange}
          input={<OutlinedInput id="select-multiple-chip" label="Chip" />}
          renderValue={(selected) => (
            <Box sx={{ display: 'flex', flexWrap: 'wrap', gap: 0.5 }}>
              {selected.map((value) => (
                <Chip key={value}
                  label={value}
                  onDelete={() => deleteResearch(value)}
                  deleteIcon={
                    <CancelIcon
                      onMouseDown={(event) => event.stopPropagation()}
                    />
                  }
                />
              ))}
            </Box>
          )}
          MenuProps={MenuProps}
        >
          {names.map((name) => (
            <MenuItem
              key={name}
              value={name}
            >
              <Checkbox
                checked={isResearchSet(name)}
                icon={icon}
                checkedIcon={checkedIcon}
                style={{ marginRight: 8 }}
              />
              {name}
            </MenuItem>
          ))}
        </Select>
      </FormControl>
      <Autocomplete
        multiple
        id="checkboxes-tags-demo"
        options={names}
        value={getResearches()}
        onChange={handleChange_}
        limitTags={2}
        disableCloseOnSelect
        getOptionLabel={(option) => option}
        renderOption={(props, option, { selected }) => (
          <li {...props}>
            <Checkbox
              icon={icon}
              checkedIcon={checkedIcon}
              style={{ marginRight: 8 }}
              checked={selected}
            />
            {option}
          </li>
        )}
        style={{ width: 500 }}
        renderInput={(params) => (
          <TextField {...params} label="Checkboxes" placeholder="Favorites" />
        )}
      />
    </>
  );
}

const icon = <CheckBoxOutlineBlank fontSize="small" />;
const checkedIcon = <CheckBox fontSize="small" />;