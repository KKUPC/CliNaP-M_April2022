# Data pre-processing 
Before performing statistical analysis, data pre-processing is a very crucial step following data acquisition. This is to ensure the good quality of spectral data that may need some corrections in baseline and alignment. Missing data need to be reimputed. Normalisation may also be required for some datasets.

## Table of Contents
1. [NMR data pre-processing](#nmr)
2. [LC-MS data pre-processing](#lcms)

## NMR data pre-processing <a name="nmr"></a>
### Step 1. Open R studio program 

![](Figures/Figure1-1.png)

### Step 2. Set working directory 

```
#set working directory 
setwd("D:/R program training/Metabom8_demo")
```


### Step 3. Load library packages including metabom8, remotes and devtools

```
# load packages
library(metabom8)
library(remotes)
library(devtools)
```

### Step 4. Define path to NMR experiment

```
# define path to NMR experiments
data.file <- "D:/R program training/Metabom8_demo/NMR2"
```

### Step 5. Import NMR data

```
# import 1D MRS data
read1d_proc(data.file, exp_type=list(PULPROG='cpmgpr1d'))
```

### Step 6. Plot single spectrum

```
# use 'spec' to plot a single pectrum, e.g., in row position 15:
spec(X[51,], ppm, shift = range(ppm), interactive=F)
```
You should get the result like this 
![](Figures/Figure7.png)

### Step 7. Plot overlay spectra 

```
# use 'matspec' to overlay spectra, in ppm range 0 to 10
matspec(X, ppm, shift = c(-1, 10), interactive=F)
```
You should get the result like this 
![](Figures/Figure9.png)

### Step 8. Create run order
```
# create run-order based on acquisition date
meta$runOrder=rank(as.POSIXct(meta$a_DATE))
```

### Step 9. Plot TSP signal
```
# plot TSP signal
specOverlay(X, ppm, shift=c(-0.05,0.05),
            an=list( 'Facet'=meta$a_EXP, # facet
                     'RunOrder'=meta$runOrder, # colour
                     'Pulse Program'=meta$a_PULPROG) # linetype
) # linetype
```
You should get the result like this 
![](Figures/Figure12.png)

### Step 10.  Perform TSP calibration
```
# perform TSP calibration
X_cal=calibrate(X, ppm, type='tsp')
```

**Plot TSP after calibration**
```
# plot TSP after calibration
matspec(X_cal, ppm, shift=c(-0.1,0.1), interactive=F)
```

You should get the result like this 
![](Figures/Figure15.png)

### Step 11. Calculate quality control measures in water region, low field and up field
```
# calculate quality control measures
matspec(X_cal, ppm, shift=c(4.5,5), interactive=F, main='Residual Water')
matspec(X_cal, ppm, shift=c(9,11), interactive=F, main='LowField Cap')
matspec(X_cal, ppm, shift=c(-1,1), interactive=F, main='UpField Cap')
```
**You will obtain the result below**
![](Figures/Figure17.png)

For residual water

![](Figures/Figure18.png)

For low field 

![](Figures/Figure19.png)

For up field  

### Step 12. Cut unwanted region including TSP, water and noise
#### 12.1 TSP region
- Check TSP region


You should get the result like this
(Figure)

- Specify TSP region to be removed 

#### 12.2 Water region
- Check water region 


You should get the result like this
(Figure)

- Specify water region to be removed


#### 12.3 Down field noise region (ppm 9-10) 
- Check down field noise region


You should get the result like this
(Figure)

#### 12.4 Gather all regions to be removed and excision of TSP, water and noise regions

### Step 13. Baseline correction

**Visual assessment**

You should get the result like this
(Figure)
(Figure)


The red dash line represents the uncorrected baseline, the black line represents the baseline correction spectrum. 


### Step 14. Normalisation, PQN method 
```
# PQN normalisation
X_pqn=pqn(X_bl, add_DilF = 'NULL')
```

### Step 15. Visual inspection of the pre-processed NMR spectra

```
#The visual inspection of the pre-processed NMR spectra:
matspec(X_pqn, ppm, shift = range(ppm), interactive=F)                                 
matspec(X_pqn, ppm, shift = c(1.2, 1.7), interactive=F)
```

**You will obtain the result below**

![](Figures/Figure36.png)

The pre-processed NMR spectra at ppm 1-9.

![](Figures/Figure37.png)

The pre-processed NMR spectra at ppm 1.2-1.7.

### Step 16. Export NMR spectra to data table
#### 16.1 Transpose data of x_pqn and ppm

```
#Transpose NMR data to create csv file
x_pqn2 <- t(x_pqn)
ppm2 <- t(ppm)
```

#### 16.2 Export NMR data to .csv file 

```
#Export NMR data to .csv file
write.table(X_pqn2, file = "x_pqn2", quote = FALSE, sep = ", ",
            eol = "\n", na = "NA", dec = ".", row.names = FALSE,
            col.names = TRUE, qmethod = c("escape", "double"),
            fileEncoding = "")

write.table(ppm3, file = "ppm3", quote = FALSE, sep = " ,",
            eol = "\n", na = "NA", dec = ".", row.names = FALSE,
            col.names = TRUE, qmethod = c("escape", "double"),
            fileEncoding = "")
 ```

#### 16.3 Open csv file in excel to rearrange the format file for multivariate analysis
![](Figures/Figure40-1.png)





---
[↥ **Back to top**](#top)

## LC-MS data pre-processing <a name="lcms"></a>
Some text here

---
[↥ **Back to top**](#top)
