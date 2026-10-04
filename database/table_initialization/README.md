# Dependancies:
 - Docker 
 - dBeaver
 - MariaDB

# Mousion db initialization

1. Open a terminal

2. Navigate to the directory containing the `init.sql` and `docker-compose.yml` files using `cd`. These files need to be in the same directory.

3. Run `sudo docker compose up -d`. This command starts the database docker image defined in the `docker-compose.yml` in detached mode.

4. Open DBeaver and click "New Database Connection" (in the top right above the file tree menu) or press Shift+Ctrl+n to make a new connection.

5. In the new database connection menu, select MariaDB as the database driver, then select next.

6. Input the following into the connection settings and then press "Finish":
- port: 2121
- user: user
- password: password

7. Ensure there is a database called "mousiondb" with three tables in the directory tree named "words", "decks", and "deck_word".

8. You may need to select "localhost" as the active connection if you recieve a "No active connection" error.
