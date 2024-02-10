import db from "../db/sqlite.js";

const ClearAllService = async ()=>{
 const user = await db.run('DELETE FROM user');
 const post = await db.run('DELETE FROM post');
 return {user, post};
};

export default ClearAllService;