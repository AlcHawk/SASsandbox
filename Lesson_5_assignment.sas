/*  For this assignment you need to use the following data files:
    - VITAM.SAS7BDAT
    - DEMOG.SAS7BDAT
    - FAT.TXT
    - DEMENTIA.SAS7BDAT
    The data dictionary for the first three files has been given in assignments #2-3,
    for the data dictionary for the last file run a PROC CONTENT. */


/*========== Problem 1 ==========*/
/*  Create a permanent SAS data set on the z:\ drive
    Read in VITAM.SAS7BDAT, DEMOG.SAS7BDAT, and FAT.TXT into this data set. */


/*========== Problem 2 ==========*/
/*  A centralized variable can be defined as a variable that has been transformed by subtracting its arithmetic mean from it.
    For a variable x, xc = x - x bar
    where xc is the centralized variable.
    Using this method and the data set in problem 1, create centralized variables (xc’s) for total fat (TOTFAT),
    saturated fat (TOTSFA), monounsaturated fat (TOTMFA), and polyunsaturated fat (TOTPFA).

    Your final temporary data set(call it CENTR) must contain ONLY the following variables:
      TOTFAT defined
      TOTSFA defined
      TOTPFA defined
      TOTMFA defined
      TOTFATM mean of totfat
      TOTSFAM mean of totsfa
      TOTPFAM mean of totpfa
      TOTMFAM mean of totmfa
      TOTFATC centralized variable for totfat
      TOTSFAC centralized variable for totsfa
      TOTPFAC centralized variable for totpfa
      TOTMFAC centralized variable for totmfa
    Run a PROC CONTENTS on CENTR to verify. */


/*========== Problem 3 ==========*/
/*  a) Read DEMENTIA to a temporary data set named DEMENT. Run a PROC CONTENTS on DEMENT.
      How many observations are on DEMENT? Write this down.
    b) SEX is variable on DEMENT coded 1 for males and 2 for females. AGEMENOP is a variable on DEMENT that is a continuous variable for age at menopause in years and has missing values for all males and female non-responders(i.e. females with missing values for AGEMENOP).
    c) Add a new three category variable for age at menopause to the DEMENT data (in a new data set). Call it AGEM and code it as follows, setting all males and female non-responders to missing values:
      AGEM  1.  less than the 25th percentile of AGEMENOP
            2.  25TH to the 75th percentile of AGEMENOP inclusive
            3.  above the 75th percentile of AGEMENOP

      Programmatically use data from the output data set of PROC MEANS to create AGEM.
      In the output statement the “system defined” quartile variables are Q1 and Q3.
    d) Add a new two-category variable for MMSE score to DEMENT. Call it MMSEC and code it as follows:
      MMSEC 1.  0-23 score
            2.  > 23 score */
