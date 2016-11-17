libname sas 'Z:\1 - Base Clinical SAS Programming\Lectures\Lecture 6\AE Example';

data aemaster;
set sas.ae;
run
;
proc sort data=aemaster;
by pid;
run;
proc print data=aemaster;
run
;

/* How many subjects experienced at least one AE*/

data aemaster1;
set aemaster;
by grade;
if first.grade;
run
;
proc print data=aemaster1;
run
;
proc freq data=aemaster1;
tables grade*trt;
run
;

/* How many subjects experienced an AE of Blood System Disorder by Grade */

data aemaster2;
set aemaster;
if aept='BLOOD SYSTEM DISORDERS';
run
;
proc sort data=aemaster2;
by trt;
run;
proc print data=aemaster2;
run
;
proc freq data=aemaster2;
tables grade*trt;
run;


/* How many subjects experienced an AE of Neutropenia by Grade */

data aemaster3;
set aemaster;
if aept='NEUTROPENIA';
run
;
proc sort data=aemaster3;
by trt;
run;
proc print data=aemaster3;
run
;
proc freq data=aemaster3;
tables grade*trt;
run;


