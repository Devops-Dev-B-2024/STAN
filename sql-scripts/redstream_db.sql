USE redstream_db;

CREATE TABLE registered_users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    password VARCHAR(255) NOT NULL,
    bloodgroup VARCHAR(10) NOT NULL,
    gender VARCHAR(10) NOT NULL,
    birthdate DATE NOT NULL,
    weight(kg) INT NOT NULL,
    state VARCHAR(255) NOT NULL,
    zipcode INT NOT NULL,
    district VARCHAR(255) NOT NULL,
    area VARCHAR(255) NOT NULL,
    landmark VARCHAR(255) NOT NULL,
    donations VARCHAR(255) NOT NULL,
    received VARCHAR(255) NOT NULL
);

CREATE TABLE response_back (
    email VARCHAR(255) NOT NULL
);