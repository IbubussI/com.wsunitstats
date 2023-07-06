import * as React from 'react';
import { Outlet, useLoaderData } from 'react-router-dom';
import { EntityHeader } from './EntityHeader';

export const EntityPage = ({ pickerOptions }) => {
  const loaderData = useLoaderData();
  const entity = loaderData ? loaderData[0] : undefined;
  
  return (
    <>
      <EntityHeader
        entity={entity}
        pickerOptions={pickerOptions}
      />
      {entity ? <Outlet context={entity} />
        : <DefaultView />}
    </>
  );
}

const DefaultView = () => <div>Waiting for your input...</div>
