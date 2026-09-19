***Terms***

**Purpose of a logical model**: To provide an in-depth roadmap of the intended database

**Primary Key**: A unique identifier for the table

**Foreign Key**: A link to a primary key in another table

**Relationships between entities**: How the entities connect with each other

**Normalization**: A systematic design process used to organize tables and columns. Used to help eliminate redundancies

***Description of Logical Model***

**Diagram key**: Everything highlighted in blue are considered stretch goals. Everything in gray are requirements for the MVP. 

***Tables***:

Words -> Decks
Words -> Images
Words -> Audio
Words -> Examples
Words -> Tags

**Words**:
- **id**: Primary key, int
- **word**: String
- **origin**: String
- **definition**: String

**Decks**:
- **id**: Primary key, int
- **name**: String

**Images**:
- **id**: Primary key, int
- **image**: String

**Audio**:
- **id**: Primary key, int
- **audio**: String

**Examples**:
- **id**: Primary key, int
- **example**: String

**Tags**:
- **id**: Primary key, int
- **name**: String
