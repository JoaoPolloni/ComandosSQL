--If
DECLARE
 msg VARCHAR2(100);
 valor NUMBER := -7;
BEGIN
 IF valor > 0 THEN
 msg := 'Valor maior que zero’; -- POSITIVO ELE ENTRA AQUI
 ELSIF valor = 0 THEN
 msg := 'Valor igual a zero’; -- SE O VALOR FOR 0 ENTRA AQUI
 ELSE
 msg := 'Valor menor que zero’; -- SE FOR NEGATIVO
 END IF;
 dbms_output.Put_line(msg);
END; 