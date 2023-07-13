import db from '../db/sqlite.js';
import create_tables_13_07_2023 from "./create_tables_13_07_2023.js";

console.log(await db.run(create_tables_13_07_2023));

