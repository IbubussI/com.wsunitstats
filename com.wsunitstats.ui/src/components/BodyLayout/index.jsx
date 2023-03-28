import * as React from 'react';
import { ViewLayout } from '../ViewLayout';
import { FormLayout } from '../FormLayout';

export const BodyLayout = () => {
  const [unitId, setUnitId] = React.useState('');
  const [locale, setLocale] = React.useState('');

  return (
    <>
      <FormLayout
        onSubmit={(unitId) => setUnitId(unitId)}
        onLocaleChange={(locale) => setLocale(locale)}
        locale={locale}
      />
      <ViewLayout
        unitId={unitId}
        locale={locale}
      />
    </>
  );
}