--SQL SIMPLES

--tous les students
$sql = "SELECT*\n"

    . "FROM student";

-- select projects
SELECT*
 FROM project;


-- student id=2
SELECT * 
FROM student 
WHERE id='2' ;

-- student id !=2
SELECT * 
FROM student 
WHERE id!='2' ;


-- project id= 3
SELECT*
 FROM project
 WHERE id='3' ;

 -- project id=! 3
 SELECT * 
 FROM project 
 WHERE id!='3' ;

 -- email student = .uk
 SELECT * 
 FROM student 
 WHERE email LIKE '%.uk%' ;

 -- creation_date < 2018-07-01
 SELECT * 
 FROM student SELECT* FROM project where client_name NOT LIKE '%another%' 
 WHERE creation_date < '2018-07-01' ;

 -- description NOT LIKE'another'
 SELECT* 
 FROM project 
 where client_name NOT LIKE '%another%'; 

 -- start_date >= 2018-04-01
 SELECT * 
 FROM project
  WHERE start_date >= '2018-04-01' ;

  -- student project id
  SELECT*
FROM student
LEFT OUTER JOIN project ON student.project_id = project.id
WHERE project.id ;


  -- student project NULL 
  SELECT*
FROM student
LEFT OUTER JOIN project ON student.project_id = project.id
WHERE project.id IS NULL;


-- SQL Multiples

-- Student email '.com' OR création_date < '2018-07-01'
SELECT*
FROM student
WHERE email = '%.com%'
	OR creation_date < ' 2018-07-01';


-- Student email '.com' AND création_date < '2018-07-01"



-- student creation_date > '2018-01-01' and < '2018-07-01'

SELECT creation_date
FROM student
WHERE creation_date > '2018-01-01'
	AND creation_date < '2018-07-01';

-- Projects NOT LIKE 'another' OR  creation_date < '2018-03-01'
SELECT*
FROM project
WHERE client_name NOT LIKE 'another'
	OR start_date >= '2018-04-01';

-- Projects NOT LIKE 'another' AND  creation_date < '2018-03-01'
SELECT*
FROM project
WHERE client_name NOT LIKE 'another'
	AND start_date >= '2018-04-01';

-- Projects creation_date >= '2018-01-01' AND creation_date < '2018-03-01'
SELECT*
FROM project
WHERE start_date >= '2018-01-01'
	AND start_date < '2018-03-01';

-- Students email '.com' AND creation_date < '2018-07-01'




