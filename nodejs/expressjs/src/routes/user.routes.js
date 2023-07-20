import { Router } from 'express'
import CreateUserService from '../services/CreateUserService.js';
import LoginService from '../services/LoginService.js';

const user = Router();

user.get('/', (request, response) => {
  response.status(200).json({
    message: 'oks'
  })
});
user.post('/login', async (request, response) => {
  try {
    const { body } = request;
    const service = await LoginService(body);
    response.status(200).json(service)
  } catch (err) {
    response.status(401).json({
      message: err.message
    })
  }
});
user.post('/', async (request, response) => {
  try {
    const { body } = request;
    const result = await CreateUserService(body);
    response.status(200).json(result);
  } catch (err) {
    response.status(400).json({ message: err.message })
  }
});

export default user;