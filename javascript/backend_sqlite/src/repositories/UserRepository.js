import db from '../db/sqlite.js';

class UserRepository {

  async createUser(user) {
    const { name, email, avatar, password } = user;
    const result = await db.run('INSERT INTO user (name, email, avatar, password) VALUES (?,?,?,?)', [name, email, avatar, password]);
    return result;
  }

  async getUserByEmail(email) {
    const result = await db.all('SELECT * FROM user WHERE email = ?', [email]);
    return result;
  }

  async getUserById(id) {
    const result = await db.all('SELECT * FROM user WHERE id = ?', [id]);
    return result;
  }

  async updateAvatar(newAvatar, id) {
    const result = await db.run('UPDATE user SET avatar = ? where id = ? ', [avatar, id]);
    return result;
  }

}

export default UserRepository;