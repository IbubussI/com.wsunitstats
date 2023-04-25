import { Stack } from '@mui/material';
import { LocalePicker } from 'components/LocalePicker';
import { UnitPicker } from 'components/UnitPicker';
import * as React from 'react';

export const UnitForm = ({onUnitIdChange, onLocaleChange, locale, option, setOption}) => {
  return (
    <Stack
      flexDirection={'row'}
      alignItems={'center'}
      justifyContent={'center'}
      fontSize={'calc(10px + 2vmin)'}
      padding={'15px'}
    >
      <LocalePicker
        onSelect={onLocaleChange}
        currentLocale={locale} />
      <UnitPicker
        locale={locale}
        value={option}
        setValue={setOption}
        onSelect={onUnitIdChange} />
    </Stack>
  );
}