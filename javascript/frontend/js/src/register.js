import { DOM } from './util.js';
import { API_ROUTES } from './routes.js';
import api from '../fetch.js';

const form = DOM.get('form');
const errors = {
  name: DOM.get('[data-name]'),
  email: DOM.get('[data-email]'),
  password: DOM.get('[data-password]'),
  password_confirm: DOM.get('[data-password_confirm]'),
}

form.addEventListener('submit', async (event) => {
  event.preventDefault();

  const fd = new FormData(form);
  const obj = Object.fromEntries(fd);
  var hasError = false;

  if (!obj.name) {
    errors.name.classList.add('on-error');
    hasError = true;
  } else {
    errors.name.classList.remove('on-error');
  }


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

  if (!obj.password_confirm) {
    errors.password_confirm.classList.add('on-error');
    hasError = true;
  } else {
    errors.password_confirm.classList.remove('on-error');
  }

  if (hasError) {
    return;
  }

  try {
    Notiflix.Block.circle('.button-submit');
    await api(API_ROUTES.REGISTER,{
      body: JSON.stringify(obj),
      method: 'POST',
    });
    Notiflix.Report.success(
      'Perfeito!',
      'Cadastro realizado com sucesso.',
      'Ir para o Login',
      () => {
        window.location.href = '/login.html';
      }
    );
  } catch (error) {
    Notiflix.Notify.failure(error.message);
    console.log(error);
  } finally {
    Notiflix.Block.remove('.button-submit');
  }

})
