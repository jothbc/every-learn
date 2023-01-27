import { v4 as uuidv4 } from 'uuid';

import User from './User';

class Post {
  id: string;

  user: User;

  text: string;

  created_at: string;

  constructor({ user, text }: Omit<Post, 'id' | 'created_at'>) {
    const created = new Date();
    this.user = user;
    this.text = text;
    this.id = uuidv4();
    this.created_at = new Date(created.setTime(created.getTime())).toString();
  }
}
export default Post;
