# Metabolite identification

## Table of Contents
1. [NMR metabolite identification](#nmr)
2. [LC-MS metabolite identification](#lcms)

## NMR metabolite identification <a name="nmr"></a>
First, we are going to use Statistical Total Correlation Spectroscopy (STOCSY) toolbox on MATLAB to identify the correlated resonances of metabolites of interest.

Open MATLAB

In MATLAB, make sure that you have set the working directory to where your processed data are stored (look at the left-hand panel if you could see your data file in .mat format). In this case, if you use KKUIPL laptop, the processed NMR data are stored at \D:\CliNaP_April2022\Processed_NMR_Data (Fig. 1)

![](Figures/MetID_Fig1.jpg)
**Figure 1**

```bash 
#Plot processed NMR spectra

Figure;
Plot(ppm, xaln);
Set(gca, 'Xdir', 'Reverse');
```
You will obtain the processed NMR spectra below.

![](Figures/2.jpg)
**Figure 2**

Now, click data cursor and click the NMR signal of interest. 
![](Figures/3.jpg)
**Figure 3**

![](Figures/4.jpg)
**Figure 4**

![](Figures/5.jpg)
**Figure 5**

![](Figures/6.jpg)
**Figure 6**

![](Figures/7.jpg)
**Figure 7**

![](Figures/8.jpg)
**Figure 8**

![](Figures/9.jpg)
**Figure 9**

![](Figures/10.jpg)
**Figure 10**

![](Figures/11.jpg)
**Figure 11**

![](Figures/12.jpg)
**Figure 12**

![](Figures/13.jpg)
**Figure 13**

![](Figures/14.jpg)
**Figure 14**

![](Figures/15.jpg)
**Figure 15**

![](Figures/16.jpg)
**Figure 16**

![](Figures/17.jpg)
**Figure 17**

![](Figures/18.jpg)
**Figure 18**

![](Figures/19.jpg)
**Figure 19**

![](Figures/20.jpg)
**Figure 20**

![](Figures/21.jpg)
**Figure 21**

![](Figures/22.jpg)
**Figure 22**

![](Figures/23.jpg)
**Figure 23**

---
[↥ **Back to top**](#top)

## LC-MS metabolite identification <a name="lcms"></a>
Some text here

---
[↥ **Back to top**](#top)
