import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import { Footer } from './components/Footer';
import { BrowserRouter as Router, Route, Routes, Navigate } from 'react-router-dom';
import { HomePage } from './components/Pages/HomePage/index';
import { UnitPage } from './components/Pages/UnitPage/index';
import { HOME_PAGE_PATH, UNIT_PAGE_PATH } from './utils/Constants';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <div className="page-root">
    <Router>
      <div className="body-root">
        <Routes>
          <Route
            path={HOME_PAGE_PATH}
            element={<HomePage />} />
          <Route
            path={UNIT_PAGE_PATH}
            element={<UnitPage />} />
          <Route
            path="*"
            element={<Navigate to={UNIT_PAGE_PATH} replace />} />
        </Routes>
      </div>
      <Footer />
    </Router>
  </div>
);

//TODO: make homepage