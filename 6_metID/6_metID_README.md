# Metabolite identification

## Table of Contents
1. [NMR metabolite identification](#nmr)
2. [LC-MS metabolite identification](#lcms)

## NMR metabolite identification <a name="nmr"></a>
First, we are going to use Statistical Total Correlation Spectroscopy (STOCSY) toolbox on MATLAB to identify the correlated resonances of metabolites of interest.

Open MATLAB

In MATLAB, make sure that you have set the working directory to where your processed data are stored (look at the left-hand panel if you could see your data file in .mat format). In this case, if you use KKUIPL laptop, the processed NMR data are stored at \D:\CliNaP_April2022\Processed_NMR_Data (Fig. 1)

![](Figures/MetID_Fig1.JPG)
**Figure 1**

```bash 
#Plot processed NMR spectra

Figure;
Plot(ppm, xaln);
Set(gca, 'Xdir', 'Reverse');
```
You will obtain the processed NMR spectra below.

![](Figures/MetID_Fig2.JPG)
**Figure 2**

Now, click data cursor and click the NMR signal of interest. 
![](Figures/MetID_Fig3.JPG)
**Figure 3**

![](Figures/MetID_Fig4.JPG)
**Figure 4**

![](Figures/MetID_Fig5.JPG)
**Figure 5**

![](Figures/MetID_Fig6.JPG)
**Figure 6**

![](Figures/MetID_Fig7.JPG)
**Figure 7**

![](Figures/MetID_Fig8.JPG)
**Figure 8**

![](Figures/MetID_Fig9.JPG)
**Figure 9**

![](Figures/MetID_Fig10.JPG)
**Figure 10**

![](Figures/MetID_Fig11.JPG)
**Figure 11**

![](Figures/MetID_Fig12.JPG)
**Figure 12**

![](Figures/MetID_Fig13.JPG)
**Figure 13**

![](Figures/MetID_Fig14.JPG)
**Figure 14**

![](Figures/MetID_Fig15.JPG)
**Figure 15**

![](Figures/MetID_Fig16.JPG)
**Figure 16**

![](Figures/MetID_Fig17.JPG)
**Figure 17**



---
[↥ **Back to top**](#top)

## LC-MS metabolite identification <a name="lcms"></a>
Some text here

---
[↥ **Back to top**](#top)
