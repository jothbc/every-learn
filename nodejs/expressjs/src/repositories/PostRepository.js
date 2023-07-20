import db from '../db/sqlite.js';
import Post from '../models/Post.js'

class PostRepository {

  async createPost({userId, text}) {
    const post = new Post({
      text,
      user_id: userId
    });
    const result = await db.run('INSERT INTO post (user_id, text, created_at) VALUES (?,?,?)', [post.user_id, post.text, post.created_at]);
    return result;
  }

  async getAllPosts() {
    const result = await db.all('SELECT * FROM post');
    return result;
  }
}

export default PostRepository;