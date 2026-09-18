***Terms***

**Purpose of conceptual model:** To provide a high level model of what your database should look like

**Entity**: An object or thing that that can store data

**Attribute**: A descriptive property or characteristic of an entity

**Relationship**: The connection between entities

***Description of Conceptual Model***

**Diagram key**: Everything highlighted in blue are considered stretch goals. Everything in gray are requirements for the MVP. Boxes are entities and ovels are attributes

**Dictionaries** is the entities that store all of the dictionaries which has a one to many relationship as this table can have more than one dictionary in it. 

A **Dictionary** has:
- An **id** which is the primary key,
- A **title**,
- The entity **Words** which is **many to many** as a dictionary can have multiple words and words can be in multiple dictionaries. 

The **Words** have: 
- An **id** which is the primary key,
- A **definition**,
- An **origin**,
- A **pronunciation**,
- The entity **tag** which is **many to many** as a word can have multiple tags and a tag can be in multiple words.

The **Tags** have:
- an **id** which is the primary key, 
- a **type**, 
- a **color**.
