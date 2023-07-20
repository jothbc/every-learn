import User from "./User.js";

class Post {
  constructor({text, user, user_id}){
    const [date, time] = new Date().toLocaleString('pt-BR').split(' ');

    this.id = new Date().getTime();
    this.text = text;
    this.user = User;
    this.user_id = user_id;
    this.created_at = `${date.split('/').reverse().join('-')} ${time}`;
  }
}

export default Post;