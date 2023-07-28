import User from "./User.js";

class Post {
  constructor({text, user}){
    const [date, time] = new Date().toLocaleString('pt-BR').split(' ');

    this.id = new Date().getTime();
    this.text = text;
    this.user = user;
    this.created_at = `${date.split('/').reverse().join('-')} ${time}`;
  }
}

export default Post;