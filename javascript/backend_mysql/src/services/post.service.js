import connection from "../db/db.js";

class PostService {


  static async createPost({ userId, text }) {
    const result = await new Promise((resolve, reject) => {
      connection.query('INSERT INTO posts (user_id, text) VALUES (?,?)', [userId, text], (error, results) => {
        if (error) {
          reject(error);
        } else {
          resolve(results);
        }
      })
    });
    return result;
  }

  static async getAllPosts() {
    const result = await new Promise((resolve, reject) => {
      connection.query('SELECT p.id, p.text, p.created_at, u.name, u.avatar FROM posts p left join users u on u.id = p.user_id', (error, results) => {
        if (error) {
          reject(error);
        } else {
          resolve(results);
        }
      })
    });
    return result.map(({ id, text, created_at, name, avatar }) => ({ id, text, created_at, user: { name, avatar } }));
  }

  static async getPostById(id) {
    const result = await new Promise((resolve, reject) => {
      connection.query('SELECT p.id, p.text, p.created_at, u.name, u.avatar FROM posts p left join users u on u.id = p.user_id where p.id = ?', [id], (error, results) => {
        if (error) {
          reject(error);
        } else {
          resolve(results);
        }
      })
    });
    return result.map(({ id, text, created_at, name, avatar }) => ({ id, text, created_at, user: { name, avatar } }))[0];
  }
}

export default PostService;