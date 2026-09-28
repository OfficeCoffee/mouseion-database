# **Questions:**
**What information should be included in a create table statement**: 
**What are database constraints and what are the benefits of them**: 
**Ways to insert data**: 
**What are database roles and what are they used for**: 
**Different type of users**: 

# **Physical Model:**

# **Database:**

**Words Table**
```sql
CREATE TABLE IF NOT EXISTS words (
    -> word_id mediumint unsigned primary key auto_increment,
    -> word varchar(50) not null,
    -> origin varchar(200),
    -> definition varchar(2000) not null,
    -> created_at datetime not null);
```

**Deck-Word Table**
```sql

```

**Decks**
```sql

```
