#CURDATE()
#CURTIME()
#NOW()

SELECT CURDATE();

SELECT CURTIME();

SELECT NOW();

INSERT INTO people(name, birthdate, birthtime, birthdt)
VALUES("Microwave", CURDATE(), CURTIME(), NOW());