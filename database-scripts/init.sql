USE mousiondb

-- Create tables
-- COLNAME datatype usage (PK, NN, N) extra (auto_increment, unique)

-- words

CREATE TABLE words (
    word_id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    word VARCHAR(50) NOT NULL,
    origin VARCHAR(200) NULL,
    definition VARCHAR(200) NOT NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- decks

CREATE TABLE decks (
    deck_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    deck_name VARCHAR(50) NOT NULL UNIQUE,
    created_at DATETIME NOT NULL
);

-- junction table

CREATE TABLE deck_word (
    deck_id SMALLINT UNSIGNED NOT NULL,
    word_id MEDIUMINT UNSIGNED NOT NULL,
    PRIMARY KEY (deck_id, word_id),
    FOREIGN KEY (deck_id) REFERENCES decks(deck_id),
    FOREIGN KEY (word_id) REFERENCES words(word_id)
);
