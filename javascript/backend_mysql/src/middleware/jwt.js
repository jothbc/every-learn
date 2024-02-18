import pkg from 'jsonwebtoken';
const { sign, verify } = pkg;


export const generateToken = ({email, name, id}) => {
  const token = sign({email, name, id}, process.env.JWT_TOKEN_SECRET, {
    expiresIn: 86400 // expires in 24 hours
  });
  return token;
}

export const verifyToken = (token) => {
  try {
    return verify(token, process.env.JWT_TOKEN_SECRET);
  } catch (err) {
    return null;
  }
}

export const authMiddleware = async (request, response, next) => {
  const authHeader = request.headers.authorization;
  if (!authHeader) {
    return response.status(401).json({
      message: 'No token provided'
    });
  }
  const token = authHeader.split(' ')[1];
  const user = verifyToken(token);
  if (!user) {
    return response.status(401).json({
      message: 'Invalid token'
    });
  }
  request.user = user;
  next();
}
