/*Conversão Implícita:*/
DECLARE
 dt_hoje DATE := SYSDATE;
 descricao VARCHAR2(100) := '123';
 cd_mat NUMBER(5) := 0;
 p1 VARCHAR2 (1000);
BEGIN
 cd_mat := descricao;
 descricao := dt_hoje;
 p1 := descricao ||'-' ||cd_mat ||'-' ||dt_hoje;
END