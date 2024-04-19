import connection from '../db/db.js';

class UserSerivice {


  static async createUser({ name, email, password }) {
    const result = await new Promise((resolve, reject) => {
      const defaultAvatar = 'placeholder.png';
      connection.query('INSERT INTO users (name, email, password, avatar) VALUES (?,?,?,?)', [name, email, password, defaultAvatar], (error, results) => {
        if (error) {
          reject(error);
        } else {
          resolve(results);
        }
      })
    });
    return result;
  }

  static async getUserByEmail() { }

  static async getAvatar(userId) {
    const result = await new Promise((resolve, reject) => {
      connection.query('SELECT avatar FROM users WHERE id =?', [userId], (error, results) => {
        if (error) {
          reject(error);
        } else {
          resolve(results);
        }
      })
    })
    return result.length > 0 ? result[0].avatar : null;
  }

  static async updateAvatar(userId, filename) { 
    const result = await new Promise((resolve, reject) => {
      connection.query('UPDATE users SET avatar =? WHERE id =?', [filename, userId], (error, results) => {
        if (error) {
          reject(error);
        } else {
          resolve(results);
        }
      })
    });
    return result;
  }

  static async login({ email, password }) {
    const result = await new Promise((resolve, reject) => {
      connection.query('SELECT * FROM users WHERE email =? AND password =?', [email, password], (error, results) => {
        if (error) {
          reject(error);
        } else {
          resolve(results);
        }
      })
    });
    const sanitizedResult = result.map((user) => {
      delete user.password;
      return user;
    })
    return sanitizedResult.length > 0 ? sanitizedResult[0] : null;
  }

}

export default UserSerivice;
