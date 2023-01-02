-- 1672670319 UP Users

CREATE TABLE users (
   id uuid PRIMARY KEY,
   email varchar(64) NOT NULL,
   company varchar(64) NOT NULL,
   name varchar(64) NOT NULL,
   createdDate timestamp NOT NULL,
   lastModifiedDate timestamp NOT NULL
);

INSERT INTO users (id, email, company, name,createdDate, lastModifiedDate) VALUES ('42dee8f4-88fc-11ed-a1eb-0242ac120002', 'Johny@gmail.com', 'Seros', 'Johny', clock_timestamp(),clock_timestamp());
INSERT INTO users (id, email, company, name,createdDate, lastModifiedDate) VALUES ('bbe29c80-890d-11ed-a1eb-0242ac120002', 'Mike@gmail.com', 'Keep', 'Mike', clock_timestamp(), clock_timestamp());
INSERT INTO users (id, email, company, name,createdDate, lastModifiedDate) VALUES ('25acef46-8911-11ed-a1eb-0242ac120002', 'Tom@gmail.com', 'Konami', 'Tom', clock_timestamp(), clock_timestamp());
INSERT INTO users (id, email, company, name,createdDate, lastModifiedDate) VALUES ('ead47c3d-043e-4d71-99c6-a379383e1fb0', 'Will@gmail.com', 'Google', 'Will', clock_timestamp(), clock_timestamp());
INSERT INTO users (id, email, company, name,createdDate, lastModifiedDate) VALUES ('386c15d8-8ad0-11ed-a1eb-0242ac120002', 'Smith@gmail.com', 'Apple', 'Smith', clock_timestamp(), clock_timestamp());

COPY (SELECT json_agg(row_to_json(users)) :: text FROM users) to 'C:\Users\public\Documents\exportToMongo\users.json';