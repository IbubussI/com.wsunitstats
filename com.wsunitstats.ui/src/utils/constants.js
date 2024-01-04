export const HOST = process.env.NODE_ENV === 'development' ? `http://localhost:8080` : `${window.location.protocol}//${window.location.host}`;
export const UNIT_OPTIONS_API = '/api/units/options';
export const RESEARCH_OPTIONS_API = '/api/researches/options';
export const RESEARCH_UNIT_OPTIONS_API = '/api/researches/unit-options';
export const LOCALE_OPTIONS_API = '/api/locales/options';
export const DEFAULT_LOCALE_OPTION = 'en';
export const UNIT_DATA_API = '/api/units/game-id';
export const RESEARCH_DATA_API = '/api/researches/game-id';

export const UNIT_PAGE_PATH = 'unit';
export const RESEARCH_PAGE_PATH = 'research';
export const ENV_PAGE_PATH = 'env';
export const RESOURCE_PAGE_PATH = 'resource';
export const HOME_PAGE_PATH = 'home';
export const ERROR_PAGE_PATH = 'error';

export const INITIAL_TAB = 'index';

export const UNIT_ABILITIES_TAB = 'abilities';
export const UNIT_WEAPONS_TAB = 'weapons';
export const UNIT_BUILD_TAB = 'build';
export const UNIT_GATHER_TAB = 'gather';
export const UNIT_HEAL_TAB = 'heal';
export const UNIT_CONSTRUCTION_TAB = 'construction';
export const UNIT_AIRPLANE_TAB = 'airplane';
export const UNIT_SUBMARINE_TAB = 'submarine';

export const RESEARCH_UPGRADES_TAB = 'upgrades';

export const PARAM_LOCALE = ':locale';
export const PARAM_GAME_ID = ':gameId';
export const PARAM_RESEARCH_ID = 'researchId';
export const PARAM_TAB = ':tab';
export const NO_LINK_INDICATOR = 'no-link';

export const LOCAL_RESIZABLE_WIDTH = 'resizable-width';

export const JS_NBSP = '\u00A0';
export const SECONDS_END_MARKER = `${JS_NBSP}sec`;

export const DEFAULT_COLUMN_WIDTH = 600;
export const FILTER_SIDEKICK_WIDTH = 240;

export const ABILITY_TYPE_DAMAGE = 6;
export const ENTITY_OPTIONS_REQUEST_SIZE = 30;