libname sas 'Z:\1 - Base Clinical SAS Programming\Lectures\Lecture 6\Createing Dataset Example';

data lb1;
set sas.lb;
if visit='BASELINE';
if lbtest='HEMOGLOBIN';
if visit='BASELINE' then BHEMO=lbresult;
run
;

data lb2;
set sas.lb;
if visit='BASELINE';
if lbtest='AST';
if visit='BASELINE' then BAST=lbresult;
run
;

data lb3;
set sas.lb;
if visit='TERMINATION';
if lbtest='HEMOGLOBIN';
if visit='TERMINATION' then THEMO=lbresult;
run
;

data lb4;
set sas.lb;
if visit='TERMINATION';
if lbtest='AST';
if visit='TERMINATION' then TAST=lbresult;
run
;

data alb;
merge lb1 lb2 lb3 lb4;
keep PID BHEMO BAST THEMO TAST;
run
;


