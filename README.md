## Content of this repository

This repository contains data and code for the study "Feeling Bad About Being Wrong: Affective Evaluation of Performed Actions and its Trial-by-Trial Relation to Autonomic Arousal" by Luisa Balzus, Julia Klawohn, and Norbert Kathmann. <br><br>



## Overview

Our study aimed to replicate and extend previous findings on affective action evaluation and to examine trial-level associations between action evaluation and autonomic arousal. 
Thirty participants performed an affective priming paradigm, consisting of a go/no-go task with an embedded word categorization task, while skin conductance response was recorded.
In this repository, we provide data and scripts used for statistical analyses and figure generation. For information about task and data, please read the Task_and_Data_Description.md. <br><br>

**For our project page with analysis code and results of statistical analyses please visit**
https://balzuslu.github.io/action_evaluation_and_autonomic_arousal <br><br>



## Software Information

Analyses were conducted with R version 3.6.1 and R Studio version 1.2.5001. <br><br>



## Data

- **./data**: The file Single_Trial_Data.rda in the data folder contains single-trial data of the affective priming paradigm (in .RData format). Information about data and variables are provided in the file Task_and_Data_Description.md. <br><br>



## Analysis Scripts

Annotated analysis code is organized into separate R Markdown files: <br><br>

- **1_Word_Categorization.Rmd**: This script performs the analysis of behavioral performance in the word categorization task, including data cleaning, descriptive statistics, figure generation, (G)LMM analyses, and ANOVAs (= supplementary analyses).
- **2_Go_No-Go.Rmd**: This script performs the analysis of behavioral performance in the go/no-go task, including data cleaning, descriptive statistics, and LMM analysis.
- **3_SCR.Rmd**: This script performs the analysis of the skin conductance response and its trial-level relation to affective action evaluation, including data cleaning, descriptive statistics, figure generation, LMM analyses, and control analyses (= supplementary analyses). <br><br>

The corresponding HTML files display the output from running the R Markdown files in HTML format. <br><br> 



## Usage

To reproduce statistical analyses, download the source files, open the file Action_Evaluation.Rproj and run `renv::restore()` to automatically install all required packages into the project library.




