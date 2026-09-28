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
CREATE TABLE IF NOT EXISTS `words` (
	`word_id` MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT,
	`word` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_uca1400_ai_ci',
	`origin` VARCHAR(200) NULL DEFAULT NULL COLLATE 'utf8mb4_uca1400_ai_ci',
	`definition` VARCHAR(2000) NOT NULL COLLATE 'utf8mb4_uca1400_ai_ci',
	`created_at` DATETIME NOT NULL,
	PRIMARY KEY (`word_id`) USING BTREE
)
```

**Deck-Word Table**
```sql

```

**Decks**
```sql

```
