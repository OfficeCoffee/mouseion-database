***Terms***

**Purpose of conceptual model:** To provide a high level model of what your database should look like

**Entity**: An object or thing that that can store data

**Attribute**: A descriptive property or characteristic of an entity

**Relationship**: The connection between entities

***Description of Conceptual Model***

**Diagram key**: Everything highlighted in blue are considered stretch goals. Everything in gray are requirements for the MVP. Boxes are entities and ovels are attributes

***Attributes***:

A **Dictionary** has:
- An **id** which is the primary key,
- A **title**,

The **Words** have: 
- An **id** which is the primary key,
- A **definition**,
- An **origin**,
- A **pronunciation**,

The **Tags** have:
- an **id** which is the primary key, 
- a **type**, 
- a **color**.

***Relations***:

Dictionaries -> (1-M) Dictionary ->(M-M) Words ->(M-M) Tags

**Dictionaries**: The entity that stores all of the entities dictionaries, which has a **one to many** relationship as dictionary can have more than one dictionaries in it. 

**Dictionary**: The entity that stores all of the entities Words, which has a **many to many** relationship as a dictionary can have multiple words and words can be in multiple dictionaries. 

**Words**: The entity that stores all of the entities tag which is **many to many** as a word can have multiple tags and a tag can be in multiple words.
