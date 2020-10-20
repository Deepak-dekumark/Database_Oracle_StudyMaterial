/***
Procedure -

Take 3  numbers and find the avearge of three numbers 

**/


DECLARE
    num_1   NUMBER;
    num_2   NUMBER;
    num_3   NUMBER;
    average NUMBER ;
    

    PROCEDURE findAvg (
        num_1   IN    NUMBER,
        num_2   IN    NUMBER,
        num_3   IN   NUMBER,
        result   OUT  NUMBER
    ) IS
    BEGIN
        result := (num_1+num_2+num_3)/3 ;
    END;

BEGIN
    num_1 := 40;
    num_2 := 50;
    num_3 := 60 ;
   
    findAvg(num_1,num_2,num_3,average);
    dbms_output.put_line(' average of  the result for : ' || num_1 ||', '|| num_2 ||' ,'||num_3 ||' is : ' || average);
END;
