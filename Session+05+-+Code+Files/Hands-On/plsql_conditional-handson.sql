/**
Handson

Give a movie release data, use conditional of the PL/SQL to find the release status of the mvoie 

**/

SET SERVEROUTPUT ON
DECLARE
  r_date      date;
  r_satus varchar(11);
BEGIN
  r_date := TO_DATE ('07-12-1988', 'dd-mm-yy');
  CASE
  WHEN r_date    > TO_DATE(sysdate,'dd-mm-yy')  THEN
    r_satus := 'PLANNED';
  WHEN r_date   <= TO_DATE(sysdate,'dd-mm-yy') THEN
    r_satus := 'RELEASED';
  ELSE
    r_satus := 'BLOCKED';
  END CASE;

  DBMS_OUTPUT.PUT_LINE( 'Status of the movie is ' || r_satus );
END;