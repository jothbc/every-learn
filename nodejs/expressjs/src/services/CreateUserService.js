import UserRepository from "../repositories/UserRepository.js";
import User from '../models/User.js';

const CreateUserService = async (body)=>{
  const user = new User(body);
  const repository = new UserRepository();
  const result = await repository.createUser(user);
  return result;
};

export default CreateUserService;