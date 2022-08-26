-- test folder

TRUNCATE TABLE authors RESTART IDENTITY;


INSERT INTO authors (id, author_name) VALUES ('1', 'George Orwell');
INSERT INTO authors (id, author_name) VALUES ('4', 'Bram Stoker');