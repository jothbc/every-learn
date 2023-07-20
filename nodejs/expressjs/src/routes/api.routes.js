import { Router } from 'express'
import ClearUserService from '../services/ClearUsersService.js';

const api = Router();

api.get('/user', async (request, response) => {
  try{
    const service = await ClearUserService();
    response.status(200).json({
      result: service,
    })
  }catch(err){
    response.status(400).json({error: 'Algo deu errado'})
  }
})

export default api