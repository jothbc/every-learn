import multer from 'multer';
import { v4 } from 'uuid';

const multerConfig = {
  directory: './temp',
  storage: multer.diskStorage({
    destination: (req, file, cb) => {
      cb(null, './temp');
    },
    filename: (req, file, cb) => {
      cb(null, v4()+'-'+file.originalname);
    }
  })
}
export default multerConfig;