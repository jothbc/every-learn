import UserRepository from "../repositories/UserRepository.js";
import User from '../models/User.js';

const GetUserService = async ({ id }) => {
  const repository = new UserRepository();
  const result = await repository.getUserById(id);
  if (Array.isArray(result) && result.length > 0) {
    const user = new User(result[0]);
    delete user.password;
    return user;
  }
  throw new Error('User not found')
};

export default GetUserService;