CREATE PROCEDURE sum_salaries(OUT sum INTEGER) 
  LANGUAGE SQL
  BEGIN
    DECLARE p_sum INTEGER;
    DECLARE p_sal INTEGER;
    DECLARE SQLSTATE CHAR(5) DEFAULT '00000';
    DECLARE c CURSOR FOR SELECT SALARY FROM EMPLOYEE;
 
     SET p_sum = 0;

     OPEN c;

     FETCH FROM c INTO p_sal;

     WHILE(SQLSTATE = '00000') DO
        SET p_sum = p_sum + p_sal;
        FETCH FROM c INTO p_sal; 
     END WHILE;

     CLOSE c;

     SET sum = p_sum;

  END
