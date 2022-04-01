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
---
[↥ **Back to top**](#top)

## LC-MS data pre-processing <a name="lcms"></a>
Some text here

---
[↥ **Back to top**](#top)
