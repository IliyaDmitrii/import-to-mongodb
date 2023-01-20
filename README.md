# import to mongo

Utilizes Node.js 19.3.0 and framework Hapi.js

To run service:

```
npm install
```
```
npm start
```

For Dev:

* PostgresSQL v 15
    * Must have a database created to be used (e.g. `test`)
    * Must have a databaseURL configured as an environment variable DATABASE_URL in the following format: `postgresql://[user[:password]@][host][:port][/dbname]`
    * Must have a change db-migrator package `your_project\node_modules\db-migrator\bin\env.js` connection string like this  `config.connectionString = process.env.DATABASE_URL`
* Mongo
    *  Must have connected `MongoDB Compass` with `connection string` and create DB `Test` with collection `users` .


