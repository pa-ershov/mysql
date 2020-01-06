USE gos;


CREATE OR REPLACE VIEW users_all AS
SELECT
u.first_name AS first_name,
p.sex AS sex,
p.birthday AS birthday
FROM
users AS u
JOIN
profiles AS p
ON
u.id = p.id;


CREATE OR REPLACE VIEW users_d AS
SELECT
u.first_name AS user,
u.phone AS phone,
c.child_firstname AS child,
c.birth_certificate AS certificate
FROM
users AS u
JOIN
children AS c
ON
u.id = c.id;


SELECT * FROM users_all;
SELECT * FROM users_d;

