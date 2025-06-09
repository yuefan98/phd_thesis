# Measurement Model Validation of Second-Harmonic Nonlinear Electrochemical Impedance Spectroscopy

This repository contains the essential code and data for the paper "Measurement Model Validation of Second-Harmonic Nonlinear Electrochemical Impedance Spectroscopy"

This repository can be cited with: 


For further information or if this code is used, please go to or cite the following paper:

-------------
### Abstract
-------------

Second harmonic nonlinear electrochemical impedance spectroscopy (2nd-NLEIS) is emerging as a powerful complement to traditional EIS, though a data workflow and validation method is required to improve its adoption. We present a data analysis workflow that utilizes conservative total harmonic distortion (THD) metrics in the input and output spectra to ensure adequate linearity for EIS analysis and adequate instrument performance for collecting 2nd NLEIS. We show that 2nd-NLEIS spectra satisfy Kramers–Kronig (KK) relations, which lets us develop strategies to validate the stationarity and causality assumptions that underpin both EIS and 2nd-NLEIS measurements. A measurement model (MM) test is developed based on the Kramers–Kronig (KK) compliance of 2nd-NLEIS spectra to facilitate data validation. Cost and confidence interval algorithms are used to automate MM fitting. These methods are evaluated with synthetic EIS and 2nd-NLEIS data, as well as experimental EIS and 2nd NLEIS data from a Samsung 18650 NMC||C cell, NMC||C pouch cells and in-house Li||Cu coin cell. Overall, this work provides a robust way to validate and optimize the input modulation for simultaneous EIS and 2nd-NLEIS analysis, paving the way for more reliable model parameterization and error analysis.  

### Software Dependencies
----------------------------------------------------------------
This repository was developed using the following versions of the subsequent softwares:

* Python 3.11.10
* Conda 23.1.0
* Git Bash for MacOS

The conda environment used for this work can be recreated with the following commands:

```conda env create -f environment.yml```

```conda activate mm_test```

----------------------------------------------------------------
### Folders
----------------------------------------------------------------
**jupyter**: This folder contains essential data and Supplementary Jupyter Notebook used to generate figures for this work



