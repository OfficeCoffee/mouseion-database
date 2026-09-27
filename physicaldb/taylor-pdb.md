# Common Physical Database Concepts

## What information should be included in a create table statement?

At minimum, a create table statement requires a table name and the columns, plus their data type, corresponding to the table. The create statement can have additional clauses such as "OR REPLACE" or "IF NOT EXISTS" and each column can have additional attributes or constraints such as "AUTO_INCREMENT" or being a primary key.

A create table statement requires a table name and the columns corresponding to that table. The 

## What are database constraints and what are the benefits of them?

Database constraints are rules that prevent data from being inserted into a table if it does not follw the rules. These rules prevent any faulty data from being inserted into a table and ensure data consistency as a result. 

## What are some ways to insert data?
Data can be inserted through a sql INSERT. A sql INSERT can allow for one or more rows to be inserted into a given table. For MariaDB, this type of insert command can look like these:

```sql
INSERT INTO users (name, email) VALUES ('user1', 'user1@fake.com');
```

```sql
INSERT INTO users (name, email) VALUES
('user1', 'user1@fake.com')
('user2', 'user2@fake.com');
```

A sql INSERT can also mass copy rows from one table and insert them into another. For MariaDB, that can look like this:

```sql
INSERT INTO other_table (id, name)
SELECT id, name from users WHERE email = "user1@fake.com";
```

## What are database roles and what are they used for?

Databases roles are a collection of group permissions and privileges for a database(s). These roles are usually used to manage acccess control for database users and applications. 

## What are the different types of users?

Native users - Users who have no technical knowledge of the database and depend on user-friendly applications. 

Application programmers - Users that write backend code and are familiar with embedded queriers or APIs.

Sophisticated users - Users who bypass the standard applications and directly interact with the database with query languages.

Specialized users - Users who are outside the typical database framework because they write unconvential and custom applications.

Online users - Users who interact with a database directly over a network connection. 

# Group Physical Model
![alt text](../docs/official-physical-model.png)
- [Physical Model](https://github.com/OfficeCoffee/mouseion-database/blob/main/docs/official-physical-model.png)

# Script Descriptions

All of the create table statements have the `IF NOT EXISTS` clause because it protects the tables from being overwritten and preserves dependencies such as indexes.

The IDs for the base (non-conjuction tables) are surrogate keys hence the auto incrementing attribtes. They're also unsigned because our IDs start at 1 and we do not need the negative range of a signed integer.

```sql
CREATE TABLE IF NOT EXISTS words (
    word_id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    word VARCHAR(50) NOT NULL,
    origin VARCHAR(200) NULL,
    definition VARCHAR(2000) NOT NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP

    INDEX (word)
);
```

This create statement creates the table for `words` which includes `word_id`, `word`, `origin`, `definition`, and `created_at`. The ID is a medium int to account for users storing a large amount of words. Inserted words are capped to 50 characters since it is unlikely for a word to contain more than 50 characters and for a user to want to enter such a word like that. `origin` is capped to 200 characters to account for the long length of research journal titles. `definition` is capped to 2000 to ensure users can enter proper definitions for their words. `created_at` will be the current timestamp from the user's device from when a word record is inserted into this table.

Our application is practically a personal dictionary and searching for a single word seems like a common user behavior so `word` has an index.

Words do not have a unique constraint because words can have multiple meanings so we don't want to prevent users from entering the same word, but with a different meaning. 

```sql
CREATE TABLE IF NOT EXISTS decks (
    deck_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    deck_name VARCHAR(50) NOT NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (deck_name)
);
```

This create statement creates the table for `decks` which includes `deck_id`, `deck_name`, and `created_at`. The ID is a small int to account for users creating a small amount of decks. It is unlikely for a user to create more words than decks so that's why the `deck_id` can store less potential records. `deck_name` is capped to 50 characters since it is unlikely for the name of a deck to contain more than 50 characters. `created_at` will be the current timestamp from the user's device from when a word record is inserted into this table.

`deck_name` is unique because we want to prevent people from creating duplicate decks with the same name because that can mess up searching for our application. The `UNIQUE` constraint also creates an index for deck_name.

```sql
CREATE TABLE IF NOT EXISTS deck_words (
    deck_id SMALLINT UNSIGNED NOT NULL,
    word_id MEDIUMINT UNSIGNED NOT NULL,
    PRIMARY KEY (deck_id, word_id),
    FOREIGN KEY (deck_id) REFERENCES decks(deck_id),
    FOREIGN KEY (word_id) REFERENCES words(word_id),

    INDEX(word_id)
);
```

This create statement creates the conjuction table for decks and words. The primary key is a composite key of `deck_id` and `word_id`. Since the first part of the composite key is the `deck_id`, MariaDB will group all the words by `deck_id` first then sort by `word_id`. The table includes an index for `word_id` to mirror the index created by the composite key. These two indexes make queries relating to searching for all the words belonging to a specific deck and finding all decks containing a specific word more efficient.

```sql
SELECT word_id
from deck_words;
```


