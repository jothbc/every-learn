import { Router } from 'express'
import CreatePostService from '../services/CreatePostService.js';
import GetAllPostService from '../services/GetAllPostService.js';

const post = Router();

post.get('/', async (request, response) => {
  try {
    const { body } = request;
    const result = await GetAllPostService(body);
    response.status(200).json(result);
  } catch (err) {
    response.status(400).json({ message: err.message });
  }
});

post.post('/', async (request, response) => {
  try {
    const { body } = request;
    const result = await CreatePostService(body);
    response.status(200).json(result);
  } catch (err) {
    response.status(400).json({ message: err.message });
  }

});

export default post;