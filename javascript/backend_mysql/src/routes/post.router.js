import { Router } from "express";

const postRouter = Router();

postRouter.get("/", (request, response) => {
  response.status(200).json({
    message: "oks"
  });
});


export default postRouter;

