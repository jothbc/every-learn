import { API_ROUTES } from './routes.js';
import { DOM } from './utils.js';

const form = DOM.get('form');
const errors = {
  email: DOM.get('[data-email]'),
  password: DOM.get('[data-password]'),
}

form.addEventListener('submit', async (e) => {
  e.preventDefault();

  const fd = new FormData(form);
  const obj = Object.fromEntries(fd);

  var hasError = false;

  if (!obj.email) {
    errors.email.classList.add('on-error');
    hasError = true;
  }else {
    errors.email.classList.remove('on-error');
  }
  
  if (!obj.password) {
    errors.password.classList.add('on-error');
    hasError = true;
  }else {
    errors.password.classList.remove('on-error');
  }
  
  if(hasError) return;

  try{
    Notiflix.Block.pulse('.button-submit');
    const response = await axios.post(API_ROUTES.LOGIN, obj);
    const user = response.data;

    localStorage.setItem('mw-user', JSON.stringify(user));

    window.location.href = './index.html';
  }catch(err){
    Notiflix.Notify.failure(err.response.data.message)
  } finally{
    Notiflix.Block.remove('.button-submit');
  }

})