import connection from '../db/db.js';

class UserSerivice {


  static async createUser(req, res) { }

  static async getUserByEmail(req, res) { }

  static async getUserById(req, res) { }

  static async updateAvatar(req, res) { }

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
