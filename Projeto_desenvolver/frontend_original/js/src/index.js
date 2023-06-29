import { API_ROUTES } from './routes.js';
import { DOM } from './utils.js';

const userNameElement = DOM.get('.user_name');
const userImageElement = DOM.get('.user_image');
const avatarElement = DOM.get('#avatar');
const ulElement = DOM.get('.list');
const form = DOM.get('form');


// carregar o nome do usuario logado
userNameElement.innerHTML = '';


// ao clicar na imagem do usuario abrir input para selecionar nova foto
userImageElement.addEventListener('click', () => {
  //avatarElement?.;
})

avatarElement.addEventListener('change', async () => {
  // quando o usuario selecionar uma nova foto, enviar essa foto
  if (avatarElement.files.length > 0) {
    try {
      // criar multipart para enviar para a API via POST para o endpoint API_ROUTES.AVATAR
      // a api espera receber {id, avatar}  

      // atualizar a imagem atual do site
      // userImageElement.src = `${API_ROUTES.IMAGE}${...}`;

      // atualizar objeto global e localstorage que tem informações do usuario

    } catch (err) {
      // exibir alerta de erro
    }
  }
})

function addPost(post) {
  // dica: url da imagem = API_ROUTES.IMAGE + imagem
  // li deve conter a class 'item';

  // incluir o post na pagina
}

form.addEventListener('submit', async (e) => {
  e.preventDefault();

  var data = new FormData(form);
  data = Object.fromEntries(data);

  // verificar se há mensagens
  // caso o usuário não tenha informado a mensagem -> exibir alerta de erro
  // caso tudo certo, enviar para API via POST
  // obj que a API espera receber é {id, text}
  // após enviar para a API, incluir post na listagem da tela
  // caso de algum erro na API, exibir alerta de erro
});


//pre carregar todos os posts da API | endpoint API_ROUTES.POSTS
//e por fim carregar seu proprio avatar