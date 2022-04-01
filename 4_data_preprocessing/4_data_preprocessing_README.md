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
(Figure)

### Step 7. Plot overlay spectra 

You should get the result like this 
(Figure)

### Step 8. Create run order

### Step 9. Plot TSP signal
You should get the result like this 
(Figure)

### Step 10.  Perform TSP calibration

**Plot TSP after calibration**

You should get the result like this 
(Figure)

### Step 11. Calculate quality control measures in water region, low field and up field


You should get the result like this 
(Figure)

For residual water

(Figure)
For low field 

(Figure)
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

### Step 14. Normalisation, PQN method 
### Step 15. Visual inspection of the pre-processed NMR spectra

```
#The visual inspection of the pre-processed NMR spectra:
matspec(X_pqn, ppm, shift = range(ppm), interactive=F)                                 
matspec(X_pqn, ppm, shift = c(1.2, 1.7), interactive=F)
```

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
