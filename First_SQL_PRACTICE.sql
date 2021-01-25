CREATE TABLE USERS
(
   ID   SERIAL PRIMARY KEY,
   FIRSTNAME VARCHAR(100),
   LASTNAME VARCHAR(100)
);

CREATE TABLE POSTS
(
ID SERIAL PRIMARY KEY,
USER_ID BIGINT UNSIGNED NOT NULL,
BODY VARCHAR(1024),
FOREIGN KEY (USER_ID) REFERENCES USERS(ID)
);

SELECT * FROM USERS;

INSERT INTO USERS (FIRSTNAME, LASTNAME)
VALUES ("John", "Smith");

COMMIT;

INSERT INTO POSTS(USER_ID, BODY)
VALUES (1, "This is my first pos on this forum!");

COMMIT;

SELECT * FROM POSTS;

INSERT INTO USERS (FIRSTNAME, LASTNAME)
VALUES ("Zachary", "Lee");

INSERT INTO USERS (FIRSTNAME, LASTNAME)
VALUES ("Stephanie", "Kovalsky");

INSERT INTO USERS (FIRSTNAME, LASTNAME)
VALUES ("Thomas", "Landgren");

INSERT INTO USERS (FIRSTNAME, LASTNAME)
VALUES ("John", "Thomson");

INSERT INTO POSTS (USER_ID, BODY)
VALUES (2, "This is my first post too!");

INSERT INTO POSTS (USER_ID, BODY)
VALUES (2, "How are you?");

INSERT INTO POSTS (USER_ID, BODY)
VALUES (1, "Quite good, thanks bro!");

INSERT INTO POSTS (USER_ID, BODY)
VALUES (4, "Yo all! Here is Thomas!");

COMMIT;

CREATE TABLE ISSUESLISTS
(
ID SERIAL PRIMARY KEY,
NAME VARCHAR (50) UNIQUE
);

CREATE TABLE ISSUES
(
ID SERIAL PRIMARY KEY,
ISSUESLIST_ID BIGINT UNSIGNED NOT NULL,
USER_ID_ASSIGNEDTO BIGINT UNSIGNED NOT NULL,
SUMMARY VARCHAR(50),
DESCRIPTION VARCHAR(1024),
FOREIGN KEY (ISSUESLIST_ID) REFERENCES ISSUESLISTS(ID),
FOREIGN KEY (USER_ID_ASSIGNEDTO) REFERENCES USERS(ID)
);

INSERT INTO ISSUESLISTS (NAME)
VALUES ("ToDo");

INSERT INTO ISSUESLISTS (NAME)
VALUES ("InProgress");

INSERT INTO ISSUESLISTS (NAME)
VALUES ("Done");

INSERT INTO ISSUES (ISSUESLIST_ID, USER_ID_ASSIGNEDTO, SUMMARY, DESCRIPTION)
VALUES(1, 2, "1", "1");

INSERT INTO ISSUES (ISSUESLIST_ID, USER_ID_ASSIGNEDTO, SUMMARY, DESCRIPTION)
VALUES(1, 1, "2", "2");

INSERT INTO ISSUES (ISSUESLIST_ID, USER_ID_ASSIGNEDTO, SUMMARY, DESCRIPTION)
VALUES(1, 3, "3", "3");

INSERT INTO ISSUES (ISSUESLIST_ID, USER_ID_ASSIGNEDTO, SUMMARY, DESCRIPTION)
VALUES(1, 1, "4", "4");

INSERT INTO ISSUES (ISSUESLIST_ID, USER_ID_ASSIGNEDTO, SUMMARY, DESCRIPTION)
VALUES(1, 2, "5", "5");

INSERT INTO ISSUES (ISSUESLIST_ID, USER_ID_ASSIGNEDTO, SUMMARY, DESCRIPTION)
VALUES(2, 1, "6", "6");

INSERT INTO ISSUES (ISSUESLIST_ID, USER_ID_ASSIGNEDTO, SUMMARY, DESCRIPTION)
VALUES(2, 2, "7", "7");

INSERT INTO ISSUES (ISSUESLIST_ID, USER_ID_ASSIGNEDTO, SUMMARY, DESCRIPTION)
VALUES(2, 3, "8", "8");

INSERT INTO ISSUES (ISSUESLIST_ID, USER_ID_ASSIGNEDTO, SUMMARY, DESCRIPTION)
VALUES(2, 1, "9", "9");

INSERT INTO ISSUES (ISSUESLIST_ID, USER_ID_ASSIGNEDTO, SUMMARY, DESCRIPTION)
VALUES(2, 2, "10", "10");

INSERT INTO ISSUES (ISSUESLIST_ID, USER_ID_ASSIGNEDTO, SUMMARY, DESCRIPTION)
VALUES(3, 1, "11", "11");

INSERT INTO ISSUES (ISSUESLIST_ID, USER_ID_ASSIGNEDTO, SUMMARY, DESCRIPTION)
VALUES(3, 2, "12", "12");

INSERT INTO ISSUES (ISSUESLIST_ID, USER_ID_ASSIGNEDTO, SUMMARY, DESCRIPTION)
VALUES(3, 3, "13", "13");

INSERT INTO ISSUES (ISSUESLIST_ID, USER_ID_ASSIGNEDTO, SUMMARY, DESCRIPTION)
VALUES(3, 3, "14", "14");

INSERT INTO ISSUES (ISSUESLIST_ID, USER_ID_ASSIGNEDTO, SUMMARY, DESCRIPTION)
VALUES(3, 3, "15", "15");

COMMIT;

SELECT * FROM ISSUES;