import ReactDOM from 'react-dom/client';
import './index.css';
import { Footer } from './components/Footer';
import { BrowserRouter as Router, Route, Routes, Navigate, Outlet } from 'react-router-dom';
import { HomePage } from './components/Pages/HomePage/index';
import { UnitPage } from './components/Pages/UnitPage/index';
import * as Constants from './utils/constants';
import { ResearchPage } from 'components/Pages/ResearchPage';
import { Header } from 'components/Header';

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
root.render(
  <div className="page-root">
    <Router>
      <Routes>
        <Route
          path="*"
          element={<Navigate to={Constants.DEFAULT_LOCALE_OPTION} replace />} />
        <Route path="/:locale" element={<Root />}>
          <Route
            path={Constants.HOME_PAGE_PATH}
            element={<HomePage />} />
          <Route
            path={Constants.UNIT_PAGE_PATH}
            element={<UnitPage />} />
          <Route
            path={Constants.RESEARCH_PAGE_PATH}
            element={<ResearchPage />} />
          <Route
            index
            element={<Navigate to={Constants.UNIT_PAGE_PATH} replace />} />
        </Route>
      </Routes>
    </Router>
  </div>
);