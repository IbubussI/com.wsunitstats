export const HOST = process.env.NODE_ENV === 'development' ? `http://localhost:8080` : `${window.location.protocol}//${window.location.host}`;
export const UNIT_OPTIONS_API = '/api/units/options';
export const UNIT_OPTION_ID_API = '/api/units/option';
export const LOCALE_OPTIONS_API = '/api/locales/options';
export const DEFAULT_LOCALE_OPTION = 'en';
export const UNIT_DATA_API = '/api/units';

export const UNIT_PAGE_PATH = '/unit';
export const RESEARCH_PAGE_PATH = '/research';
export const ENV_PAGE_PATH = '/env';
export const RESOURCE_PAGE_PATH = '/resource';
export const HOME_PAGE_PATH = '/home';

export const UNIT_ABILITIES_TAB = 'abilities';
export const UNIT_COMMON_TAB = 'common';
export const UNIT_WEAPONS_TAB = 'weapons';
export const UNIT_BUILD_TAB = 'build';
export const UNIT_GATHER_TAB = 'gather';
export const UNIT_HEAL_TAB = 'heal';
export const UNIT_CONSTRUCTION_TAB = 'construction';
export const UNIT_AIRPLANE_TAB = 'airplane';
export const UNIT_SUBMARINE_TAB = 'submarine';

export const PARAM_LOCALE = 'locale';
export const PARAM_GAME_ID = 'gameId';
export const PARAM_TAB = 'tab';
export const NO_LINK_INDICATOR = 'no-link';

export const SECONDS_END_MARKER = '\u00A0sec';