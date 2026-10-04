# Dependancies:
 - Docker 
 - dBeaver
 - MariaDB

# Mousion db initialization

1. Open a terminal

2. Navigate to the directory containing the `init.sql` and `docker-compose.yml` files using `cd`. These files need to be in the same directory.

3. Run `sudo docker compose up`. This command starts the database docker image defined in the `docker-compose.yml`. 

4. When presented the options to `watch` or `detach`, press `d` to `detach` which causses the container instance to run in the background.

5. Open DBeaver and click "New Database Connection" (in the top right above the file tree menu) or press Shift+Ctrl+n to make a new connection.

6. In the new database connection menu, select MariaDB as the database driver, then select next.

7. Input the following into the connection settings and then press "ok":
- port: 2121
- user: user
- password: password

8. Ensure there are three tables in the directory tree named "words", "decks", and "deck_word".
