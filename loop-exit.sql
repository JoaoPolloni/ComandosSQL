--FAÇA.. ENQUANTO (FOR VERDADE) X ENQUANTO CONDIÇÃO ESTÁ INICIO... FAÇA ?
DECLARE
BEGIN
LOOP -- INICIANDO O LAÇO
IF C1%FOUND THEN
MSG := MSG||RC1.EMPNO||' - ';
ELSE
EXIT;
END IF;
END LOOP; -- TENHO QUE FINALIZAR O COMANDO COM END LOOP (OBRIGATÓRIO).
DBMS_OUTPUT.PUT_LINE(MSG);
END;

--outra versão
DECLARE
    C1 VARCHAR2(100);
    MSG VARCHAR2(100);
BEGIN
    SELECT empno
    INTO C1
    FROM SCOTT.emp
    WHERE empno = 7782;
    LOOP
        IF C1 IS NOT NULL THEN
            MSG := C1;
            C1 := NULL;
        ELSE
            EXIT;
        END IF;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(MSG);
END;