# **Questions:**

**What is a SQL query**: A request of some kind made in a Structured Query Language that tells the database to do something. Ex: Search, insert, update, delete ect.

**Describe the parts of a SELECT statement**: SELECT (what columns you are trying to find) FROM (what table is it from) [WHERE (filter) ORDER BY (how to sort it) LIMIT (how many are allowed)] (info in [] is optional)

**Describe how to filter a query**: To filter a query you need to specify what filter you want in the optional WHERE section. Ex: If you have a column of id's and you only want the first five you can SELECT id FROM table WHERE id < 6;

**What are database indexes and what are the benefits of them**: It is a numbering system that assigns each item a number sequentially. It allows for easy and fast retravel with a unique id.

# **GROUP Physical Model:**

![alt text](../docs/official-physical-model.png)

# **GROUP Initial Scripts:**

```sql
USE mousiondb

-- Create tables
-- COLNAME datatype usage (PK, NN, N) extra (auto_increment, unique)

-- words

CREATE TABLE words (
    word_id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    word VARCHAR(50) NOT NULL,
    origin VARCHAR(200) NULL,
    definition VARCHAR(200) NOT NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- decks

CREATE TABLE decks (
    deck_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    deck_name VARCHAR(50) NOT NULL UNIQUE,
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

# **SQL Queries:**

*Note: In our MVP we only really allow one deck*

```sql
SELECT * FROM words WHERE word = ?;
```
**Description**: Selects all of the words from the table words that is the users input.

```sql
SELECT * FROM words;
```
**Description**: Selects all of the words in the deck.

```sql
SELECT * FROM words ORDER BY created_at DESC LIMIT 10;
```
**Description**: Selects the 10 most recent words.

```sql
INSERT INTO words (word, origin, definition) VALUES (?, ?, ?);
```
**Description**: Inserts a word the user puts in. Does not need word_id as it is automatically incremented or created_at as it is automatically generated.

```sql
UPDATE words SET word = ?, origin = ?, description = ? WHERE word_id = ?;
```
**Description**: Edit a given word.

```sql
DELETE FROM deck_word WHERE word_id = ?;
DELETE FROM words WHERE word_id = ?;
```
**Description**: Deletes a word at a given id. Has to first delete it from deck_word before words as it is a foreign key.
