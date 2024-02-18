import { Router } from "express";
import UserSerivice from "../services/user.service.js";
import { authMiddleware, generateToken } from "../middleware/jwt.js";
import busboy from "busboy";
import { join } from 'node:path';

import { randomUUID } from 'crypto';
import { createWriteStream } from "node:fs";
import { unlink } from "node:fs/promises";


const userRouter = Router();

userRouter.get("/", authMiddleware, (request, response) => {
  response.status(200).json({
    message: "oks"
  });
});

userRouter.post("/login", async (request, response) => {
  try {
    const { body } = request;
    const result = await UserSerivice.login(body);
    console.log(result);
    if (result) {
      const token = generateToken(result);
      return response.status(200).json({ ...result, token });
    }
    response.status(401).json({ message: "Invalid Credentials" });
  } catch (error) {
    console.log(error);
    response.status(401).json({ message: "Invalid Credentials" });
  }
})

userRouter.post("/register", async (request, response) => {
  try {
    const { body } = request;
    const result = await UserSerivice.createUser(body);
    if (result) {
      return response.status(200).json({
        message: "User created",
      });
    }
    throw new Error('erros');
  } catch (error) {
    console.log(error);
    if (error.sqlMessage && error.sqlMessage.includes("Duplicate entry")) {
      return response.status(400).json({ message: "User already exists" });
    }
    response.status(400).json({ message: "Check all fields before sending", fieldsRequired: ["name", "email", "password"] });
  }
});

userRouter.post("/avatar", authMiddleware, async (req, res) => {
  if (req.headers['content-type'].includes('multipart/form-data')) {
    const bb = busboy({ headers: req.headers });
    let newFileName = '';
    bb.on('file', async (fieldname, file, fileInfo) => {
      if (fieldname === 'avatar') {
        newFileName = `${randomUUID()}-${fileInfo.filename}`;
        const filePath = join(process.cwd(), 'public', 'files', newFileName);
        file.pipe(createWriteStream(filePath));
        const oldFilename = await UserSerivice.getAvatar(req.user.id);
        if (oldFilename) {
          const oldFilePath = join(process.cwd(), 'public', 'files', oldFilename);
          try {
            await unlink(oldFilePath);
          } catch (error) {
            console.log(error);
          }
        }
        await UserSerivice.updateAvatar(req.user.id, newFileName);
      } else {
        bb.emit('invalidFieldName');
      }
    });
    bb.on('finish', () => {
      return res.status(200).json({ message: 'avatar uploaded', filename: newFileName });
    });
    bb.on('error', () => {
      return res.status(500).json({ message: 'an error has occurred' });
    })
    bb.on('invalidFieldName', () => {
      return res.status(500).json({ message: 'invalid field name', fieldsRequired: ["avatar"] });
    })
    req.pipe(bb);
  } else {
    res.status(405).json({ message: 'method not allowed' });
  }
});

export default userRouter;

