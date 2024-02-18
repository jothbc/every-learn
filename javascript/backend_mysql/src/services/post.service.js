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
      connection.query('SELECT p.id, p.text, u.name, u.avatar FROM posts p left join users u on u.id = p.user_id', (error, results) => {
        if (error) {
          reject(error);
        } else {
          resolve(results);
        }
      })
    });
    return result.map(({ id, text, name, avatar }) => ({ id, text, user: { name, avatar } }));
  }
}

export default PostService;