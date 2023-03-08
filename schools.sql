DROP TABLE IF EXISTS districts CASCADE;
DROP TABLE IF EXISTS ethnicities CASCADE;
DROP TABLE IF EXISTS feeders CASCADE;
DROP TABLE IF EXISTS status CASCADE;
DROP TABLE IF EXISTS graddate CASCADE;
DROP TABLE IF EXISTS programstart CASCADE;
DROP TABLE IF EXISTS programend CASCADE;
DROP TABLE IF EXISTS enrolledsemester CASCADE;
DROP TABLE IF EXISTS courses CASCADE;
DROP TABLE IF EXISTS grades CASCADE;

CREATE TABLE districts(
    district_id int PRIMARY KEY,
    district text NOT NULL
);

\COPY districts(district_id, district) FROM ‘district.csv’, DELIMITER ‘,’ HEADER;

CREATE TABLE ethnicities(
    ethnicity_id serial PRIMARY KEY,
    ethnicity text NOT NULL
);

\COPY ethnicities(ethnicity_id, ethnicity) FROM ‘ethnicity.csv’ DELIMITER ‘,’ HEADER;

CREATE TABLE feeders(
    feeder_id serial PRIMARY KEY,
    feeder text NOT NULL
);

\COPY feeders(feeder_id, feeder) FROM ‘feeder.csv’, DELIMITER ‘,’ HEADER;

CREATE TABLE status(
    status_id serial PRIMARY KEY,
    status text NOT NULL
);

\COPY status(status) FROM ‘status.csv’, DELIMITER ‘,’ HEADER;


CREATE TABLE graddate(
    grad_id serial PRIMARY KEY,
    graddate TIME NOT NULL
);

\COPY graddate(graddate) FROM ‘graddate.csv’, DELIMITER ‘,’ HEADER;


CREATE TABLE programstart(
    start_id serial PRIMARY KEY,
    program_start TIME NOT NULL
);

\COPY programstart(program_start) FROM ‘programstart.csv’, DELIMITER ‘,’ HEADER;

CREATE TABLE programend(
    end_id serial PRIMARY KEY,
    program_end TIME NOT NULL
);

\COPY programend(program_end) FROM ‘programend.csv’, DELIMITER ‘,’ HEADER;

CREATE TABLE enrolledsemester(
    enroll_id serial PRIMARY KEY,
    enroll_semester TIME NOT NULL
);

\COPY enrolledsemester(enroll_semester) FROM ‘enrolledsemester.csv’, DELIMITER ‘,’ HEADER;

CREATE TABLE courses(
    course_id serial PRIMARY KEY,
    course_code text NOT NULL,
    course_title text NOT NULL,
    course_credit int NOT NULL
);

\COPY courses(course_code,course_title,course_credit) FROM ‘courses.csv’, DELIMITER ‘,’ HEADER;

CREATE TABLE grades(
    grade_id serial PRIMARY KEY,
    grade text NOT NULL,
    grade_point int NOT NULL
);
\COPY grades(grade, grade_point) FROM ‘grades.csv’, DELIMITER ‘,’ HEADER;

 
