const get = (query) => {
  return document.querySelector(query);
}
const getAll = (query) => {
  return document.querySelectorAll(query);
}

export const DOM = {
  get, getAll
}