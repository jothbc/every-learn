import { API_ROUTES } from './routes.js';
import { DOM } from './utils.js';

const form = DOM.get('form');
const errors = {
  name: DOM.get('[data-name]'),
  email: DOM.get('[data-email]'),
  password: DOM.get('[data-password]'),
  password_confirm: DOM.get('[data-password_confirm]'),
}

form.addEventListener('submit', async (e) => {
  e.preventDefault();

  const fd = new FormData(form);
  const obj = Object.fromEntries(fd);

  var hasError = false;

  if (!obj.name) {
    errors.name.classList.add('on-error');
    hasError = true;
  }else {
    errors.name.classList.remove('on-error');
  }
  
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
  
  if (!obj.password_confirm) {
    errors.password_confirm.classList.add('on-error');
    hasError = true;
  }else {
    errors.password_confirm.classList.remove('on-error');
  }

  if(hasError) return;

  try{
    Notiflix.Block.pulse('.button-submit');
    const response = await axios.post(API_ROUTES.REGISTER, obj);
    
    Notiflix.Report.success('Perfeito!', 'cadastro realizado com sucesso.', 'ir para o login', ()=>{
      window.location.href = './login.html';
    });
  }catch(err){
    Notiflix.Notify.failure(err.response.data.message)
  } finally{
    Notiflix.Block.remove('.button-submit');
  }

})