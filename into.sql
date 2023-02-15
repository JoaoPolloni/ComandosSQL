DECLARE
 salario NUMBER;
 endrow ROWID;
BEGIN
 SELECT sal,
 ROWID
 INTO salario, endrow
 FROM emp
 WHERE empno = 7782;
 IF salario < 2000 THEN
 salario := salario * 1.3;
 ELSIF salario IS NULL THEN
 salario := 1500;
 ELSE
 salario := salario * 1.15;
 END IF;
 UPDATE emp
 SET sal = salario
 WHERE ROWID = endrow;
 dbms_output.Put_line('Salário = ' ||salario);
 COMMIT;
END;