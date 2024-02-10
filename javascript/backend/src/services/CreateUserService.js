import UserRepository from "../repositories/UserRepository.js";
import User from '../models/User.js';

const CreateUserService = async (body)=>{
  const user = new User(body);
  const repository = new UserRepository();
  const result = await repository.createUser(user);
  if(result.lastID){
    user.id = result.lastID;
    delete user.password;
    return user;
  }
  throw new Error(result)
};

export default CreateUserService;