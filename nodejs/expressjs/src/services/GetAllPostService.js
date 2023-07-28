import Post from "../models/Post.js";
import PostRepository from "../repositories/PostRepository.js";
import GetUserService from "./GetUserService.js";

const GetAllPostService = async () => {
  try {
    const repository = new PostRepository();
    const result = await repository.getAllPosts()
    const posts = [];
    for await (let post of result) {
      try{
        const user = await GetUserService({ id: post.user_id });
        post.user = user;
      }catch(err){
        post.user.id = post.user_id;
      }
      posts.push(new Post(post));
    }
    return posts;
  } catch (error) {
    throw new Error(error.message);
  }
}

export default GetAllPostService;