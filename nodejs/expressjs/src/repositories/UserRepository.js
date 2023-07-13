import db from '../db/sqlite.js';

class UserRepository {

  createUser(user) {
    const {name, email, avatar, password} = user;
    const result = db.run('INSERT INTO user (name, email, avatar, password) VALUES (?,?,?,?)', [name, email, avatar, password]);
    return result;
  }

}

export default UserRepository;