const api = async (url, props) => {
  let storage = sessionStorage.getItem('@javascriptExample');

  if (!storage) {
    const initialUser = [{
      "id": 1,
      "name": "Microway",
      "email": "microway",
      "avatar": "microway.png",
      "password": "123",
    },{
      "id": 99,
      "name": "Jonathan Comin",
      "email": "jonathan",
      "avatar": "jonathan.jpg",
      "password": "123",
    }]
    const initialStorage = {
      users: [initialUser[0]],
      posts: [
        {
          "id": 1,
          "text": "Bem-vindo ao curso de JavaScript 🚀🚀",
          "user": initialUser[0],
          "created_at": "2024-02-10 18:54:15"
        },
        {
          "id": 99,
          "text": "Olá, serei seu instrutor no curso de JavaScript 😁",
          "user": initialUser[1],
          "created_at": "2024-02-10 18:54:15"
        }
      ]
    }
    sessionStorage.setItem('@javascriptExample', JSON.stringify(initialStorage));
    storage = initialStorage;
  } else {
    storage = JSON.parse(storage);
  }

  await new Promise((resolve) => window.setTimeout(resolve, 500));

  if (url === 'http://localhost:3333/user' && props?.method === 'POST') {
    const newUser = JSON.parse(props.body);
    newUser.id = storage.users.length + 1;
    newUser.avatar = "placeholder.png";
    delete newUser.password_confirm;
    storage.users.push(newUser);
    sessionStorage.setItem('@javascriptExample', JSON.stringify(storage));
    return newUser;
  }
  if (url === 'http://localhost:3333/user/login' && props?.method === 'POST') {
    const { email, password } = JSON.parse(props.body);
    const user = storage.users.find(user => user.email === email);
    if (user && user.password === password) {
      return user;
    }
    throw new Error('Usuário ou senha inválidos');
  }
  if (url === 'http://localhost:3333/post' && props?.method === 'POST') {
    const [date, time] = new Date().toLocaleString('pt-BR').split(', ');
    const [day, month, year] = date.split('/');

    const newPost = JSON.parse(props.body);
    newPost.id = storage.posts.length + 1;
    newPost.user = window.user;
    newPost.created_at = `${year}-${month}-${day} ${time}`;
    storage.posts.push(newPost);
    sessionStorage.setItem('@javascriptExample', JSON.stringify(storage));
    return { post: newPost };
  }
  if (url === 'http://localhost:3333/post' && !props) {
    return storage.posts;
  }

  throw new Error('Ação disponível somente durante o curso de JavaScript');
};

export default api;