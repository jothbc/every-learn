class User {
  constructor(name, email, avatar){
    this.id = new Date().getTime();
    this.name = name;
    this.email = email;
    this.avatar = avatar;
  }
}

export default User;