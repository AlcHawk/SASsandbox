
LIBNAME INPUT 'Z:\1 - Base Clinical SAS Programming\lab_data';
DATA problem1;

set INPUT.DEMOG2;
RUN;
PROC CONTENTS data=problem1;
run;

LIBNAME INPUT 'Z:\1 - Base Clinical SAS Programming\lab_data';
DATA master;
set input.VITAMTT04;
if V2A = 1 then vita=0;
if V2ADOSE=1 THEN VITA = 4000;
if V2ADOSE=2 THEN VITA = 10000;
if V2ADOSE=3 THEN VITA = 17500;
if V2ADOSE=4 THEN VITA = 24000;
if V2ADOSE=5 THEN VITA = .;
label vita='vitamin A ug retinol';

IF V2B=1 THEN BETA=0;
if V2BDOSE=1 THEN BETA = 4000;
if V2BDOSE=2 THEN BETA = 10000;
if V2BDOSE=3 THEN BETA = 17500;
if V2BDOSE=4 THEN BETA = 24000;
if V2BDOSE=5 THEN BETA = .;
label beta='beta carotene ug retinol';

VITA=VITA/3.33;
BETA=BETA/10;
TOTVITA=VITA+BETA;
LABEL TOTVITA='Total Vitamin A';
run;
PROC freq data=master;
tables totvita beta vita;
run;

proc means data=master;
var totvita beta vita;
run;


