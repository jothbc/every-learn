import db from "../db/sqlite.js";
import PostRepository from "../repositories/PostRepository.js";
import GetUserService from "./GetUserService.js";

const CreatePostService = async (body) => {
  try {
    const { userId, text } = body;
    const postRepository = new PostRepository();
    const { result, post } = await postRepository.createPost({ userId, text });

    const user = await GetUserService({id: post.user.id});
    delete user.email;
    delete user.id;
    post.user= user;


    return { result, post };
  } catch (error) {
    throw new Error(error.message);
  }
}

export default CreatePostService;