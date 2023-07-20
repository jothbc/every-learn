import db from "../db/sqlite.js";
import PostRepository from "../repositories/PostRepository.js";

const CreatePostService = async (body) => {

  try {
    const repository = new PostRepository();
    const result = await repository.createPost(body)
    return result;
  } catch (error) {
    throw new Error(error.message);
  }
}

export default CreatePostService;