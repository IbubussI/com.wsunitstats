import * as Constants from "utils/constants";

export const resolveImage = (name) => {
  return `/files/images/${name}`;
}

export const makeEntityLink = (link) => {
  if (link.path === Constants.NO_LINK_INDICATOR) {
    return Constants.NO_LINK_INDICATOR;
  }
  if (link.id === undefined) {
    return `${link.path}?locale=${link.locale}`;
  }
  return `${link.path}?locale=${link.locale}&gameId=${link.id}`;
}

/**
 * Returns route to page for given entity type if supported or default page otherwise
 * 
 * @param {*} entityType current mappings
 * 
 * unit => Constants.UNIT_PAGE_PATH
 * 
 * research => Constants.RESEARCH_PAGE_PATH (not implemented yet)
 * 
 * [anything] => Constants.NO_LINK_INDICATOR
 * 
 * @returns route to entity page
 */
export const getEntityRoute = (entityType) => {
  let result;
  switch (entityType) {
    case 'unit':
      result = Constants.UNIT_PAGE_PATH;
      break;
    case 'research':
      result = Constants.RESEARCH_PAGE_PATH;
      break;
    //case 'env': Constants.ENV_PAGE_PATH; break; <-- TODO
    //case 'resource': Constants.RESOURCE_PAGE_PATH; break; <-- TODO
    default: result = Constants.NO_LINK_INDICATOR;
  }
  return result;
}