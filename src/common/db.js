import pg from "pg";

let pool;

function _createDbPool() {
    pool = new pg.Pool({
        connectionString: process.env.DATABASE_URL
    });
    return pool;
}

_createDbPool();

export default pool;
