class User {
  constructor({name, email, avatar, password}){
    this.id = new Date().getTime();
    this.name = name;
    this.email = email;
    this.avatar = avatar;
    this.password = password;
  }
}

export default User;