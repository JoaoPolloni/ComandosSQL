DECLARE
 v_cod NUMBER(4) := 0;
 v_data DATE NOT NULL := SYSDATE;
 --
 wcod emp.empno%TYPE NOT NULL := 1234;
 wdata emp.hiredate%TYPE := SYSDATE;
 --
 wdep dept.deptno%TYPE;
BEGIN
 wdep := NULL;
 v_cod := 1;
 wdata := NULL;
END; 
