import User from "./User.js";

class Post {
  constructor({id, text, user, created_at}){
    this.id = id;
    this.text = text;
    this.user = user;
    this.created_at = created_at ?? new Date().toISOString().slice(0, 19).replace("T", " ");
  }
}

export default Post;