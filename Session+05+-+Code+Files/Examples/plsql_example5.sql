-- Simple CASE statement example
SET SERVEROUTPUT ON
DECLARE
    rating   CHAR(1);
    hike    NUMBER(2);
BEGIN
    rating := 'B';
    CASE rating
        WHEN 'A' THEN
            hike := 20;
        WHEN 'B' THEN
            hike := 15;
        WHEN 'C' THEN
            hike := 10;
        WHEN 'D' THEN
            hike := 5;
        WHEN 'F' THEN
            hike := 2;
        ELSE
            hike := 9;
    END CASE;

    dbms_output.put_line(hike);
END;



-- Searched CASE statement example
SET SERVEROUTPUT ON
DECLARE
  marks      NUMBER;
  grade CHAR(1);
BEGIN
  marks := 75;
  CASE
  WHEN marks    > 90 THEN
    grade := 'A';
  WHEN marks   >= 80 AND marks < 90 THEN
    grade := 'B';
  WHEN marks   >= 70 AND marks < 80 THEN
    grade := 'C';
  WHEN marks    > 60 THEN
   grade := 'D';
  ELSE
    grade := 'F';
  END CASE;

  DBMS_OUTPUT.PUT_LINE( 'Grade of the student is  ' || grade );
END;