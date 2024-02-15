import express from 'express';
import cors from 'cors';
import { join } from 'node:path';
import Routes from './src/routes/index.js';

const app = express();

app.use(express.json());

app.use(cors());

app.use('/files', express.static(join('.', 'public', 'files')));

app.use('/', Routes);

app.listen(3333, () => {
  console.log('App runnig at http://localhost:3333');
});

