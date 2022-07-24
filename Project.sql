-- user: new123
-- pass: p1234

-- DROPPING TRIGGER
DROP TRIGGER check_salary;
-- DROPPING TABLES
DROP TABLE relation;

DROP TABLE comments;

DROP TABLE post;

DROP TABLE tutor;

DROP TABLE student;


-- CREATING TABLES
CREATE TABLE tutor(
    t_id INTEGER PRIMARY KEY,
    t_name VARCHAR2(20),
    mbl_no VARCHAR2(20),
    institute VARCHAR2(20),
    addr VARCHAR2(20),
    date_of_birth date
);

CREATE TABLE student(
    s_id INTEGER PRIMARY KEY,
    s_name VARCHAR2(20),
    class VARCHAR2(20),
    addr VARCHAR2(20),
    date_of_birth date
); 

create table post (
    Post_id INTEGER primary key,
    s_id integer,
    Post_title VARCHAR2(40),
    Post_Body clob,
    salary integer,
    post_Time date,
    foreign key (s_id) references student(s_id)
);

create table comments (
    comment_id INTEGER primary key,
    post_id INTEGER,
    t_id INTEGER,
    comment_title VARCHAR(50),
    cmnt_Time date,
    foreign key (post_id) references post(post_id),
    foreign key (t_id) references tutor(t_id)
);

create table relation(
    s_id INTEGER,
    t_id INTEGER,
    PRIMARY KEY (s_id,t_id)
);

DESCRIBE tutor;
DESCRIBE student;
DESCRIBE post;
DESCRIBE comments;
DESCRIBE relation;

-- Alter Table
ALTER table tutor MODIFY mbl_no NUMBER(15);
DESCRIBE tutor;
ALTER table tutor MODIFY mbl_no VARCHAR2(20);
DESCRIBE tutor;

ALTER Table comments
    RENAME COLUMN cmnt_Time to comment_time;
DESCRIBE comments;

-- insert data
insert into tutor(t_id, t_name, mbl_no, institute, addr, date_of_birth) values
(01,'Mishu','01818123456','KUET','BSMRH','17-JUNE-1999');
insert into tutor(t_id,t_name,mbl_no,institute,addr,date_of_birth) values
(02,'Uday','01818123457','KUET','BSMRH','23-JULY-1999');
insert into tutor(t_id,t_name,mbl_no,institute,addr,date_of_birth) values
(03,'Farhan','01818123654','KUET','FHH','12-JUNE-1999');
insert into tutor(t_id,t_name,mbl_no,institute,addr,date_of_birth) values
(04,'Rafi','01348123456','KUET','FHH','15-JULY-1999');
insert into tutor(t_id,t_name,mbl_no,institute,addr,date_of_birth) values
(05,'Abir','01758123456','KUET','BSMRH','14-JUNE-1999');
insert into tutor(t_id,t_name,mbl_no,institute,addr,date_of_birth) values
(06,'Rifat','01978123456','KUET','LSH','14-JULY-1999');
insert into tutor(t_id,t_name,mbl_no,institute,addr,date_of_birth) values
(07,'Kowshik','01818323456','KUET','KAH','11-JUNE-1999');
insert into tutor(t_id,t_name,mbl_no,institute,addr,date_of_birth) values
(08,'Ashik','01918122456','KUET','BSMRH','04-JULY-1998');


insert into student(s_id,s_name,class,addr,date_of_birth) values(111,'Abul','class-9','Maniktola','01-JUNE-2005'); 
insert into student(s_id,s_name,class,addr,date_of_birth) values(112,'Babul','class-9','Raligate','02-JULY-2005'); 
insert into student(s_id,s_name,class,addr,date_of_birth) values(113,'Kabul','class-10','Doulatpur','03-JUNE-2004'); 
insert into student(s_id,s_name,class,addr,date_of_birth) values(114,'Dabul','class-10','Notun Rasta','01-JUNE-2004'); 
insert into student(s_id,s_name,class,addr,date_of_birth) values(115,'Rahim','class-11','Boyra','01-JULY-2003'); 
insert into student(s_id,s_name,class,addr,date_of_birth) values(116,'Karim','class-11','Boyra','01-JUNE-2003'); 
insert into student(s_id,s_name,class,addr,date_of_birth) values(117,'Mahim','class-12','Sonadanga','14-JULY-2002'); 
insert into student(s_id,s_name,class,addr,date_of_birth) values(118,'Fahim','class-12','Gollamari','28-JUNE-2002'); 

insert into post(Post_id,s_id,Post_title,Post_Body,salary,post_Time) 
values(1001,113,'Tutor_needed','ssc physics and Math, weekly 3 days',5000,'30-JUNE-2022');
insert into post(Post_id,s_id,Post_title,Post_Body,salary,post_Time) 
values(1002,116,'Tutor_needed','HSC 1st year Physics, weekly 3days',6000, '25-JUNE-2022');
insert into post(Post_id,s_id,Post_title,Post_Body,salary,post_Time) 
values(1003,118,'Tutor_needed','HSC 2nd year Physics, weekly 3 days',6000,'28-JUNE-2022');
insert into post(Post_id,s_id,Post_title,salary,post_Time) 
values(1006,114,'Tutor_needed',4000,'28-JUNE-2022');
insert into post(Post_id,s_id,Post_title,Post_Body,salary,post_Time) 
values(1004,117,'Tutor_needed','HSC 2nd year Chemistry, weekly 3 days', 5500, '26-JUNE-2022');
insert into post(Post_id,s_id,Post_title,Post_Body,salary,post_Time) 
values(1005,113,'Tutor_needed','ssc ict, weekly 3 days', 3500, '13-JUNE-2022');

insert into comments(comment_id,post_id,t_id,comment_title,comment_time) values(101, 1001, 02, 'interested', '01-JULY-2022');
insert into comments(comment_id,post_id,t_id,comment_title,comment_time) values(102, 1001, 04, 'interested', '06-JULY-2022');
insert into comments(comment_id,post_id,t_id,comment_title,comment_time) values(103, 1002, 02, 'interested', '08-JULY-2022');
insert into comments(comment_id,post_id,t_id,comment_title,comment_time) values(104, 1002, 05, 'interested', '03-JULY-2022');
insert into comments(comment_id,post_id,t_id,comment_title,comment_time) values(105, 1003, 02, 'interested', '16-JULY-2022');
insert into comments(comment_id,post_id,t_id,comment_title,comment_time) values(106, 1003, 08, 'interested', '12-JULY-2022');

insert into relation(s_id,t_id) values(111,01);
insert into relation(s_id,t_id) values(112,03);
insert into relation(s_id,t_id) values(113,03);
insert into relation(s_id,t_id) values(114,03);
insert into relation(s_id,t_id) values(115,07);
insert into relation(s_id,t_id) values(115,04);


--Display table
select * from tutor;
select * from student;
select * from post;
select * from comments;
select * from relation;




-- Update
UPDATE student set s_name = 'Bulbul' WHERE s_id = 114;
select * from student;

-- Distinct
SELECT DISTINCT (class) FROM student;

-- Condition 
select * from tutor WHERE addr ='BSMRH';

-- Range
SELECT t_id, t_name
FROM tutor
WHERE t_id BETWEEN 02 AND 06;

--Pattern Matching
SELECT s_id, s_name, addr
FROM student
WHERE s_name LIKE '%ul';

-- Order by
select Post_title, Post_Body from post
ORDER BY post_Time DESC;

-- Group by
SELECT s_id, COUNT(post_id)
FROM post 
GROUP BY s_id;

-- Subquery
SELECT addr
FROM student
WHERE s_name IN (	SELECT s_name 
		FROM student 
		WHERE class='class-9');

SELECT r.t_id
FROM relation r
WHERE r.s_id IN (select s.s_id
                from student s, post p
                WHERE s.s_id = p.s_id);

-- Union all
select t_id from comments
Union all
SELECT r.t_id
FROM relation r
WHERE r.s_id IN (select s.s_id
                from student s, post p
                WHERE s.s_id = p.s_id);


-- Union
select t_id from comments
Union
SELECT r.t_id
FROM relation r
WHERE r.s_id IN (select s.s_id
                from student s, post p
                WHERE s.s_id = p.s_id);

-- Intersect
select t_id from comments
Intersect
SELECT r.t_id
FROM relation r
WHERE r.s_id IN (select s.s_id
                from student s, post p
                WHERE s.s_id = p.s_id);

-- Minus
select t_id from comments
Minus
SELECT r.t_id
FROM relation r
WHERE r.s_id IN (select s.s_id
                from student s, post p
                WHERE s.s_id = p.s_id);





-- JOIN

select s.s_name
from student s, post p
WHERE s.s_id = p.s_id;

select s.s_name, p.Post_Body
from student s JOIN post p
ON s.s_id = p.s_id;

-- NATURAL JOIN
select s.s_name, p.Post_Body
from student s NATURAL JOIN post p;

-- CROSS JOIN
select s.s_name, p.Post_Body
from student s CROSS JOIN post p;

-- INNER JOIN
select s.s_name, p.Post_Body
from student s INNER JOIN post p
ON s.s_id = p.s_id;

-- OUTER JOIN
select s.s_name, p.Post_Body
from student s LEFT OUTER JOIN post p
ON s.s_id = p.s_id;

select s.s_name, p.Post_Body
from student s RIGHT OUTER JOIN post p
ON s.s_id = p.s_id;

-- SELF JOIN
select p.Post_title post, s.s_id student_id
from post p JOIN post s
ON p.s_id = s.s_id;


-- PL/SQL
SET SERVEROUTPUT ON
DECLARE
   max_tid  integer;
BEGIN
   SELECT MAX(t_id)  INTO max_tid 
   FROM tutor;
   DBMS_OUTPUT.PUT_LINE('The maximum id is : ' || max_tid);
 END;
/

SET SERVEROUTPUT ON
DECLARE
    Total_salary      integer;
    id integer:=1004;
    Snacks_cost integer;
	 
BEGIN
    SELECT salary  INTO Total_salary
    FROM post
    WHERE id = post_id;

    IF Total_salary >= 6000  THEN
                Snacks_cost := 0;
    ELSIF Total_salary >= 5000 and Total_salary <6000   THEN
               Snacks_cost :=  Total_salary*0.05;
    ELSIF Total_salary >= 4000 and Total_salary <5000 THEN
                Snacks_cost :=  Total_salary*0.1;
    ELSE
	Snacks_cost :=  Total_salary*0.15; 
    END IF;

DBMS_OUTPUT.PUT_LINE ('As the salary is '||Total_salary||'k. So, the snack cost will be'|| ROUND(Snacks_cost,2) || 'tk');
EXCEPTION
         WHEN others THEN
	      DBMS_OUTPUT.PUT_LINE (SQLERRM);
END;
/

-- LOOP
SET SERVEROUTPUT ON
DECLARE
 CURSOR Student_cur IS SELECT s_id, s_name FROM student;
 student_record Student_cur%ROWTYPE;
BEGIN
OPEN Student_cur;
 LOOP
 FETCH Student_cur INTO student_record;
 EXIT WHEN Student_cur%ROWCOUNT > 6;
 DBMS_OUTPUT.PUT_LINE ('ID : ' || student_record.s_id || ' ' || 
student_record.s_name);
 END LOOP;
 CLOSE Student_cur;
 END;
 /

-- PROCEDURES
SET SERVEROUTPUT ON;
CREATE OR REPLACE PROCEDURE getTutor IS 
 TutorID tutor.t_id%type;
 TutorName tutor.t_name%type;
BEGIN
 TutorID := 03;
 SELECT t_name INTO TutorName
 FROM tutor
 WHERE t_id = TutorID;
 DBMS_OUTPUT.PUT_LINE('Name: '|| TutorName);
END;
/
SHOW ERRORS;

BEGIN
 getTutor;
END;
/

-- PARAMETERIZED PROCEDURE
CREATE OR REPLACE PROCEDURE add_relation (
 StudentID relation.s_id%TYPE,
 TutorID relation.t_id%TYPE) IS
BEGIN
 INSERT INTO relation(s_id, t_id)
 VALUES (StudentID, TutorID);
 --COMMIT;
END add_relation;
/

BEGIN
    add_relation(114,08);
END;
/


-- FUNCTION
CREATE OR REPLACE FUNCTION avg_salary RETURN NUMBER IS
 avg_sal post.salary%type;
BEGIN
 SELECT AVG(salary) INTO avg_sal
 FROM post;
 RETURN avg_sal;
END;
/

SET SERVEROUTPUT ON
BEGIN
dbms_output.put_line('Average Salary: ' || avg_salary);
END;
/

CREATE OR REPLACE FUNCTION total_salary RETURN NUMBER IS
 tot_sal post.salary%type;
BEGIN
 SELECT SUM(salary) INTO tot_sal
 FROM post;
 RETURN tot_sal;
END;
/

SET SERVEROUTPUT ON
BEGIN
dbms_output.put_line('Total Salary: ' || total_salary);
END;
/

-- TRIGGER
CREATE OR REPLACE TRIGGER check_salary BEFORE INSERT OR UPDATE ON 
post
FOR EACH ROW
DECLARE
 c_min constant number := 2000;
BEGIN
 IF :new.salary < c_min THEN
 RAISE_APPLICATION_ERROR(-20000,'Salary is too small');
END IF;
END;
/

insert into post(Post_id,s_id,Post_title,Post_Body,salary,post_Time) 
values(1006,112,'Tutor_needed','ssc ict, weekly 3 days', 1500, '16-JUNE-2022');

-- INSERT AND TRANSACTION MANAGEMENT
insert into relation(s_id,t_id) values(114,01);
SAVEPOINT rel_sp1;
insert into relation(s_id,t_id) values(115,02);
SAVEPOINT rel_sp2;
insert into relation(s_id,t_id) values(115,03);
SAVEPOINT rel_sp3;

select * from relation;

ROLLBACK to rel_sp2;

select * from relation;

ROLLBACK to rel_sp1;

select * from relation;

--DATE
 
select t_name, CAST((sysdate-date_of_birth)/365 as int) as AGE
from tutor;

select MAX(sysdate-date_of_birth) as AGE
from tutor;

select DISTINCT(s_id), LAST_DAY(post_Time) as Last_post 
from post
WHERE s_id=113;