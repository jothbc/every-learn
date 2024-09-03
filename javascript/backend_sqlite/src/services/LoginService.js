import UserRepository from "../repositories/UserRepository.js";
import User from '../models/User.js';

const LoginService = async (body) => {
  const { email, password } = body;
  const repository = new UserRepository();
  const result = await repository.getUserByEmail(email);
  if (Array.isArray(result) && result.length > 0) {
    const data = result.find(register => {
      return register.password === password
    });
    const user = new User(data);
    delete user.password;
    return user;
  }
  throw new Error('Email e/ou senha incorretos');
};

export default LoginService;