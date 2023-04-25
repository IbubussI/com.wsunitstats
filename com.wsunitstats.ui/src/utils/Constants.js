export const HOST = process.env.NODE_ENV === 'development' ? `http://localhost:8080` : `${window.location.protocol}//${window.location.host}`;
export const UNIT_OPTIONS_API = '/api/units/options';
export const UNIT_OPTION_ID_API = '/api/units/option';
export const LOCALE_OPTIONS_API = '/api/locales/options';
export const DEFAULT_LOCALE_OPTION = 'en';
export const UNIT_DATA_API = '/api/units';

export const UNIT_PAGE_PATH = '/unit';
export const HOME_PAGE_PATH = '/home';