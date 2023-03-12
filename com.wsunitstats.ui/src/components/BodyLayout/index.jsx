import * as React from 'react';
import { ViewLayout } from '../ViewLayout';
import { FormLayout } from '../FormLayout';

export const BodyLayout = () => {
  const [unitId, setUnitId] = React.useState('');

  return (
    <>
      <FormLayout onSubmit={(unitId) => setUnitId(unitId)} />
      <ViewLayout unitId={unitId} />
    </>
  );
}