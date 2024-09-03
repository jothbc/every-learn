import {Router} from 'express';

import userRouter from './user.router.js';
import postRouter from './post.router.js';

const Routes = Router();

Routes.use('/user', userRouter);
Routes.use('/post', postRouter);
Routes.use('/test', (request, response) => {
  response.json({
    message: 'Hello World'
  })
})

export default Routes;
