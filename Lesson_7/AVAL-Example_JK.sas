libname in 'Y:\1 - Base Clinical SAS Programming\Lectures\Lecture 8';
data one;
set in.aval;
num_eventdt = input(eventdt, mmddyy10.);
format num_eventdt date9.;
run;

data New_AVAL;
set one;
AVAL=((num_eventdt-RANDT)-1)/30.43;
run;


Proc compare base= AVAL compare= NEW_AVAL out=RESULT outnoequal outbase outcomp;
Id usubjid;
title ' PROC COMPARE= AVAL ';
run;

