## Questions:

### What is a SQL query?
 - A SQL query is a request for specific information from a database.
### Describe the parts of a SELECT statement:
 - Parts of a select statement include:
   - SELECT: What columns are being accessed
   - FROM: What table is being accessed
   - JOIN: What table is being put aside another
   - ON: What index or PK is being used select specific information
   - WHERE: What condition does the data need to meet
   - GROUP BY: How to order the data (usually by a specific column)
   - HAVING: What condition the ordered data needs to meet
   - LIMIT: Limits the amount of rows displayed by a specific amount
### Describe how to filter a query:
 - A query can be filtered by various means including meeting a specific condition (WHERE order_date >= 2023-1-1), limiting the amount of rows displayed (LIMIT 10), or sorted by a specific column (GROUP BY id).
### What are database indexes and what are the benefits of them?
 - Indexes are a type of data structure used to find values in a specific column. They benefit the database by decreasing the amount of time required for searches. Indexes have the draw back of increasing the time needed to update a database.

## Group Physical model link:
https://github.com/OfficeCoffee/mouseion-database/blob/main/docs/official-physical-model.png

## SQL Queries:

```
-- Edit word query
UPDATE words SET word = ?, origin = ?, definition = ? WHERE word_id = ?; -- User input?

-- Add word query
INSERT INTO words (word, origin, definition) VALUES (?, ?, ?); -- User input?

-- Add deck query
INSERT INTO decks (deck_name) VALUES (?); -- User input?

-- View all words query
SELECT word, definition FROM words ORDER BY word;

-- View all decks query
SELECT deck_name FROM decks;

-- Delete word query
DELETE FROM words WHERE word_id = ?; -- User input?

-- Delete deck query
DELETE FROM decks WHERE deck_id = ?; -- User input?

-- Word entry query
INSERT INTO words (word, origin, definition) VALUES (?, ?, ?); -- User input?

-- Deck entry query
INSERT INTO decks (deck_name) VALUES (?); -- User input?
```

## Description:

#### Edit word query:
 - Sets word, definition, and origin to a given user input. User is assumed to have clicked on the word and the word_id will be used to locate it in the database

#### Add word query:
 - Adds new column into words table based on user input

#### Add deck query:
 - Adds new deck into decks table based on user input

#### View all words query:
 - Returns all word columns from words table

#### View all decks query:
 - Returns all deck_name columns from decks table

#### Delete word query:
 - Deletes column from words table. User is assumed to have clicked on the word and the word_id will be used to locate it in the database

#### Delete deck query:
 - Deletes column from words table. User is assumed to have clicked on the deck and the deck_id will be used to locate it in the database

#### Word entry query
 - A new column is inserted into the words table based on user input. 

#### Deck entry query
 - A new column is inserted into the decks table based on user input. 
