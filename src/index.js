'use strict';

import Hapi from '@hapi/hapi';
import Config from 'config';
import pool from "./common/db.js";
import { executeProcess, closeProcess } from './common/importToMongo.js'


// Options to Hapi server
const hapiOptions = {
    port: Config.get('server.port'),
    host: Config.get('server.host'),
};

const init = async () => {

    const server = Hapi.server(hapiOptions); // create server

    server.route({
        method: 'GET',
        path: '/users',
        handler: async function (request, h){
            const query = "SELECT * FROM users";
            const result = await pool.query(query);
            return JSON.stringify(result.rows, null, 3);
        },
        options: {
            tags: ['api']
        }
    });

    await executeProcess();
    await closeProcess();
    await server.start();
    console.log('Server running on %s', server.info.uri);

    return server;
};

process.on('unhandledRejection', (err) => {
    console.log(err);
    process.exit(1);
});

init(); //start app
