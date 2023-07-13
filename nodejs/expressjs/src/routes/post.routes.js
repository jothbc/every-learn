import { Router } from 'express'

const post = Router();

post.get('/', (request, response) => {
  response.status(200).json({
    message: 'oks'
  })
});
post.post('/', (request, response) => {
  response.status(200).json({
    message: 'oks'
  })
});

export default post;