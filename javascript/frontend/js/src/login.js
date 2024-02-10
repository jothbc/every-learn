import { DOM } from './util.js';
import { API_ROUTES } from './routes.js';
import api from '../fetch.js';

const form = DOM.get('form');
const errors = {
  email: DOM.get('[data-email]'),
  password: DOM.get('[data-password]'),
}

form.addEventListener('submit', async (event) => {
  event.preventDefault();

  const fd = new FormData(form);
  const obj = Object.fromEntries(fd);
  var hasError = false;

  if (!obj.email) {
    errors.email.classList.add('on-error');
    hasError = true;
  } else {
    errors.email.classList.remove('on-error');
  }

  if (!obj.password) {
    errors.password.classList.add('on-error');
    hasError = true;
  } else {
    errors.password.classList.remove('on-error');
  }

  if (hasError) {
    return;
  }

  try {
    Notiflix.Block.circle('.button-submit');

    const response = await api(API_ROUTES.LOGIN, {
      method: 'POST',
      body: JSON.stringify(obj),
    });
    const user = response;
    localStorage.setItem('mw-user', JSON.stringify(user) );
    window.location.href = './index.html';
  } catch (error) {
    Notiflix.Notify.failure(error.message);
    console.log(error);
  } finally {
    Notiflix.Block.remove('.button-submit');
  }
})
