/*Ex01*/
DECLARE
 wcod NUMBER := wval + 1; -- erro porque wval
não está “ainda” declarado.
 wval NUMBER := 0;
BEGIN
 wcod := 1;
END; 
/*Ex02*/
DECLARE
 a number; b number;
 c number;
 a, b, c NUMBER; -- cada variável tem que estar
em uma linha.
BEGIN
 a:= 0;
END;
/*Ex03*/
DECLARE
 wb1 BOOLEAN;
 wb2 BOOLEAN;
 wb3 BOOLEAN;
BEGIN
 wb1 := 1;
 wb2 := 'TRUE';
 wb3 := ( 5 > 3 );
END; 