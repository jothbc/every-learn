class User {
  constructor({id, name, email, avatar, password}){
    this.id = id;
    this.name = name;
    this.email = email;
    this.avatar = avatar ?? 'placeholder.png';
    this.password = password;
  }
}

export default User;