# Dependancies:
 - Docker 
 - dBeaver
 - MariaDB

# Mousion db initialization

1. Ensure init.sql and docker-compose.yml need to be in the same directory.

2. Run `sudo docker compose up`. This will start up the container instance with the database tables.

3. Press `d` for detach and enter. This will run the container instance in the background.

4. Open dbeaver, create a new connection, and select MariaDB.

5. Input the following into the connection settings port: 3306, user: user, and password: password. Then press "ok"

6. There should be three tables in the directory tree.

Instructions of how to use docker compose to stand up your DB and how to connect to it with DBeaver
