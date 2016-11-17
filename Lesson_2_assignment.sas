/*  For this assignment you need to use the data files listed below.
    FAT.TXT
    PROTEIN.TXT
    SDEMOG.TXT

    A data dictionary for each file is given below:

    FAT.TXT
    ID Subject ID
    ENERGY total energy intake (kcal/day)
    TOTFAT total fat intake (g/day)
    TOTPFA total polyunsaturated fat (g/day)
    TOTMFA total monounsaturated fat (g/day)
    TOTSFA total saturated fat (g/day)

    PROTEIN.TXT
    ID Subject ID
    ENERGY total energy intake (kcal/day)
    PROTEIN total protein intake (g/day)
    VEGPROT total vegetable protein intake (g/day)
    ANMPROT total animal protein intake (g/day) */

/*========== Problem 1 ==========*/
/*  a) Write a SAS Program to create a data set (name the data set FAT) that contains the variables
      from FAT.TXT.
    b) Add the following variables to this data set:
      PCTOTFAT percent of calories (kcal) from total fat
      (ex. PCTOFAT=(totfat*9/energy)*100;)
      PCSFA percent of calories (kcal) from saturated fat
      PCMFA percent of calories (kcal) from monounsaturated fat
      PCPFA percent of calories (kcal) from polyunsaturated fat
      STOTFAT saturated fat + monounsaturated fat + polyunsaturated fat (in grams)
      OTHERFAT TOTFAT-STOTFAT (in grams)
      Hint: 9 kcalories per gram of fat (any type).
    c) Run PROC MEANS on all the variables in the data set FAT, using the shortest code possible.
    d) What is the average saturated fat intake (in grams) for the group? */

/*========== Problem 2 ==========*/
/*  a) Write a SAS Program to create a data set (name the data set PROTEIN) that contains the
      variables from PROTEIN.TXT.
    b) Add the following variables to this data set:
      PCTOTP percent of calories from total protein
      (Hint: PCTOTP=(Protein*4/energy)*100;)
      PCVEGP percent of calories from vegetable protein
      PCANMP percent of calories from animal protein
      SPROTEIN animal protein + vegetable protein
      OPROTEIN PROTEIN-SPROTEIN
      LPROTEIN Log transformation (base e) of PROTEIN
      SVEGP square root of VEGPROT
      Hint: 4 kcalories per gram of protein (any type).
    c) Produce histograms of (default setting for number of levels) of total protein, vegetable
      protein and their transformations. */

DATA fat;
  INFILE ‘Z:\Base Clinical SAS Programming\lab_data\fat.TXT’;
  INPUT ID energy totfat totpea totmfa totsfa;
  pcttotfat=(totfat*9/energy)*100;
  pcsfa=(totsfa*9/energy)*100;
  pcmfa=(totmfa*9/energy)*100;
  stotfat=totsfa+totmfa+totpea;
  otherfat=totfat-stotfat;
RUN;
proc means data=fat mean median q1 q3 min max;
  var energy totfat totpea totmfa totsfa;
run;

DATA protein;
  INFILE ‘Z:\Base Clinical SAS Programming\lab_data\protein.TXT’ dlm = ‘,’;
  INPUT ID energy totp vegp anmp;
  pctotp=(totp*4/energy)*100;
  pcvegp=(vegp*4/energy)*100;
  pcanmp=(anmp*4/energy)*100;
  sprotein=anmp+vegp;
  oprotein=totp-sprotein;
  lprotein=log(totp);
  svegp=sqrt(vegp);
RUN;
