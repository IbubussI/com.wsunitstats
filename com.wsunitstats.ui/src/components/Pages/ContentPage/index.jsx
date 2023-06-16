
import { Footer } from 'components/Footer';
import { BrowserRouter as Router, Route, Routes, Navigate } from 'react-router-dom';
import { HomePage } from 'components/Pages/HomePage/index';
import { UnitPage } from 'components/Pages/UnitPage/index';
import * as Constants from 'utils/constants';
import { ResearchPage } from 'components/Pages/ResearchPage';
import { Header } from 'components/Header';
import './index.css';

export const ContentRoot = () => {
  return (
    <div className="page-root">

      <Router>
        <div className="body-root">
          <Routes>
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
              path="*"
              element={<Navigate to={Constants.UNIT_PAGE_PATH} replace />} />
          </Routes>
        </div>
      </Router>
      <Footer />
    </div>
  );
}