CREATE TABLE files (
    id SERIAL,
    folder_id INT,
    owner_id INT NOT NULL,
    name VARCHAR(200) NOT NULL,
    type VARCHAR(50) NOT NULL,
    path VARCHAR(250) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted bool NOT NULL DEFAULT false,

    PRIMARY KEY(id),
    CONSTRAINT fk_parent
        FOREIGN KEY (folder_id) REFERENCES folders(id),

    CONSTRAINT fk_owner
        FOREIGN KEY (owner_id) REFERENCES users(id)
)