import { Router } from "express";
import { authMiddleware } from "../middleware/jwt.js";
import PostService from "../services/post.service.js";

const postRouter = Router();

postRouter.get("/", authMiddleware, async (request, response) => {
  try{
    const posts = await PostService.getAllPosts();
    response.status(200).json(posts);
  }catch(err){
    console.log(err);
    response.status(500).json({message: "Server Error"});
  }
});

postRouter.post("/", authMiddleware, async (request, response) => {
  try{
    const result = await PostService.createPost({text: request.body.text, userId: request.user.id});
    if(result){
      return response.status(200).json({message: "Post created successfully"});
    }
    throw new Error("Post not created");
  }catch(err){
    console.log(err);
    response.status(500).json({message: "Check all fields", requiredFields: ["text"]});
  }
});


export default postRouter;

