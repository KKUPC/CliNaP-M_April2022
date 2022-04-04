# Data analysis

## Table of Contents
1. [Overview and Aims](#overview)
2. [Introduction to MetaboAnalyst](#intro)
3. [NMR-based metabolome data analysis using MetaboAnalyst](#nmrbased)
4. [LC-MS/MS – based metabolome data analysis using MetaboAnalyst](#lcmsbased)
5. [Additional materials](#extra)

---

## Overview and Aims <a name="overview"></a>
In this module, we will cover key concepts in NMR-based and LC-MS/MS – based metabolome data analysis. We will use pre-processed spectra data for conducting chemometrics analysis in order to visualise the patterns, trends, selecting outliers, or further investigating the classification and potential biomarkers. We will use the example data of Pla-ra that were prepared by two methods and collected at three different time points. We could ask if and how the metabolic profiling of Pla-ra collected is different over time and how those differences are affected by the methods of preparation. 

---
[↥ **Back to top**](#top)

## Introduction to MetaboAnalyst <a name="intro"></a>
MetaboAnlayst created by Wishart Research Group (University of Alberta, Canada) is a web-based platform for metabolomic data analysis and interpretation. Since the first version released in 2009, the platform has undergone continuous development and expansion in a variety of functional models that have been tailored for metabolomic data including data processing, statistical analysis, functional enrichment analysis, and metabolic pathway analysis. The platform also supports a wide array of data input types generated from different metabolomic approaches consisting of metabolite concentrations, spectra bins/peak table, MS/NMR peak lists or intensity table, and LC-MS raw spectra. Given its strengths in analysis methods and diverse data input, MetaboAnalyst is recognised as a friendly and comprehensive platform for metabolomics data analysis. 

![](figures/F1-MetaboAnalystPipline.png)

Overview of MetaboAnalyst workflows (Obtained from Nucleic Acids Res, Volume 49, Issue W1, 2 July 2021, Pages W388–W396, https://doi.org/10.1093/nar/gkab382)

### Let’s start 
To get started, open any web browser and go to https://www.metaboanalyst.ca/ for the main interface of MetaboAnalyst. The current window displays information regarding news & updates in the top centre, main menu in the left, and introduction of modules by scrolling down. To get to the module view and functions,  click the red button in the middle centre “Click here to start”.

![](figures/F2-MainPage.png)

Alternatively, the address https://www.metaboanalyst.ca/MetaboAnalyst/ModuleView.xhtml can be used to access directly to the page. The current window provides direct access and detailed information for each module. In the left panel is a different directory related to the platform. The user can learn the command to handle each module in “Tutorials” or search for solutions for common questions and errors in “FAQs” . Here we would like to emphasise the instruction for “Data Formats” as it is the important initial step for every further process. 

![](figures/F3-ModuleView.png)  

### Dataset preparation for MetaboAnalyst analysis
As mentioned above, MetaboAnalyst supports a wide array of data input types generated from different metabolomic approaches that are suitable for different analysis paths in the platform. However, to be compatible with the platform commands, the transformation or arrangement of the dataset following guidelines is necessary. 

There are four data formats that can be used in MetaboAnalyst including Comma Separated Values (.csv), Tab Delimited Text (.txt), mzTab 2.0-M files (.mzTab), and Zipped files (.zip). The instruction and special notes of each format are provided in section “General”. Also, next to this section are the instructions for different data types and analysis paths.

![](figures/F4-DataFormats.png)

---
[↥ **Back to top**](#top)

## NMR-based metabolome data analysis using MetaboAnalyst <a name="nmrbased"></a>
For this module, the chosen example dataset is Pla-ra samples derived NMR intensity with two different prepared methods (Raw and Cooked) and collected at three different time points (day 0, 2 weeks, and 6 weeks).  Moreover, the odour satisfaction score was also provided. 

![](figures/F5-FullData.png)

For MetaboAnalyst analysis, the dataset is collected and arranged in Excel as following: 
- **Data Format**: .csv 
- **Column**: Sample ID and Sample label
- **Row**: variables
![](figures/F6-MetaboNMRData.png)

### Data analysis using MetaboAnalyst
#### Data uploading and processing
##### ***Data uploading***
After the preparation for data file is completed, we can go back to MetaboAnalyst Module View and click “Statistical Analysis [one factor]" to start the analysis process. 
![](figures/SA_Onefactor.png)

In the box of “A plain text (.txt or .csv)", select the information and follow the steps as below:
- **Data Type**: Peak intensities
- **Format**: Sample in columns (unpaired)
- **Data File**: click “Choose” to upload the data file (.csv file)
- Click **Submit**
![](figures/SA_FileUpload.png)

##### ***Data processing***
The main steps of data processing include Data check, Missing value, Data filter, Data editor, and Normalisation.  
*Data check & Missing value*
- The commands help to check the integrity of the data file and provide the editing window for group labels. It is necessary to look over a few important pieces of information such as number of samples, number of groups, and missing values before processing next steps. 
![](figures/SA_DataCheck.png)

*Data filter*
- The purpose of this step is to filter non-information variables such as baseline noises. MetaboAnalyst provides detailed explanations and suggestions for data filtering methods in their platform. For this module, we suggest using the “None” option to allow maximum variables for analysis. 
![](figures/SA_DataFilter.png)

*Normalisation*
- MetaboAnalyst provides the normalisation procedures with three categories to improve the quality of your dataset such as sample normalisation, data transformation, and data scaling. For this module, as the example dataset has undergone the preprocessing procedure, thus, none of the strategies is required.
![](figures/SA_Normalization2.png)


In case your dataset requires normalisation procedures, after selecting and normalising, you can click “View Result” to review the results and to compare “before” and “after” processes.

#### Statistical analysis
After data processing, the tool box appears with different analysis paths to select such as univariate analysis, chemometrics analysis, or cluster analysis. In this module, we introduce the process of chemometrics analysis, specifically principal component analysis (PCA) and orthogonal partial least squares - discriminant analysis (O-PLS-DA). 

##### ***Principal component analysis (PCA)***
The PCA is used to study the metabolic overview, similarities, and differences of all samples. 
![](figures/SA_PCA_Allgroups.png)

The visualisation of PCA results can be reviewed by different kinds of plots provided by MetaboAnalyst. The first plot “Overview” displays pairwise score plots of PCA results from top 5 principal components (PCs). 
![](figures/SA_PCA_Overview2.png)

Next to that is the “Scree Plot” which displays the accumulated variance explained and the variance explained by individual PC. 
![](figures/SA_PCA_ScreePlot2.png)

In addition, “2D Scores Plot” can be used to study the clustering between groups.
![](figures/SA_PCA_2DScoresPlot2.png)

##### ***Orthogonal partial least squares - discriminant analysis (O-PLS-DA)***
The O-PLS-DA is used to investigate further in pairwise comparison aiming to identify the differences between groups. Therefore, it requires the step to select two interested groups for the analysis through “Data editor”. For the current dataset, the example is conducted for a pairwise comparison model between “Raw_day 0” and “Raw_2 weeks”. 
![](figures/SA_OPLSDA_DataEditor.png)

After the normalisation step which follows the instructions mentioned above, the analysis can be performed straight away by clicking “OrthPLSDA” in the left panel under “Statistics” section. Similar to PCA, the visualisation of O-PLS-DA results can be reviewed by different kinds of plots provided by MetaboAnalyst. The first “Score Plot” demonstrates the significant class discrimination between “Raw_day 0” and “Raw_2 weeks”.
![](figures/SA_OPLSDA_ScorePlot2.png)

Further, the “Imp. Feature (S-plot)” represents the variable influence in an O-PLS-DA model. It combines the covariance and correlation loading profiles. The loading plots combine a scatter plot “p[1]” which describes the magnitude of each variable within a model, and “p(corr)[1]” which represents the reliability of each variable (model correlation). What’s more, we can choose the significance discriminated variable, click on it to access “Feature View” which is a box and whisker plot representing the difference in relative concentrations of this particular variable. 
![](figures/SA_OPLSDA_SPlot2.png)

In the same window, we can also take a look at the table summarised from values of “p[1]” and “p(corr)[1]” by clicking on “View the detailed data table”. The variables at the outermost bottom and top of the loading plot were sorted in the order of potentially relevant metabolites with significant differences in the pairwise comparison. Thus, these potentially variables (or chemical shift, ppm) can be employed for further metabolite identification.
![](figures/SA_OPLSDA_DetailedTable2.png)

The statistical parameters obtained from the current O-PLS-DA model, such as the fitness and predictability determined by  R2X, R2Y, and Q2 values, can be reviewed in “Model Overview”. 
![](figures/SA_OPLSDA_ModelOverview2.png)

Last but not least, the computationally intensive procedure known as “Permutation” can also be carried out in the same window, next to “Model Overview”.  Depending on the size of the dataset, we could set the appropriate number for permutation.
![](figures/SA_OPLSDA_Permutation2.png)

### Download Results
The results from MetaboAnalyst (all tables and figures) can be downloaded in “Download” section located in the left panel. We can either choose to download single files or all the files composed in “Download.zip”. In addition, a PDF analysis report can also be generated using the button “Generate Report”. 
![](figures/SA_Download.png)

---
[↥ **Back to top**](#top)

## LC-MS/MS – based metabolome data analysis using MetaboAnalyst <a name="lcmsbased"></a>
For this module, the chosen example dataset is Pla-ra samples derived from LC-MS/MS peak intensity with two different prepared methods (Raw and Cooked) and collected at three different time points (day 0, 2 weeks, and 6 weeks).  Moreover, the odour satisfaction score was also provided.

![](figures/LSMS_Fulltable.png)

For MetaboAnalyst analysis, the dataset is collected and arranged in Excel as following: 
- **Data Format**: .csv 
- **Column**: Sample ID and Sample group
- **Row**: variables
- All the variables from “Extract blank” and “Recon blank” must be cut off from the data table. 
![](figures/LCMS_MetaboData.png)

### Data analysis using MetaboAnalyst
#### Data uploading and processing
##### ***Data uploading***
After the preparation for data file is completed, we can go back to MetaboAnalyst Module View and click “Statistical Analysis [one factor]” to start the analysis process. 
![](figures/SA_Onefactor.png)

In the box of “A plain text (.txt or .csv)", select the information and follow the steps as below:
- **Data Type**: Peak intensities
- **Format**: Sample in columns (unpaired)
- **Data File**: click “Choose” to upload the data file (.csv file)
- Click **Submit**
![](figures/SA_LCMSFileUpload.png)

##### ***Data processing***
The main steps of data processing include Data check, Missing value, Data filter, Data editor, and Normalisation.  
*Data check & Missing value*
- The commands help to check the integrity of the data file and provide the editing window for group labels. It is necessary to look over a few important pieces of information such as number of samples, number of groups, and missing values before processing next steps. 
![](figures/SA_LCMSDataCheck.png)

*Data filter*
- The purpose of this step is to filter non-information variables such as baseline noises. MetaboAnalyst provides detailed explanations and suggestions for data filtering methods in their platform. For this module, we suggest using the “None” option to allow maximum variables for analysis. 
![](figures/SA_DataFilter.png)

*Normalisation*
- MetaboAnalyst provides the normalisation procedures with three categories to improve the quality of your dataset such as sample normalisation, data transformation, and data scaling. For this module, as the example dataset has undergone the preprocessing procedure, thus, none of the strategies is required.
![](figures/SA_Normalization2.png)


In case your dataset requires normalisation procedures, after selecting and normalising, you can click “View Result” to review the results and to compare “before” and “after” processes.

#### Statistical analysis
After data processing, the toolbox appears with different analysis paths to select such as univariate analysis, chemometrics analysis, or cluster analysis. In this module, we introduce the process of chemometrics analysis, specifically principal component analysis (PCA) and orthogonal partial least squares - discriminant analysis (O-PLS-DA). 

##### ***Principal component analysis (PCA)***
The PCA is used to study the metabolic overview, similarities, and differences of all samples. 
![](figures/SA_PCA_Allgroups.png)

The visualisation of PCA results can be reviewed by different kinds of plots provided by MetaboAnalyst. The first plot “Overview” displays pairwise score plots of PCA results from top 5 principal components (PCs). 
![](figures/SA_PCA_LCMSOverview2.png)

Next to that is the “Scree Plot” which displays the accumulated variance explained and the variance explained by individual PC. 
![](figures/SA_PCA_LCMSScreePlot2.png)

In addition, “2D Scores Plot” can be used to study the clustering between groups.
![](figures/SA_PCA_LCMS2DScoresPlot2.png)

##### ***Orthogonal partial least squares - discriminant analysis (O-PLS-DA)***
The O-PLS-DA is used to investigate further in pairwise comparison aiming to identify the differences between groups. Therefore, it requires the step to select two interested groups for the analysis through “Data editor”. For the current dataset, the example is conducted for a pairwise comparison model between “Raw_day 0” and “Raw_2 weeks”. 
![](figures/SA_OPLSDA_LCMSDataEditor.png)

After the normalisation step which follows the instructions mentioned above, the analysis can be performed straight away by clicking “OrthPLSDA” in the left panel under “Statistics” section. Similar to PCA, the visualisation of O-PLS-DA results can be reviewed by different kinds of plots provided by MetaboAnalyst. The first “Score Plot” demonstrates the significant class discrimination between “Raw_day 0” and “Raw_2 weeks”.
![](figures/SA_OPLSDA_LCMSScorePlot2.png)

Further, the “Imp. Feature (S-plot)” represents the variable influence in an O-PLS-DA model. It combines the covariance and correlation loading profiles. The loading plots combine a scatter plot “p[1]” which describes the magnitude of each variable within a model, and “p(corr)[1]” which represents the reliability of each variable (model correlation). What’s more, we can choose the significance discriminated variable, click on it to access “Feature View” which is a box and whisker plot representing the difference in relative concentrations of this particular variable. 
![](figures/SA_OPLSDA_LCMSSPlot2.png)

In the same window, we can also take a look at the table summarised from values of “p[1]” and “p(corr)[1]” by clicking on “View the detailed data table”. The variables at the outermost bottom and top of the loading plot were sorted in the order of potentially relevant metabolites with significant differences in the pairwise comparison. Thus, these potentially variables (or chemical shift, ppm) can be employed for further metabolite identification.
![](figures/SA_OPLSDA_LCMSDetailedTable2.png)

The statistical parameters obtained from the current O-PLS-DA model, such as the fitness and predictability determined by  R2X, R2Y, and Q2 values, can be reviewed in “Model Overview”. 
![](figures/SA_OPLSDA_LCMSModelOverview2.png)

Last but not least, the computationally intensive procedure known as “Permutation” can also be carried out in the same window, next to “Model Overview”.  Depending on the size of the dataset, we could set the appropriate number for permutation.
![](figures/SA_OPLSDA_LCMSPermutation2.png)

### Download Results
The results from MetaboAnalyst (all tables and figures) can be downloaded in “Download” section located in the left panel. We can either choose to download single files or all the files composed in “Download.zip”. In addition, a PDF analysis report can also be generated using the button “Generate Report”. 
![](figures/SA_Download.png)

---
[↥ **Back to top**](#top)

## Additional materials <a name="extra"></a>
In Metaboanalyst, we have learnt how to identify metabolites that are significantly different between two conditions (experimental groups) of choice. Sometimes, however, we are interested in particular features (such as odour satisfaction level :)) of our samples regardless of the experimental group they come from. In this case, we would rely of statistical test such as PLS or OPLS which currently are not currently available on Metaboanalyst. 

Besides MetaboAnalyst, another choice for chemometrics analysis that we could employ for metabolome data analysis is SIMCA (requires paid license). SIMCA is the multivariate data analysis software developed by Umetrics. The software provides different features including:
- Plot the spectra and conduct multivariate models (PCA, PLS, OPLS)
- Filter data with appropriate tools
- Compare and validate model results

Thus, it provides more analysis tools compared to MetaboAnalyst. Key differences are that SIMCA allows users to:
- indicate file contents in more detail (such as Primary ID, Secondary IDs, and other information as desired for both variables and observations)
- specify the workset for each analysis model
- fit the model (the number of components can be changed by selecting different fitting methods apart from the default)
- use either categorical or continuous Y variables.

The example below show how we could do this on SIMCA. You may notice that this software require more steps in setting up the analysis and might feel less friendly, but you might also notice that it allows greater flexibility in customising the details of your analysis parameters.

- [Using SIMCA with continuous Y variables (NMR)](#contYnmr)
- [Using SIMCA with continuous Y variables (LC-MS)](#contYlcms)

### Using SIMCA with continuous Y variables (NMR) <a name="contYnmr"></a>
First, prepare the dataset for SIMCA software on your group laptop. 

- Open the file **NMR intensity.xlsx** in Excel. Remove the rows labelled as "Run order" and "Class" and save the file as **NMR intensity_Manual2.xlsx**.

![](figures_SIMCA_NMR2/Slide2.png)

![](figures_SIMCA_NMR2/Slide3.png)

Then open SIMCA software. You might see an empty workspace, or a workplace with some existing dataset and analysis results. By default, SIMCA will retain the work environment when it is closed and re-opened. 

Click **File** tab to start importing data into SIMCA. Then choose **Regular project**. Then select the Excel file that you just created previously. 
![](figures_SIMCA_NMR2/Slide4.png)
![](figures_SIMCA_NMR2/Slide5.png)
![](figures_SIMCA_NMR2/Slide6.png)

Now we need to modify the table a bit. First click **Edit** tab. Then click **Transpose**
![](figures_SIMCA_NMR2/Slide7.png)

Click the the name of the second row and choose **Include row** (Otherwise it may be considered as another list of IDs)
![](figures_SIMCA_NMR2/Slide8.png)

Click on the third column header and choose **Secondary ID**. 
![](figures_SIMCA_NMR2/Slide9.png)

Click on the name of the first row and choose **Primary ID**. 
![](figures_SIMCA_NMR2/Slide10.png)

Click on the second column header and choose **Y-variable**. This **Sat_odour** column contains dour satisfaction level.
![](figures_SIMCA_NMR2/Slide11.png)
**Need new Slide11 - not Primary ID.... Y-variable**

Click on the **Home** tab then click **Finish**
![](figures_SIMCA_NMR2/Slide12.png)

You will get a little message box about missing data. The missing data are the the odour satisfaction level of the QC samples. They are missing because the QC samples are not part of the odour satisfactory test but were prepared during the sample preparation. Click **Yes to all** to remove the QC samples from the downstream analysis.
![](figures_SIMCA_NMR2/Slide13.png)

Once the dataset is set up, SIMCA will create the first statistical model by default, and it will try to select a relevant model for your data type. In this workshop, you will notice the PLS model appear on the list because our data contain continuous Y vairable. 

Right click on the line and choose **New as Model 1...**. This will create a new model based on the selected one (say, if you have any setting, it will be carried over to the new analysis). 
![](figures_SIMCA_NMR2/Slide14.png)

Click on **Variable** tab and define types of variable. Click **Sat_odour** and then select the **Y** button
![](figures_SIMCA_NMR2/Slide15.png)

Use *Shift* key to select all other variable apart from the Sat_odour. Then click **X** button.
![](figures_SIMCA_NMR2/Slide16.png)

Go to **Scale** tab, use *Shift* key to select all variables. Select **Par** for Pareto scaling. Click **Set** button. Notice that the information in the **Type** column will be changed to **Par**
![](figures_SIMCA_NMR2/Slide17.png)
![](figures_SIMCA_NMR2/Slide18.png)

Go to **Observations** tab, at the bottom that say *Class from Obs ID*, choose **Sample label** and click **Set**. In this case, the **Sample label** contain information about grouping (experimental conditions) of our data. Then click **OK** in the pop-up window.
![](figures_SIMCA_NMR2/Slide19.png)
![](figures_SIMCA_NMR2/Slide20.png)

Finally, change the type of the model to **OPLS**, and then click **OK**
![](figures_SIMCA_NMR2/Slide21.png)

Under the **Home** tab, click **Two first** to start fitting the model. 
![](figures_SIMCA_NMR2/Slide22.png)

SIMCA will spend a few seconds to perform the model. To look at the score plot, click **Scores** button under the **Home** tab. You would notice that the samples are labelled in different colours based on their *Sample label* and each data point is annotated with their *Sample ID* 
![](figures_SIMCA_NMR2/Slide23.png)

We are going to label the data points based on their odour satisfaction score. This score is provided as continuous variable that we defined at the beginning to be our Y-variable. To edit the plot, right click anywhere on the score plot and choose **Properties**.
![](figures_SIMCA_NMR2/Slide24.png)

Go to **Color** tab and in the *Coloring type* select **Vector (continuous)**. For the *Data* under *Variable*, choose **Sat_odour**, then click **OK**, and here's your new plot! Notice the locations of the data points remain the same but they are now coloured based on the heatmap of the odour satisfaction level (Sat_odour variable).
![](figures_SIMCA_NMR2/Slide25.png)
![](figures_SIMCA_NMR2/Slide26.png)
![](figures_SIMCA_NMR2/Slide27.png)

To save the plot, right click and select **Save as...**
![](figures_SIMCA_NMR2/Slide28.png)

Let's dig into this data further and see which observation is most relate to the odour satisfaction level. Go to **Analyze** tab and choose **S-plots** button. You can read more about the S-plots from the pop-up box that appear on the screen. 
![](figures_SIMCA_NMR2/Slide29.png)

The dot that is farthest of the S-plot wing has the strongest influence on Y-variables. To see its informaiton, hover a mouse over the dot and it will reveal more details.

Next, let's say we want to know which metabolite is represented by this dot. We would use its Primary ID (i.e. the ppm) to check with the MetID table that we established yesterday! 

---
[↥ **Back to top**](#top)

### Using SIMCA with continuous Y variables (LC-MS) <a name="contYlcms"></a>


---
[↥ **Back to top**](#top)
