***Terms***

**Purpose of conceptual model:** To provide a high level model of what your database should look like

**Entity**: An object or thing that that can store data

**Attribute**: A descriptive property or characteristic of an entity

**Relationship**: The connection between entities

***Description of Conceptual Model***

**Diagram key**: Everything highlighted in blue are considered stretch goals. Everything in gray are requirements for the MVP. Boxes are entities and ovels are attributes

**Dictionaries** is the entities that store all of the dictionaries which has a one to many relationship as this table can have more than one dictionary in it. 

A **Dictionary** has:
- An **id** which is **one to one** as it is the primary key,
- A **title** which is **many to one** as a dictionary can not have multiple names nor can a title have multiple dictionaries,
- A **list of words** which is **many to many** as a dictionary can have multiple words and words can be in multiple dictionaries. 

The **Words** have: 
- An **id** which is **one to one** as it is the primary key,
- A **definition** which is **one to one** as a word can not have multiple definitions nor can a definition be in multiple words,
- An **origin** which is **one to one** as a word can not have multiple origins nor can a origin be in multiple words,
- A **pronunciation** which is **one to one** as a word can not have multiple pronunciations nor can a pronunciation be in multiple words,
- A **tag** which is **many to many** as a word can have multiple tags and a tag can be in multiple words.

The **Tags** have:
- an **id** which is **one to one** as it is the primary key, 
- a **type** which is **one to one** as a tag can not have multiple types nor can a type be in multiple tags, 
- a **color** **many to many** as a tag can have multiple colors and colors can be in multiple tags.
