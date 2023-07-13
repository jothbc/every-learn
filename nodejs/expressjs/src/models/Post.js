class Post {
  constructor({text, user}){
    this.id = new Date().getTime();
    this.text = text;
    this.user = user;
    this.created_at = new Date().getTime();
  }
}