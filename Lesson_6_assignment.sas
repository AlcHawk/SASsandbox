/*  For this assignment you need to use the following data files:
    - PAIRED.SAS7BDAT
    PAIRED contains data(20 observations) on the risk score for 10 patients at baseline and 6 months after an intervention.
    Data Dictionary:
    ID  Subject ID
    MSNO  1=baseline  2=6 months
    SCORE Risk */

/*========== Problem 1 ==========*/
/*  (turn in CODE for a-b , INCLUDE NO OUTPUT!!!)
    Consider the following equation:
    a) Create a data step in which values of Y are calculated for values of X ranging from 1 to 100(increments of 1) using the equation above. (Generate the data programmatically. Do not input a CARDS statement or external file!!).
    b) Plot Y versus X. You may want to experiment with SPLINE as an interpolation method. */

data lab7;
  do x=1 to 100;
  y=(X**2) + (3*x) + 9;
  output;
  end;
run;

proc print; run;
proc gplot; title “Graph of Y versus X”;
  plot y*x;
run;


/*========== Problem 2 ==========*/
/*  a. Write a program that will perform a t-test to compare the risk score at baseline to the risk score at 6 months among the 10 patients whose data are on PAIRED.
      ID                           subject id
      BASELINE            baseline score
      SIXMO                  score at six months
      DIFF                      score at six months       –           score at baseline
    b. Repeat a) for an analysis in which the baseline scores are compared to a score of 150.
    c. Plot the before and after data using separate lines for each ID. You will want to use the following symbol and graphic options statement to designate plot symbols in your PROC GPLOT:
      goptions reset=all;
      symbol v=dot i=join; */

LIBNAME labllm ‘Z:\Base Clinical SAS Programming\lab_data’;

DATA PAIRED;
  SET labllm.paired;
TITLE ‘*********************Ron Savage, Assgn 6, Prob 2*********************’;
PROC CONTENTS;
RUN;

DATA BASELINE (Rename=(SCORE=BEFORE));
  SET labllm.paired;
  WHERE MSNO=1;
PROC Print DATA=BASELINE;
RUN;

DATA SIXMO (Rename=(SCORE=AFTER));
  SET labllm.paired;
  WHERE MSNO=2;
PROC Print DATA=SIXMO;
RUN;

PROC SORT DATA=BASELINE (DROP=MSNO);
  BY ID;
Run;

PROC SORT DATA=SIXMO (DROP=MSNO);
  BY ID;
Run;

DATA TEST;
  Merge BASELINE SIXMO;
  By ID;
  DIFF = AFTER – BEFORE;
  AFTER150 = 150;
TITLE ‘********************Ron Savage, Assgn 6, Prob 2a*********************’;
PROC PRINT DATA=TEST;
RUN;

PROC TTEST;
  Paired after*before;
RUN;
TITLE ‘*********************Ron Savage, Assgn 6, Prob 2b*********************’;
PROC TTEST;
  Paired after150*before;
RUN;

DATA PAIRED;
  SET labllm.paired;
TITLE ‘******************Graph of Baseline and Six Months*****************’;
TITLE ‘********************Ron Savage, Assgn 6, Prob 2c*********************’;

GOPTIONS RESET=ALL;
Symbol v=dot i=join;
PROC GPLOT;
TITLE ‘*******************Baseline=1 and Six Months=2*********************’;
PLOT SCORE*ID=MSNO;
RUN;
