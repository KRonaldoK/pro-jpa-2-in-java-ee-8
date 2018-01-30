DROP TABLE EMP_PROJECT;
DROP TABLE EMP_EVAL;
DROP TABLE EVALUATION;
DROP TABLE EMPLOYEE;

CREATE TABLE EMPLOYEE (ID INTEGER NOT NULL, NAME VARCHAR(255), PRIMARY KEY (ID));
CREATE TABLE EVALUATION (ID INTEGER  NOT NULL, EVALTEXT VARCHAR(255), PRIMARY KEY (ID));
CREATE TABLE EMP_EVAL (EMPLOYEE_ID INTEGER NOT NULL, EVALS_ID INTEGER NOT NULL,
                          CONSTRAINT EMP_FK FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEE (ID),
                          CONSTRAINT EVAL_FK FOREIGN KEY (EVALS_ID) REFERENCES EVALUATION (ID),
                          PRIMARY KEY (EMPLOYEE_ID,EVALs_ID));


INSERT INTO EMPLOYEE (ID, NAME) VALUES (1, 'John');
INSERT INTO EMPLOYEE (ID, NAME) VALUES (2, 'Paul');
INSERT INTO EVALUATION (ID, EVALTEXT) VALUES (1, 'Great Performance!');
INSERT INTO EMP_EVAL (EMPLOYEE_ID, EVALS_ID) VALUES (2, 1);