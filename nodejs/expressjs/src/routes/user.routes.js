import { Router } from 'express'

const user = Router();

user.get('/', (request, response) => {
  response.status(200).json({
    message: 'oks'
  })
});
user.post('/', (request, response) => {
  response.status(200).json({
    message: 'oks'
  })
});

export default user;