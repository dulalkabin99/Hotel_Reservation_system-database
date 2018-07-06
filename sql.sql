SET SERVEROUTPUT ON
declare
  x integer;
  y integer;
begin
x := 2;
y := dbms_random.value(1,3);
  if x = y then
    dbms_output.put_line( x || ' is a match to the random Number ');
  else
    dbms_output.put_line( x || ' is not a match to the random number ');
  end if;
end;