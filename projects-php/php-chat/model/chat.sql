-- TODO: MOVE TO DB CLASS
CREATE TABLE CHAT(
    ID INT PRIMARY KEY AUTO_INCREMENT,
    NAME VARCHAR(255) NOT NULL,
    MESSAGE VARCHAR(255) NOT NULL,
    DATE TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);