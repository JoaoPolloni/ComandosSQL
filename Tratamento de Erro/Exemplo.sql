• DECLARE
• VCD_DEPTO NUMBER(02) := &DEPTO;
• SALARIO NUMBER;
• BEGIN
• SELECT SAL INTO SALARIO FROM EMP
• WHERE DEPTNO = VCD_DEPTO;
• DBMS_OUTPUT.PUT_LINE('Salário igual a '||SALARIO);
• EXCEPTION
• WHEN NO_DATA_FOUND THEN
• DBMS_OUTPUT.PUT_LINE('Não existem funcionários para este departamento');
• WHEN TOO_MANY_ROWS THEN
• DBMS_OUTPUT.PUT_LINE('Existe mais de um funcionário neste departamento');
• END;