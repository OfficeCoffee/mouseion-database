# **How will the user be able to see all of the words they created?**
```sql
SELECT word, origin, definition FROM words ORDER BY word;
```
**Description**: Gets all words with origin and definition from database. Orders them alphabetically.

**Solution Explanation**: This query will be used in our 'view all' page. This is needed for the user to be able to see all the words they created.

# **How will the user be able to find a specific word they created?**
```sql
SELECT word, origin, definition FROM words WHERE word = 'example';
```
**Description**: Gets a specific word with its origin and definition from the database.

**Solution Explanation**: This query will be used when they search for a word from the search bar. This is needed so the user can find a word from their list.

# **How will the user be able to find their most recent words?**
```sql
SELECT word, origin, definition, created_at FROM words ORDER BY created_at DESC LIMIT 10;
```
**Description**: Gets the 10 most recently added words from the database with their origin and definition

**Solution Explanation**: This query will be used in our dashboard. This is needed so the user can see the top ten most recent words they created.
