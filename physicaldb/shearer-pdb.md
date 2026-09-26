What information should be included in a create table statement?

Information including table name alond with the columns (attributes) associated with the table. These attributes information such as name, datatype, usage (primary key, null or not null), and any special functions like auto_increment or unique key.

What are database constraints and what are the benefits of them?

Database constraints are rules for data before they are inserted into a table. Benefits of using constraints include preventing errors, ensure data consistency, and enforce business rules.

Ways to insert data?

```
Alter table TABLENAME
Add COLNAME datatype;
```

Modifying columns:

```
Alter table TABLENAME
Modify COLNAME datatype;
```

Removing Columns:

```
Alter TABLENAME
drop column COLNAME
```

What are database roles and what are they used for?

Database roles are single objects that contain group permissions to a particular database or set of databases. Roles can be assigned to users allowing them permission without having to do so on an individual user basis.

Different Types of users?

Some types of users include Native user, Application Programmer, Sophisticated user, Specialized user, and Online user. 

Group Physical Model link:

https://github.com/OfficeCoffee/mouseion-database/blob/main/docs/official-physical-model.png

Table Initialization Script:

```
USE mousiondb

-- Create tables
-- COLNAME datatype usage (PK, NN, N) extra (auto_increment, unique)

-- words

CREATE TABLE words (
    word_id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    word VARCHAR(50) NOT NULL,
    origin VARCHAR(200) NULL,
    definition VARCHAR(200) NOT NULL,
    created_at DATETIME NOT NULL
);

-- decks

CREATE TABLE decks (
    deck_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    deck_name VARCHAR(50) NOT NULL,
    created_at DATETIME NOT NULL
);

-- junction table

CREATE TABLE deck_word (
    deck_id SMALLINT UNSIGNED NOT NULL,
    word_id MEDIUMINT UNSIGNED NOT NULL,
    PRIMARY KEY (deck_id, word_id),
    FOREIGN KEY (deck_id) REFERENCES decks(deck_id),
    FOREIGN KEY (word_id) REFERENCES words(word_id)
);
```

Script Description:
The following script creates three tables words, decks, and deck_word. The words table consists of several columns including word_id, word, origin, definition, and created_at. word_id was assigned the datatype mediumint to account for our target audience inserting a large amount of words into the database. origin was also given the ability to be left NULL in the event users don't have a specific point of origin for a word.

The decks table consists of deck_id, deck_name, and created_at. deck_id was assigned the datatype smallint under the assumption that there will be far less decks than words created by the user.

The deck_word table consists of word_id and deck_id. The primary key of this table is both word_id and deck_id. Both of these columns are foreign keys from the words and decks tables and are assigned to reference their respective columns from their respective tables.
