SELECT
    State_abbr, State_Name, State_Instate
FROM
    state
INTO OUTFILE 'G:/Database/database/csv/State.csv'
FIELDS ENClOSED BY ""
TERMINATED BY ',' 
ESCAPED BY '"'
LINES TERMINATED BY '\r\n'
;

SELECT City_ID, City_Name
FROM city
INTO OUTFILE 'G:/Database/database/csv/City.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY '"'
LINES TERMINATED BY '\r\n';

SELECT Ct_Code, Ct_Desc, Ct_Instate
FROM ctype
INTO OUTFILE 'G:/Database/database/csv/Ctype.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY '"'
LINES TERMINATED BY '\r\n';

SELECT grade_abbr, grade_desc, grade_pass, grade_pts, grade_gpa
FROM grade
INTO OUTFILE 'G:/Database/database/csv/Grade.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY '"'
LINES TERMINATED BY '\r\n';

SELECT term_Code, term_desc
FROM term
INTO OUTFILE 'G:/Database/database/csv/Term.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY '"'
LINES TERMINATED BY '\r\n';

SELECT sub_abbr, sub_desc
FROM subject
INTO OUTFILE 'G:/Database/database/csv/Subject.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY '"'
LINES TERMINATED BY '\r\n';

SELECT yr_year
FROM year
INTO OUTFILE 'G:/Database/database/csv/Year.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY '"'
LINES TERMINATED BY '\r\n';

SELECT st_standing, st_min
FROM standing
INTO OUTFILE 'G:/Database/database/csv/Standing.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY '"'
LINES TERMINATED BY '\r\n';

SELECT zip_code, state_abbr, city_id
FROM zipcode
INTO OUTFILE 'G:/Database/database/csv/Zipcode.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY '"'
LINES TERMINATED BY '\r\n';

SELECT crs_ID, crs_number, sub_abbr, crs_hours, crs_name
FROM course
INTO OUTFILE 'G:/Database/database/csv/Course.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY '"'
LINES TERMINATED BY '\r\n';

SELECT stu_tnumber, stu_lname, stu_fname, stu_suffix
FROM student
INTO OUTFILE 'G:/Database/database/csv/Student.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY '"'
LINES TERMINATED BY '\r\n';

SELECT add_id, stu_tnumber, add_num, add_street, zip_code, add_street2, add_PO, ct_code
FROM address
INTO OUTFILE 'G:/Database/database/csv/Address.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY '"'
LINES TERMINATED BY '\r\n';

SELECT ph_id, stu_tnumber, ph_number, ct_code
FROM phone
INTO OUTFILE 'G:/Database/database/csv/Phone.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY '"'
LINES TERMINATED BY '\r\n';

SELECT com_id, stu_tnumber, crs_id, term_code, yr_year, grade_abbr
FROM completion
INTO OUTFILE 'G:/Database/database/csv/Completion.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY '"'
LINES TERMINATED BY '\r\n';

SELECT cred_id, cred_title, yr_year
FROM credential
INTO OUTFILE 'G:/Database/database/csv/Credential.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY '"'
LINES TERMINATED BY '\r\n';

SELECT req_id, crs_id, cred_id
FROM requirement
INTO OUTFILE 'G:/Database/database/csv/Requirement.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY '"'
LINES TERMINATED BY '\r\n';

SELECT ful_id, com_id, req_id
FROM fulfillment
INTO OUTFILE 'G:/Database/database/csv/Fulfillment.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY '"'
LINES TERMINATED BY '\r\n';

SELECT grad_id, stu_tnumber, cred_id, yr_year
FROM graduation
INTO OUTFILE 'G:/Database/database/csv/Graduation.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY '"'
LINES TERMINATED BY '\r\n';