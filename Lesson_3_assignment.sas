/*  For this assignment you need to use the following data files AND questionnaire:
    - VITAM.SAS7BDAT
    - DEMOG.SAS7BDAT
    - NIV Vitamins and Demographics.DOC
    These files were created for a study of 159 subjects who responded to a questionnaire (see the file “NIV Vitamins and Demographics.DOC”). The observations in each file are both sorted by ID and represent the data for the same subjects. Variables on each file correspond to items on the questionnaire. */

/*========== Problem 1 ==========*/
/*  Write a SAS Program that runs PROC CONTENTS on the VITAMTT04.SAS7BDAT and DEMOG2.SAS7BDAT data sets.
    You may printout the OUTPUT from these runs and use it as your “data dictionary” for the two files.
    Try to understand the connection between the variables and the questionnaire and the numerical values the represent the categories.
    The first category of every variable starts with the value of 1 and if there are any zeros they are missing data. */

/*========== Problem 2 ==========*/
/*  (turn in CODE for a-i, WRITE answer to g, h & i, & include NO OUTPUT!!!)
    Write a SAS program that does the following:
    a. Passes the data from VITAM.SAS7BDAT to the data set WORK.MASTER.
    b. Creates a variable VITA in WORK.MASTER that converts the vitamin A dosage variable (V2ADOSE) to International Units as follows:
      - First, let VITA equal to zero when subjects did not take vitamin A (use V2A).
      - Then, use the following to convert from categories to IU units
      - 1=4000, 2=10000, 3=17500, 4=24000, 5=missing (You are responsible for understanding where these values come from)
    c. Repeats b) for the beta-carotene dosage variable (V2BDOSE). Call the new variable (in IU) BETA.
    d. Converts VITA (IU) to VITA (mg retinol) by dividing by 3.33, Convert BETA (IU) to BETA (mg retinol) by dividing by 10.
    e. Creates a variable TOTVITA for total vitamin A (mg retinol) that is obtained from summing BETA and VITA.
    f. LABELs the variable TOTVITA as “Total Vitamin A”.
    g. Runs PROC FREQ and MEANS on the variables TOTVITA, BETA, and VITA. Use the output from g) to answer the following:
        How many subjects are missing values for one or more of these variables?
    h. Answers the following question: What is/are the ID number(s) of the subject(s) with missing values in g)? Your code must output a list of ID numbers for only those subjects with missing values.
    i. How many people take vitamin A supplements (including beta-carotene)? Of those who take these supplements, what is the mean dose per day? */

/*========== Problem 3 ==========*/
/*  (turn in CODE for a-f, WRITE answer to b-f, & INCLUDE NO OUTPUT!!!)
    Write a SAS program that does the following:
    a. Revises data set WORK.MASTER1 to include a NEW categorical variable (7 categories) for age in years (AGE) called AGE1. Categorize the variable as follows:
      1=20-29, 2=30-39, 3=40-49, 4=50-59, 5=60-69, 6=70-79, & 7=80+
    b. Uses PROC FREQ to determine frequency of subjects in each of the 7 age categories. Write these down.
    c. Uses a WHERE statement to redo b) for males. Write down answer.
    d. Uses a WHERE statement to redo b) for females. Write down answer.
    e. Uses PROC MEANS to determine the mean of AGE. Write down answer.
    f. Uses NOT, IN and WHERE in statements to redo e) after excluding ID 40047 and 40162. Write down answer.
    g. Uses NOT, IN and IF in statements to redo e) after excluding ID 40047 and 40162 (this may require the creation of a new data set. If so, label it NEW). Write down answer. */

/* solutions here */
