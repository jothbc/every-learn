import { Router } from 'express';

import userRouter from './user.routes.js';
import postRouter from './post.routes.js';

const routes = Router();

routes.use('/user', userRouter);
routes.use('/post', postRouter);

export default routes;