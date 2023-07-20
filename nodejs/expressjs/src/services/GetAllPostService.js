import db from "../db/sqlite.js";
import PostRepository from "../repositories/PostRepository.js";

const GetAllPostService = async () => {
  try {
    const repository = new PostRepository();
    const result = await repository.getAllPosts()
    return result;
  } catch (error) {
    throw new Error(error.message);
  }
}

export default GetAllPostService;