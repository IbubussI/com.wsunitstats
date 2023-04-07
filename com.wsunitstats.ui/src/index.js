import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import { BodyLayout } from './components/BodyLayout';
import { Footer } from './components/Footer';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <>
    <BodyLayout/>
    <Footer/>
  </>
);