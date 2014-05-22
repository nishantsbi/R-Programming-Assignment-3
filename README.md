R-Programming-Assignment-3
==========================

for coursera assignment

Programming Assignment 3: Instructions Help

Introduction
This fourth programming assignment will be graded via a submit script which is described below.
Detailed Instructions
Please download this document for detailed instructions about the assignment:
Programming Assignment 3 Instructions
Data
The zip file containing the data for this assignment can be downloaded here:
Programming Assignment 3 Data [832K]
For this assignment you will need to unzip this file in your working directory.
Grading
This assignment will be graded using unit tests executed via the submit script that you run on your computer. To obtain the submit script, run the following code in R:
source("http://d396qusza40orc.cloudfront.net/rprog%2Fscripts%2Fsubmitscript3.R")
Or you can download the script to your working directory (NOTE: You may need to rename the script to be "submitscript3.R"). Then source it locally via
source("submitscript3.R")
The first time you run the submit script it will prompt you for your Submission login and Submission password. These can be found at the top of the Programming Assignments page. To execute the submit script, type
submit()
at the console prompt (after source-ing the file). NOTE that the submit script requires that you be connected to the Internet in order to work properly. When you execute the submit script in R, you will see the following menu (after typing in your submission login email and password):
[1] 'best' part 1
[2] 'best' part 2
[3] 'best' part 3
[4] 'rankhospital' part 1
[5] 'rankhospital' part 2
[6] 'rankhospital' part 3
[7] 'rankhospital' part 4
[8] 'rankall' part 1
[9] 'rankall' part 2
[10] 'rankall' part 3
Which part are you submitting [1-10]? 
Entering a number between 1 and 10 will execute the corresponding part of the homework. We will compare the output of your functions to the correct output. For each test passed you receive the specified number of points on the Assignments List web page.
