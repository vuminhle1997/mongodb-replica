# mongodb-replica

```bash
# Fill the environments in .env.example, then executes these commands
mv .env.example .env
bash generate_key.sh
docker compose up -d
```

Run inside a mongo instance (mongo1):

```bash
docker exec -it mongo1 bash
```

Inside the terminal execution, run this command:

```bash
# <admin> from env & <password> from env
mongosh -u <admin> -p <password>
```

When logged in as admin, run this execution:

```js
// creates a replica set
rs.initiate({
  _id: 'rs0',
  version: 1,
  members: [
    { _id: 0, host: 'mongo1:27017' },
    { _id: 1, host: 'mongo2:27017' },
    { _id: 2, host: 'mongo3:27017' },
  ],
});
```
