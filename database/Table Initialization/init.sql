USE mousiondb

-- Create tables
-- COLNAME datatype usage (PK, NN, N) extra (auto_increment, unique)

-- words

CREATE TABLE IF NOT EXISTS words (
    word_id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    word VARCHAR(50) NOT NULL,
    origin VARCHAR(200) NULL,
    definition VARCHAR(200) NOT NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- decks

CREATE TABLE IF NOT EXISTS decks (
    deck_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    deck_name VARCHAR(50) NOT NULL UNIQUE,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- junction table

CREATE TABLE IF NOT EXISTS deck_word (
    deck_id SMALLINT UNSIGNED NOT NULL,
    word_id MEDIUMINT UNSIGNED NOT NULL,
    PRIMARY KEY (deck_id, word_id),
    FOREIGN KEY (deck_id) REFERENCES decks(deck_id),
    FOREIGN KEY (word_id) REFERENCES words(word_id)
);

-- insert statements

-- insert statements to words table
INSERT INTO words (word, origin, definition) 
VALUES ('Gaiety', 'Getting lunch with Sara 09/16', 'The state of being joyous, vivacious, or cheerful.');

INSERT INTO words (word, definition) 
VALUES ('Harangue', 'A long, passionate, and vehement speech, especially one delivered before a public gathering.');

INSERT INTO words (word, origin, definition) 
VALUES ('Travail', 'From book title', 'Pain, anguish or suffering resulting from mental or physical hardship.');

INSERT INTO words (word, origin, definition) 
VALUES ('Askance', 'From youtube comment', 'With suspicion, mistrust, or disapproval.');

-- insert statements to deck table
INSERT INTO decks (deck_name) 
VALUES ('Cool words');

-- insert statements to deck_word
INSERT INTO deck_word (deck_id, word_id)
VALUES ('1', '1');

INSERT INTO deck_word (deck_id, word_id)
VALUES ('1', '2');

INSERT INTO deck_word (deck_id, word_id)
VALUES ('1', '3');

INSERT INTO deck_word (deck_id, word_id)
VALUES ('1', '4');