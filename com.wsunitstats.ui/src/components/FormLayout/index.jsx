import { Box } from '@mui/material';
import * as React from 'react';
import { LocalePicker } from '../LocalePicker';
import { UnitPicker } from '../UnitPicker';
import './index.css';

export const FormLayout = ({onSubmit}) => {
  const [locale, setLocale] = React.useState('');

  return (
    <Box className='unit-finder-form'>
      <LocalePicker onSelect={(locale) => setLocale(locale)} />
      <UnitPicker locale={locale} onSelect={(unitId) => onSubmit(unitId)}/>
    </Box>
  );
}