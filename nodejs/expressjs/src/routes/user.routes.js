import { Router } from 'express'
import CreateUserService from '../services/CreateUserService.js';

const user = Router();

user.get('/', (request, response) => {
  response.status(200).json({
    message: 'oks'
  })
});
user.post('/', async (request, response) => {
  const { body } = request;
  const result = await CreateUserService(body);
  response.status(200).json(result);
});

export default user;