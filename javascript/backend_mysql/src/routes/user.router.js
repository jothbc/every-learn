import { Router } from "express";
import UserSerivice from "../services/user.service.js";

const userRouter = Router();

userRouter.get("/", (request, response) => {
  response.status(200).json({
    message: "oks"
  });
});

userRouter.post("/login", async (request, response) => {
  try{
    const { body } = request;
    const result = await UserSerivice.login(body);
    if(result){
      return response.status(200).json(result);
    }
    response.status(401).json({message: "Invalid Credentials"});
  }catch(error){
    console.log(error);
    response.status(401).json({message: "Invalid Credentials"});
  }
})


export default userRouter;

