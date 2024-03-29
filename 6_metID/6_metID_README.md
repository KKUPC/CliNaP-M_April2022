# Metabolite identification

## Table of Contents
1. [NMR metabolite identification](#nmr)
2. [LC-MS metabolite identification](#lcms)

## NMR metabolite identification <a name="nmr"></a>

In this section, you will learn how to use a machine learning tool called statistical total correlation spectroscopy (STOCSY)to identify the potential biomarker molecules or metabolites in metabolomic studies based on NMR spectroscopic data. The STOCSY analysis method helps aid the identification of  STOCSY takes advantage of the multicollinearity of the intensity variables in a set of spectra to generate a pseudo-two-dimensional NMR spectrum displaying the correlation among the intensities of the various peaks across the whole sample.

Here, we will walk you through some exercises with four proton resonances (from four different metabolites) including peaks at 1.333, 1.933, 3.02 and 4.67 ppm.

### Performing STOCSY in R programming

Open your saved R.session (namely, 'R working_Clinap2022-1') from NMR data pre-processing session. 

Following NMR data pre-processing, you have the processed NMR data as 'X_pqn' in your R workspace. Now, we are going to use STOCSY as part of Metabom8 package to identify the correlated resonances of metabolites of interest.

In R console, do the following:

```bash 
#Load metabom8 package

library(metabom8)

#Plot processed NMR spectra

matspec(X_pqn, ppm, shift = c(1.3, 1.38), interactive=F)

```

**Example 1**

The processed NMR spectra is now plotted. You have specified the chemical shift region to 1.30 - 1.38 ppm to visualise the exact chemical shift scale of this doublet signal at 1.333 ppm to be used as the driver peak.

![](Figures/RMetID1_1.JPG)

In R console, do the following:

```bash 
#Specify the driver peak for STOCSY

driver1=1.333

#Perform STOCSY

stocsy_model=stocsy(X_pqn, ppm, driver1)

```

Now, you will obtain the STOCSY spectra below. The correlated resnonace of the driver peak (1.333 ppm) is a protron resonance at 4.145 ppm (quartet) indicated by the similar correlation coefficient (or similar colour intensity). You need to record the driver peak and its correlated peaks from STOCSY spectra on your safe place i.e. Excel spreadsheet. 

![](Figures/RMetID1.JPG)

**Example 2**

In R console, do the following:

```bash 

#Plot processed NMR spectra

matspec(X_pqn, ppm, shift = c(1.85, 2.0), interactive=F)

```

You have specified the chemical shift region to 1.85 - 2.00 ppm to visualise the exact chemical shift scale of this doublet signal at 1.933 ppm to be used as the driver peak.

![](Figures/RMetID2_1.JPG)

In R console, do the following:

```bash 
#Specify the driver peak for STOCSY

driver2=1.933

#Perform STOCSY

stocsy_model=stocsy(X_pqn, ppm, driver2)

```

Now, you will obtain the STOCSY spectra below. No correlated resnonace of the driver peak (1.933 ppm) is detected. You need to record the result from STOCSY spectra on your safe place i.e. Excel spreadsheet, in this case, 'no STOCSY correlation'. 

![](Figures/RMetID2.JPG)

**Example 3**

In R console, do the following:

```bash 

#Plot processed NMR spectra

matspec(X_pqn, ppm, shift = c(2.90, 3.15), interactive=F)

```

Now, you have specified the chemical shift region to 2.90 - 3.15 ppm to visualise the exact chemical shift scale of this doublet signal at 3.02 ppm to be used as the driver peak.

![](Figures/RMetID3_1.JPG)

In R console, do the following:

```bash 
#Specify the driver peak for STOCSY

driver3=3.02

#Perform STOCSY

stocsy_model=stocsy(X_pqn, ppm, driver3)

```

You will obtain the STOCSY spectra below. The correlated resnonaces of the driver peak (3.02 ppm) include the protron resonances at 3.17 ppm (doublet of doublets), 3.98 ppm (doublet of doublets), 6.94 ppm (doublet of doublets of doublets) and 7.19 ppm (doublet) indicated by the similar correlation coefficient (or similar colour intensity). You need to record the driver peak and its correlated peaks from STOCSY spectra on your safe place i.e. Excel spreadsheet. 

![](Figures/RMetID3.JPG)

**Example 4**

In R console, do the following:

```bash 

#Plot processed NMR spectra

matspec(X_pqn, ppm, shift = c(4.62, 4.74), interactive=F)

```

You have specified the chemical shift region to 4.62 - 4.74 ppm to visualise the exact chemical shift scale of this doublet signal at 4.67 ppm to be used as the driver peak.

![](Figures/RMetID4_1.JPG)

In R console, do the following:

```bash 
#Specify the driver peak for STOCSY

driver4=4.67

#Perform STOCSY

stocsy_model=stocsy(X_pqn, ppm, driver4)

```

Now, you will obtain the STOCSY spectra below. The correlated resnonaces of the driver peak (4.676 ppm) include a few protron resonances at 3 - 4 ppm and a peak at 5.2 (doublet) indicated by the similar correlation coefficient (or similar colour intensity). You need to record the driver peak and its correlated peaks from STOCSY spectra on your safe place i.e. Excel spreadsheet.

![](Figures/RMetID4.JPG)

Now, you will obtain the STOCSY spectra below. The correlated resnonaces of the driver peak (4.676 ppm) include a few protron resonances at 3 - 4 ppm and a peak at 5.2 (doublet) indicated by the similar correlation coefficient (or similar colour intensity). You need to record the driver peak and its correlated peaks from STOCSY spectra on your safe place i.e. Excel spreadsheet.

In the next sub-section, you will learn the same STOCSY approach but on an alternative tool - MATLAB. Then, you can make your own decision which one you prefer. However, please note that R programming is non-licensed platform with free packages, whereas MATLAB is the licensed software.

### Performing STOCSY in MATLAB environment
Now, we are going to use STOCSY toolbox on MATLAB to identify the correlated resonances of metabolites of interest. Let's get started with these three signals.

Open MATLAB on KKUIPL laptop

In MATLAB, make sure that you have set the working directory to where your processed data are stored (look at the left-hand panel if you could see your data file in .mat format). In this case, if you use KKUIPL laptop, the processed NMR data are stored at \D:\CliNaP_April2022\Processed_NMR_Data (Fig. 1)

![](Figures/MetID_Fig1.JPG)

```bash 
#Plot processed NMR spectra

Figure
Plot(ppm, xaln)
Set(gca, 'Xdir', 'Reverse')
```
You will obtain the processed NMR spectra below.

![](Figures/MetID_Fig2.JPG)

**Example 1**

Now, click data cursor and click the NMR signal of interest - in this case, we are going to select 1.329 ppm (doublet) as the driver peak. Then, right click this peak and choose 'export cursor data to work space'.  

![](Figures/MetID_Fig3.JPG)

Name the cursor data as peak_1p329 and click 'ok'.

![](Figures/MetID_Fig4.JPG)

In MATLAB command window, do the following:

```bash
#Perform STOCSY using the peak at 1.329 ppm as the driver peak

STOCSY(xaln, ppm, peak_1p329.Position(1),0.000001)
```

Now, you will obtain the STOCSY spectra below. The correlated resnonace of the driver peak (1.329 ppm) is a protron resonance at 4.146 ppm (quartet) indicated by the similar correlation coefficient (or similar colour intensity). You need to record the driver peak and its correlated peaks from STOCSY spectra on your safe place i.e. Excel spreadsheet. 

![](Figures/MetID_Fig5.JPG)

**Example 2**

Now, open the processed NMR spectra on MATLAB again and click 'data cursor', then click the peak at 1.933 ppm (singlet). Right-click and select 'export cursor data to workspace'.

![](Figures/MetID_Fig6.JPG)

Name the cursor data as peak_1p933 and click 'ok'.

![](Figures/MetID_Fig7.JPG)

In MATLAB command window, do the following:

```bash
#Perform STOCSY using the peak at 1.933 ppm as the driver peak

STOCSY(xaln, ppm, peak_1p933.Position(1),0.000001)
```

Now, you will obtain the STOCSY spectra below. No correlated resnonace of the driver peak (1.933 ppm) is detected. You need to record the result from STOCSY spectra on your safe place i.e. Excel spreadsheet, in this case, 'no STOCSY correlation'. 

![](Figures/MetID_Fig8.JPG)

**Example 3**

Now, open the processed NMR spectra on MATLAB again and click 'data cursor', then click the peak at 3.007 ppm (doublet of doublets). Right-click and select 'export cursor data to workspace'.

![](Figures/MetID_Fig9.JPG)

Name the cursor data as peak_3p007 and click 'ok'.

![](Figures/MetID_Fig10.JPG)

In MATLAB command window, do the following:

```bash
#Perform STOCSY using the peak at 3.007 ppm as the driver peak

STOCSY(xaln, ppm, peak_3p007.Position(1),0.000001)
```

Now, you will obtain the STOCSY spectra below. The correlated resnonaces of the driver peak (3.007 ppm) include the protron resonances at 3.17 ppm (doublet of doublets), 3.98 ppm (doublet of doublets), 6.94 ppm (doublet of doublets of doublets) and 7.19 ppm (doublet) indicated by the similar correlation coefficient (or similar colour intensity). You need to record the driver peak and its correlated peaks from STOCSY spectra on your safe place i.e. Excel spreadsheet. 

![](Figures/MetID_Fig11.JPG)

**Example 4**

Now, open the processed NMR spectra on MATLAB again and click 'data cursor', then click the peak at 4.676 ppm (doublet of doublets). Right-click and select 'export cursor data to workspace'.

![](Figures/MetID_Fig12.JPG)

Name the cursor data as peak_4p676 and click 'ok'.

![](Figures/MetID_Fig13.JPG)

In MATLAB command window, do the following:

```bash
#Perform STOCSY using the peak at 4.676 ppm as the driver peak

STOCSY(xaln, ppm, peak_4p676.Position(1),0.000001)
```

Now, you will obtain the STOCSY spectra below. The correlated resnonaces of the driver peak (4.676 ppm) include a few protron resonances at 3 - 4 ppm and a peak at 5.2 (doublet) indicated by the similar correlation coefficient (or similar colour intensity). You need to record the driver peak and its correlated peaks from STOCSY spectra on your safe place i.e. Excel spreadsheet.

![](Figures/MetID_Fig14.JPG)

### Searching against Chenomx database

In this sub-section, you are going to use the correlated proton resonances obtained from STOCSY to search against Chenomx database to tentatively assign metabolites.

First, open Chenomx NMR Suite software and select 'Profiler'. Then, click 'Yes' to include the samples spectrum from the software.

![](Figures/Chenomx_Fig1.jpg)

Now, we are going to import our raw NMR data to Chenomx. Click 'File'.

![](Figures/Chenomx_Fig2.jpg)

Then, click 'Open'.

![](Figures/Chenomx_Fig3.jpg)

Select the directory where your NMR data are stored. In this case, select the folder 'Processed_NMR_Data'. Then, click 'Open'.

![](Figures/Chenomx_Fig4.jpg)

Select sample no.4 by clicking folder '4' and click 'Open'.

![](Figures/Chenomx_Fig5.jpg)

Select file 'fid', then click 'Open'.

![](Figures/Chenomx_Fig6.jpg)

Now, the software will ask you to set up the the calibration and processing parameters. Tick the box which says 'Sample contains a Chemical Shape Indicator (CSI)'. Choose TSP and insert Concentration (mM) as '5.8'.

![](Figures/Chenomx_Fig7.jpg)

You will then see your spectrum.

![](Figures/Chenomx_Fig8.jpg)

In the search box, type @1.329. The metabolites containing a protron resonance at 1.329 ppm will be listed. You need to go through each metabolite and compare the 'correlated resonance fingerprints' that match to what you see on STOCSY spectra, in this case, 4.12 ppm (if you remember ^_^)

![](Figures/Chenomx_Fig9.jpg)

Lactate is the one!! Hooray!! It shows the two proton resonances: one at 1.33 ppm (doublet) and the other at 4.12 ppm (quartet). Make sure you keep this information in your safe place i.e. Excel spreadsheet.

![](Figures/Chenomx_Fig10.jpg)

Now, let's check the peak at 1.9 ppm - put '@1.9' ppm in the search box and go through the list and find the metabolite that contains a proton resonance at 1.9 ppm, in this case, no other correlated STOCSY peak.
 
![](Figures/Chenomx_Fig11.jpg)

It is acetate!! Acetate has only one peak at 1.9 ppm :)

![](Figures/Chenomx_Fig12.jpg)

Now, let's check the peak at 3.007 ppm - put '@3.007' ppm in the search box and go through each metabolite on the list and compare the 'correlated resonance fingerprints' that match to what you see on STOCSY spectra.

![](Figures/Chenomx_Fig13.jpg)

Tyrosine seems to be the one!! Kepp it safe on your note.

![](Figures/Chenomx_Fig114.jpg)

Now, let's check the peak at 4.67 ppm - put '@4.67' ppm in the search box and go through each metabolite on the list and compare the 'correlated resonance fingerprints' that match to what you see on STOCSY spectra.

![](Figures/Chenomx_Fig15.jpg)

This metabolite is glucose-6-phosphate!! 

![](Figures/Chenomx_Fig16.jpg)


### Searching against HMDB database

Now, we are going to further confirm our metabolite assignments with another public database, namely, Human Metabolome Database (HMDB).

Simple go to Google and search for 'HMDB'.

![](Figures/HMDB_Fig1.jpg)

Then, type in 'Lactic acid' in the search box.

![](Figures/HMDB_Fig2.jpg)

Select 'Lactic aicd' to visualise its 1H NMR spectrum.

![](Figures/HMDB_Fig3.jpg)

Click 'Spectra'

![](Figures/HMDB_Fig4.jpg)

Select 'Predicted 1D NMR 400 MHz'.

![](Figures/HMDB_Fig5.jpg)

Now, compare your STOCSY spectra to HMDB spectra of lactic acid.

![](Figures/HMDB_Fig6.jpg)

In the search box, type in 'Acetic acid'.

![](Figures/HMDB_Fig7.jpg)

Select 'Acetic aicd' to visualise its 1H NMR spectrum.

![](Figures/HMDB_Fig8.jpg)

Click 'Spectra'

![](Figures/HMDB_Fig9.jpg)

Select 'Predicted 1D NMR 400 MHz'.

![](Figures/HMDB_Fig10.jpg)

Now, compare your STOCSY spectra to HMDB spectra of acetic acid.

![](Figures/HMDB_Fig11.jpg)

Then, type in 'L-Tyrosine' in the search box.

![](Figures/HMDB_Fig12.jpg)

Select 'L-Tyrosine' to visualise its 1H NMR spectrum.

![](Figures/HMDB_Fig13.jpg)

Click 'Spectra'

![](Figures/HMDB_Fig14.jpg)

Select 'Predicted 1D NMR 400 MHz'.

![](Figures/HMDB_Fig15.jpg)

Now, compare your STOCSY spectra to HMDB spectra of L-tyrosine.

![](Figures/HMDB_Fig16.jpg)

Then, type in 'Glucose-6-phosphate' in the search box.

![](Figures/HMDB_Fig17.jpg)

Select 'Glucose-6-phosphate' to visualise its 1H NMR spectrum.

![](Figures/HMDB_Fig18.jpg)

Click 'Spectra'

![](Figures/HMDB_Fig19.jpg)

Select 'Predicted 1D NMR 400 MHz'.

![](Figures/HMDB_Fig20.jpg)

Now, compare your STOCSY spectra to HMDB spectra of L-tyrosine.

![](Figures/HMDB_Fig21.jpg)

Hopefully, you are now more familiar with the pipeline for NMR metabolite identification by now and ready for the CHALLENGE :)

### Hands-on

Please make your group decision whether you are going to use STOCSY on R and MATLAB at your very first step and then try to identify all 1H NMR signals on the spectra using the pipeline that you have just come across.

Have fun :)

---
[↥ **Back to top**](#top)

## LC-MS metabolite identification <a name="lcms"></a>
### MS-DIAL
For LC-MS/MS based approach, MS-DIAL software is employed for metabolite identification using quality control samples.

#### Step 1 File Conversion
-	Start “AnalysisBaseFileConverter.exe”.
-	Drag & drop MS files (.d) into this program.
-	Click “Convert”.
-	The ABF files are generated in the same directory as the raw data files. (Figure 1)
![](Figures/MS1.png)
**Figure 1**

#### Step 2 Project Creation
2.1 Click “File” then click “New project” (Figure 2,3)
![](Figures/MS2.png)
**Figure 2**

![](Figures/MS3.png)
**Figure 3**

2.2 Browse a folder containing ABF files (Figure 4)
![](Figures/MS4.png)
**Figure 4**

2.3 Select the details for LC-MS/MS (Figure 5)

1) Select Ionization type
2) Select Separation type
3) Select MS mode type
4) Select Data type (MS1 and MS/MS)
5) Select Ion mode
6) Select Target omics
7) Click “Next”
![](Figures/MS5.png)
**Figure 5**

2.4 Importing ABF files (Figure 6,7)

1) Select ABF files 
2) Set the file as “Quality Control (QC)”
3) Edit injection volume (in this sample, we injected 2 uL)
![](Figures/MS6.png)
**Figure 6**

![](Figures/MS7.png)
**Figure 7**

2.5 Setting parameters

1) Data collection tab
	Mass accuracy: After the peak detection algorithm is applied along the MS axis with a very low threshold, MS-DIAL performs spectral centroiding. By default, mass spectrum of ±0.01 and ±0.05 Da range from each peak top is integrated in MS1 and MS2, respectively. Importantly, this MS2 tolerance value is also used to build the MS/MS chromatogram for a certain m/z trace. The MS/MS chromatograms are dedicated to the MS2Dec deconvolution program.
	Data collection parameters: You can set analysis ranges (RT, MS1 and MS/MS axis). In this demonstration, your expected data range is 0-30 min for 50-1000 Da.
![](Figures/MS8.png)
**Figure 8**

2) Peak detection tab
	MS-DIAL provides two simple thresholds: minimum values for peak width and height. Peaks below these thresholds are ignored.
	Minimum peak width: indicates a threshold of peak width for filtering (0.1 and 0.05 are suitable for Q-TOF and Orbitrap, respectively).
	Smoothing method: Linear-weighted moving average is used for the peak detection as default to accurately determine the peak left- and right edges. The recommended smoothing level is 1-3. (If you already know unwanted m/z peaks because of columns or solvent contaminants, you can specify them in the Exclusion mass list).
![](Figures/MS9.png)
**Figure 9**

3) MS2Dec tab
	Deconvolution parameters mean the cut-off values to reduce the MS noises. The sigma window value is highly affected by the resolution of deconvolutions. A higher value (0.7-1.0) will reduce the peak top resolutions, i.e. the number of resolved peaks will be decreased. On the other hand, a lower value (0.1-0.3) may also recognize many noise chromatographic peaks.
![](Figures/MS10.png)
**Figure 10**

4) Identification tab
	MSP file is a mass spectrum file format for MS/MS spectrum that available on MS-DIAL website (http://prime.psc.riken.jp/compms/msdial/main.html#MSP).
![](Figures/MS11.png)
**Figure 11**

![](Figures/MS12.png)
**Figure 12**

5) Adduct tab
	You can tick the adduct ions and charge values to be considered.
![](Figures/MS13.png)
**Figure 13** 

6) Alignment tab
	Result name will be the name of each alignment shown at the pane ‘Alignment navigator’ in the main window.
	The RT and MS1 tolerances for peak alignment depend on your chromatographic conditions.
![](Figures/MS14.png)
**Figure 14** 

#### Step 3: Compound Identification
The output of data filtering 

1) MS1 spectrum
2) EIC: Extract ion chromatogram
3) Peak property
4) Experimental MS/MS spectrum
5) Reference MS/MS spectrum

The metabolite searching can be carried out using either retention time (RT) or mass-to-charge (m/z) at the bottom panel.
![](Figures/MS15.png)
**Figure 15** 

### Human metabolome database (HMDB)
The Human Metabolome Database (HMDB) is a freely available electronic database containing detailed information about small molecule metabolites found in the human body. It is intended to be used for applications in metabolomics, clinical chemistry, biomarker discovery and general education. The database is designed to contain or link three kinds of data: 1) chemical data, 2) clinical data, and 3) molecular biology/biochemistry data. The database contains 114,193 metabolite entries including both water-soluble and lipid soluble metabolites as well as metabolites that would be regarded as either abundant (> 1 uM) or relatively rare (< 1 nM). Additionally, 5,702 protein sequences are linked to these metabolite entries. (Source:  https://hmdb.ca/)

1) Go to  https://hmdb.ca/ > Click Search > Click LC-MS Search
![](Figures/HMDB1.jpg)

2) Add “m/z” > Set parameter > Click Search
![](Figures/HMDB2.jpg)

3) List of matched metabolites
![](Figures/HMDB3.jpg)

4) Description of metabolite
![](Figures/HMDB4.jpg)
![](Figures/HMDB5.jpg)

5) Select MS/MS Spectra with “Experimental Conditions” to confirm fragmentation patterns of spectrum
![](Figures/HMDB6.jpg)

6) Spectrum details, spectrum view, and experimental conditions
![](Figures/HMDB7.jpg)

### METLIN
METLIN has multiple searching capabilities including single, batch, precursor ion, neutral loss, accurate mass, and fragment searches. The popular similarity search algorithm for unknown characterization, another METLIN search option, originated on METLIN in 2008. METLIN now includes over a million molecules ranging from lipids, steroids, plant & bacteria metabolites, small peptides, carbohydrates, exogenous drugs/metabolites, central carbon metabolites and toxicants. The metabolites and other chemical entities have been individually analyzed to provide experimental MS/MS data. (Source: https://metlin.scripps.edu/)
	
1) Go to https://metlin.scripps.edu/ > Click Sign Up 
![](Figures/METLIN1.jpg)

2) Create “New User Registration”
![](Figures/METLIN2.jpg)

3) Click “Simple Search”
![](Figures/METLIN3.jpg)

4) Add “m/z” > Set parameter > Click Search
![](Figures/METLIN4.jpg)

	
---
[↥ **Back to top**](#top)
