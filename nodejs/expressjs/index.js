import express from 'express';
import routes from './src/routes/index.js';
import cors from 'cors';

const app = express();
app.use(express.json());
app.use(cors())

app.use(routes);

app.listen(3333, () => {
  console.log('App runnig at http://localhost:3333');
});