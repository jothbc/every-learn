import {Router} from 'express';

import userRouter from './user.router.js';
import postRouter from './post.router.js';

const Routes = Router();

Routes.use('/users', userRouter);
Routes.use('/posts', postRouter);

export default Routes;
