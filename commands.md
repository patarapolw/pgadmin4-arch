# Essential commands

## Access control

```sh
sudo nano /etc/postgresql/12/main/pg_hba.conf
/etc/init.d/postgresql restart
```

```sh
sudo ufw allow from "$IP" to any proto tcp port 5432
```

## General monitoring

### Check sizes

```postgres
\l+
```

### Create USER

```postgres
CREATE USER $USERNAME WITH PASSWORD $PASSWORD;
```

### Create database and neccesary permissions

```postgres
CREATE DATABASE $DBNAME;
GRANT ALL PRIVILEGES ON DATABASE $DBNAME to $USERNAME;
\c $DBNAME
CREATE EXTENSION citext;
CREATE EXTENSION "uuid-ossp";
```
