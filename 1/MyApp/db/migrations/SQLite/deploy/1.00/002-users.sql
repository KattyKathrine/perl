BEGIN TRANSACTION;

INSERT INTO contact ("name", "number", "email")
VALUES ("Katty", "+7-111-111-11-11", "1@exemple.com"),
       ("Mila", "+7-222-222-22-22", "2@example.com");

COMMIT; 
