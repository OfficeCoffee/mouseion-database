# Logical Model
The purpose of a logical model is to serve as a blueprint that sits between the abstract or high-level business layout (conceptual model) and the final technical database implementation (physical model). The logical model defines how a system will be implemented without any platform-dependent jargon or restrictions. 

# Terms and Concepts
**Primary Key**: An identifier composed of a column or combination of columns that uniquely and stably refers to a row in a table.

**Foreign Key**:  A column, or combination of columns, that refers to a primary key in another table. 

**Relationship between entities**: A relationship acts as a logical connection between two entities and defines how data in one table relates to data in another table.

**Normalization**: A systematic design process that database developers use to organize tables and columns to minimize data redundancy and protect data integrity from various anomalies such as update, insertion, and deletion anomalies. 

# Logical Model Description

The logical model represents a personal dictionary application. It stores words alongside their definitions and origins. Words can be organized into decks and tags. A deck can contain multiple words A word can have multiple tags, examples, images, and audio files. The addition of examples, images, audio files, and a tagging system are part of our group's stretch goals. Decks and tags can each have a designated color. There are only a set amount of colors that the application will support. Words have a many-to-many relationship with decks, tags, images, and audio which are showcased by the junction tables between the entities. Examples have a one-to-many relationship with words.



