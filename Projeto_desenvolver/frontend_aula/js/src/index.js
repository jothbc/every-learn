import { API_ROUTES } from './routes.js';

const userName = document.querySelector('.user_name');
userName.innerHTML = window.user.name;
const userImage = document.querySelector('.user_image');
userImage.src = `${API_ROUTES.IMAGE}${window.user.avatar}`;

const avatarInput = document.querySelector('#avatar');

userImage.addEventListener('click', ()=>{
  avatarInput.click();
});

avatarInput.addEventListener('change', async ()=>{
  const files = avatarInput.files;
  const file = files[0];
  try{
    const fd = new FormData();
    fd.append('id', window.user.id);
    fd.append('avatar', file);
    const response = await axios.post(API_ROUTES.AVATAR, fd);
    userImage.src = `${API_ROUTES.IMAGE}${response.data.avatar}`;
    window.user.avatar = response.data.avatar;
    localStorage.setItem('mw-user', JSON.stringify(window.user));
    console.log(response.data);
  }catch(error){
    Notiflix.Notify.failure('Ops...');
  }
})


const ul = document.querySelector('ul');

function addPost(post) {
  const li = document.createElement('li');
  li.classList.add('item');
  const body = `
        <picture>
          <img src="${API_ROUTES.IMAGE + post.user.avatar}" alt="" width="60" height="60">
        </picture>
        <div class="content">
          <span class="user_name">${post.user.name}</span>
          <br>
          <p class="user_text">${post.text}</p>
        </div>
        <div class="oclock">
          <svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" stroke-linecap="round"
            stroke-linejoin="round" color="#ff9000" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg"
            style="color: rgb(255, 144, 0);">
            <circle cx="12" cy="12" r="10"></circle>
            <polyline points="12 6 12 12 16 14"></polyline>
          </svg>
          <span>${new Date(post.created_at).toLocaleString('pt-BR')}</span>
        </div>
  `;
  li.innerHTML = body;
  ul.appendChild(li);

}

const form = document.querySelector('form');
form.addEventListener('submit', async (event) => {
  event.preventDefault();

  const fd = new FormData(form);
  const obj = Object.fromEntries(fd);

  console.log(obj);
  if (!obj.message) {
    Notiflix.Notify.info('Informe uma mensagem antes de postar');
    return;
  }
  const send = {
    id: window.user.id,
    text: obj.message,
  }

  try {
    const response = await axios.post(API_ROUTES.POSTS, send);
    form.reset();
    addPost(response.data);
  } catch (err) {
    Notiflix.Notify.failure(err.response.data.message);
  }

});



(async ()=>{

  try{
    const response = await axios.get(API_ROUTES.POSTS);
    console.log(response.data);
    response.data.forEach(post => {
      addPost(post);
    })
  }catch(error){
    Notiflix.Notify.failure('Ops... Não conseguimos buscar os dados do servidor!')
  }

})()