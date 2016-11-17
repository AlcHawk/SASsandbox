/*========== Problem 1 ==========*/
/*  a) There are 24 measurements of triglycerides. Create a data set using the following data points.
    b) Assign these data points to a variable in this data set called TRIG. Also add a variable to this data set that represents the log transform (base e) of TRIG and call it LTRIG.
    c) Run PROC UNIVARIATE on the variables TRIG, Run PROC GCHART on the variables X, LX in order to output two vertical bar histograms created with the no more than 5 bars (LEVELS=5).
    Research question:  What is the mean of triglycerides (PROC UNIVARIATE)?
    What is its distribution and does a log transformation make the distribution more bell shaped (PROC GCHART)? */

DATA Problem1;
  INPUT TRIG;
  LTRIG=LOG(TRIG);
  CARDS;
  12
  14
  13
  12
  11
  15
  17
  20
  13
  24
  13
  11
  12
  14
  13
  12
  11
  15
  17
  20
  13
  24
  13
  11
  ;
TITLE Assignment 1, Prob 1′;
PROC PRINT DATA=Problem1;
RUN;
PROC UNIVARIATE DATA=Problem1;
  VAR TRIG LTRIG;
RUN;
PROC GCHART;
  VBAR TRIG LTRIG /LEVELS=5;
RUN;


/*========== Problem 2 ==========*/
/*  Create a data set using the following measurements of LDL (cholesterol).
    What is the mean of LDL?
    What is its distribution and does a log transformation improve the distribution (make it more bell shaped)? */

DATA Problem2;
  INPUT LDL;
  LLDL=LOG(LDL);
  CARDS;
  57
  85
  45
  67
  37
  97
  66
  45
  22
  33
  31
  ;
TITLE  ‘Assignment 1, Problem 2′;
PROC PRINT DATA=Problem2;
RUN;
PROC UNIVARIATE DATA=Problem2;
  VAR LDL LLDL;
RUN;
PROC GCHART;
  VBAR LDL LLDL /LEVELS=5;
RUN;


/*========== Problem 3 ==========*/
/*  Create a data set using the following measurements of HDL (cholesterol).
    68 26 26 49 28 41 28 42 60 77 38 58 37 51 46 58 40 46 61 32 37 39 34 47
    What is the mean of HDL?  What is its distribution and which transformation is better a log or a square root transformation? */

DATA Problem3;
  INPUT HDL;
  LHDL=LOG(HDL);
  SHDL=SQRT(HDL);
  CARDS;
  68
  26
  26
  49
  28
  41
  28
  42
  60
  77
  38
  58
  37
  51
  46
  58
  40
  46
  61
  32
  37
  39
  34
  47
  ;
TITLE Assignment 1, Prob 3′;
PROC PRINT DATA=Problem3;
RUN;
PROC UNIVARIATE DATA=Problem3;
  VAR HDL LHDL SHDL;
RUN;
PROC GCHART;
  VBAR HDL LHDL SHDL /LEVELS=5;
RUN;


/*========== Problem 4 ==========*/
/*  Create a data set using the following measurements of BMI (Body Mass Index).
    25.3 38.8 24.5 33.6 26.7 34.7 28.5 50.5 32.3 20.4 34.0 31.5
    37.2 26.7 29.8 34.3 40.2 29.5 28.4 37.8 23.3 39.6 29.2 31.7
    What is the mean of BMI?  What is its distribution and does a log transformation improve the distribution? */

DATA Problem4;
  INPUT BMI;
  LBMI=LOG(BMI);
  CARDS;
  25.3
  38.8
  24.5
  33.6
  26.7
  34.7
  28.5
  50.5
  32.3
  20.4
  34.0
  31.5
  37.2
  26.7
  29.8
  34.3
  40.2
  29.5
  28.4
  37.8
  23.3
  39.6
  29.2
  31.7
  ;
TITLE Assignment 1, Prob 4′;
PROC PRINT DATA=Problem4;
RUN;
PROC UNIVARIATE DATA=Problem4;
  VAR BMI LBMI;
RUN;
PROC GCHART;
  VBAR BMI LBMI /LEVELS=5;
RUN;
PROC UNIVARIATE DATA=Problem5;
  VAR AGE WEIGHT HEIGHT;
RUN;
