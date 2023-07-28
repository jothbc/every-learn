import db from "../db/sqlite.js";
import PostRepository from "../repositories/PostRepository.js";
import GetUserService from "./GetUserService.js";

const CreatePostService = async (body) => {
  try {
    const { userId, text } = body;

    const user = await GetUserService({ id: userId });

    const postRepository = new PostRepository();
    const { result, post } = await postRepository.createPost({ user, text });
    post.id = result.lastID;

    return { result, post };
  } catch (error) {
    throw new Error(error.message);
  }
}

export default CreatePostService;