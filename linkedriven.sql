--EXERCICIO 1

SELECT users.id, users.name, cities.name AS city FROM users JOIN cities ON cities.id = users."cityId" WHERE cities.name LIKE 'Rio de Janeiro';

--EXERCICIO 2

SELECT t1.id, users.name AS writer, t2.name AS recipient, t1.message FROM users JOIN testimonials t1 ON t1."writerId" = users.id JOIN users t2 ON t2.id = t1."recipientId" ORDER BY t1.id;

--EXERCICIO 3

SELECT users.id AS id, users.name AS name, courses.name AS course, schools.name AS schools, educations."endDate" As "endDate" FROM educations JOIN users ON users.id = educations."userId" JOIN schools ON schools.id = educations."schoolId" JOIN courses ON courses.id = educations."courseId" WHERE users.id = 30 ORDER BY id;

--EXERCICIO 4

SELECT users.id AS id, users.name AS name, roles.name AS role, companies.name AS company, experiences."startDate" AS "startDate" FROM experiences JOIN users ON users.id = experiences."userId" JOIN roles ON roles.id = experiences."roleId" JOIN companies ON companies.id = experiences."companyId" WHERE users.id = 50 AND experiences."endDate" IS null;
