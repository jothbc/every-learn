import db from '../db/sqlite.js';
import Post from '../models/Post.js'
import User from '../models/User.js';

class PostRepository {

  async createPost({ user, text }) {
    const post = new Post({
      text,
      user
    });
    const result = await db.run('INSERT INTO post (user_id, text, created_at) VALUES (?,?,?)', [user.id, post.text, post.created_at]);
    return { result, post };
  }

  async getAllPosts() {
    const result = await db.all('SELECT * FROM post');
    return result;
  }
}

export default PostRepository;