import ReactDOM from 'react-dom/client';
import './index.css';
import { Footer } from './components/Footer';
import { Navigate, Outlet, createBrowserRouter, RouterProvider } from 'react-router-dom';
import * as Constants from './utils/constants';
import { Header } from 'components/Header';
import { ErrorPage } from 'components/Pages/ErrorPage';
import { EntityPage } from 'components/Pages/EntityPage';
import { UnitPage } from 'components/Pages/UnitPage';
import { ResearchPage } from 'components/Pages/ResearchPage';

const Root = () => {
  return (
    <>
      <Header />
      <div className="body-root">
        <Outlet />
      </div>
      <Footer />
    </>
  );
}

const root = ReactDOM.createRoot(document.getElementById('root'));

const entityLoader = (route, apiPath) => {
  const searchParams = new URLSearchParams(new URL(route.request.url).searchParams);
  searchParams.set('gameId', route.params.gameId);
  searchParams.set('locale', route.params.locale);
  const apiUrl = new URL(Constants.HOST + apiPath);
  apiUrl.search = searchParams;
  return fetch(apiUrl);
}

const unitLoader = async (route) => {
  return await entityLoader(route, Constants.UNIT_DATA_API);
}

const  researchLoader = async (route) => {
  return await entityLoader(route, Constants.RESEARCH_DATA_API);
}

const unitPickerOptions = {
  fetchURI: Constants.HOST + Constants.UNIT_OPTIONS_API,
  placeholder: 'Type the Unit name',
  optionSecondaryCallback: (option) => `${option.nation}, ID: ${option.gameId}`
}

const researchPickerOptions = {
  fetchURI: Constants.HOST + Constants.RESEARCH_OPTIONS_API,
  placeholder: 'Type the Research name',
  optionSecondaryCallback: (option) => "ID: " + option.gameId
}

const router = createBrowserRouter([
  {
    path: '*',
    element: <Navigate to={Constants.DEFAULT_LOCALE_OPTION} replace />
  },
  {
    path: `/${Constants.PARAM_LOCALE}`,
    element: <Root />,
    children: [
      {
        index: true,
        element: <Navigate to={Constants.UNIT_PAGE_PATH} replace />
      },
      {
        path: Constants.ERROR_PAGE_PATH,
        element: <ErrorPage />
      },
      /*{
        path: Constants.HOME_PAGE_PATH,
        element: <HomePage />
      },*/
      {
        path: Constants.UNIT_PAGE_PATH,
        element: <EntityPage pickerOptions={unitPickerOptions} />
      },
      {
        path: `${Constants.UNIT_PAGE_PATH}/${Constants.PARAM_GAME_ID}`,
        element: <EntityPage pickerOptions={unitPickerOptions} />,
        loader: unitLoader,
        children: [
          {
            index: true,
            element: <Navigate to={Constants.INITIAL_TAB} replace />
          },
          {
            path: `${Constants.PARAM_TAB}`,
            element: <UnitPage />
          },
        ]
      },
      {
        path: Constants.RESEARCH_PAGE_PATH,
        element: <EntityPage pickerOptions={researchPickerOptions} />
      },
      {
        path: `${Constants.RESEARCH_PAGE_PATH}/${Constants.PARAM_GAME_ID}`,
        element: <EntityPage pickerOptions={researchPickerOptions} />,
        loader: researchLoader,
        children: [
          {
            index: true,
            element: <Navigate to={Constants.INITIAL_TAB} replace />
          },
          {
            path: `${Constants.PARAM_TAB}`,
            element: <ResearchPage />
          },
        ]
      },
    ],
  },
]);


console.log('root')
root.render(
  <div className='page-root'>
    <RouterProvider  router={router} />
  </div>
);