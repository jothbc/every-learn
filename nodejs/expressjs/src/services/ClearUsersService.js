import db from "../db/sqlite.js";

const ClearUserService = async ()=>{
 const result = await db.run('DELETE FROM user');
 return result;
};

export default ClearUserService;