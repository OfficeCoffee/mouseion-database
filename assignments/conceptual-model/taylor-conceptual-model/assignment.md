# Conceptual Model

The purpose of a conceptual model is to show a high level blueprint of what data a application or system needs and how that data is related.

## Terms

Entity: A uniquely identifiable object, such as a person or concept, in which data is stored.

Attribute: The characteristics that describe an entity. 

Relationship: The logical link between two or more entities. Relationships are defined by being, zero-to-one, one-to-one, zero-to-many, one-to-many, or many-to-many. For instance, a student can take multiple courses and a course can have multiple students so that is a many-to-many relationship between a student entity and a course entity.

# Describing Mouseion Conceptual Model

My conceptual model includes our MVP entities and our stretch goal entities. At minimum, we want an app that can have decks that can store words. Optionally, words can contain images, audio, examples, and tags.


| Entity | Definition | Relationship |
| -------- | -------- | -------- |
| words | The word itself | Can have zero to many images, audio, examples, and tags. Can also belong to multiple decks, but it must belong to one deck. |
| decks | Individual decks of words | May contain zero or more words (N:N) |
| images | A displayed image belonging to a word | Can be associated with multiple words (N:N). An image must belong to at least one word. |
| audio | Audio file belonging to a word | Can be associated with multiple words (N:N). Audio must belong to at least one word. |
| examples | A clear statement that illustrates the usages of a word | A word can have many examples, but an example is unique to a word (N:1) |
| tags | An identifier for a word | A word can have multiple tags and tags can belong to multiple words (N:N) |

Notes:

I defined images and audio as optionally many-to-many because it could be possible for the user to reuse images for multiple words. I'm not sure if the frequency of that potential behavior would justify that relationship. A better relationship might be one-to-many. That would prevent additional junction tables if the relationships were one-to-many.

The image, audio, example, and tag entities only have two attributes (id and the describing attribute) because we're talking about things abstractly. The only additional attributes I can think to add are file types and URLs and I don't know if those technical details belong in a conceptual model or not.

Decks only have two attributes because a deck, at minimum, needs an id and a name.