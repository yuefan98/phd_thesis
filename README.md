# Practical Second Harmonic Nonlinear Electrochemical Impedance Spectroscopy for Lithium-Ion Batteries
This repo contains essential jupyter notebooks and codebases for my Ph.D. thesis.

Chapter 3, 4, 6, and 8 are included in this repo. 

Chapter 2, 5, and 7 are published already and can be found in the following links:

* [Chapter 2 and 5](https://github.com/yuefan98/2nd-NLEIS-manuscripts?tab=readme-ov-file)
* [Chapter 7](https://github.com/yuefan98/nleis.py)
### Abstract
-------------
Lithium-ion batteries (LIBs) are intrinsically nonlinear electrochemical devices with two highly reactive electrodes separated by microns. Understanding the complex chemical and physical interaction between, and within, electrodes of practical LIBs requires in-situ and non-destructive characterization to advance the field. Electrochemical impedance spectroscopy (EIS) is widely used for this purpose, but the method relies on linear approximations of nonlinear processes, leading to loss of information and model degeneracy. Second harmonic nonlinear electrochemical impedance spectroscopy (2nd-NLEIS), when measured simultaneously with EIS, is shown to address the challenges of model degeneracy and loss of information found in EIS. 
In this work, we provide a practical pathway for characterizing LIBs using 2nd-NLEIS, from simplified physics-based models and experimental data validation methods to quantitative 2nd-NLEIS analysis strategies and open-source software tools. Simplified physics-based models for planar (Randles circuit) and macro-homogeneous porous electrodes are developed to capture the nonlinear behavior from Butler-Volmer kinetics and Warburg-like solid-state transport and thermodynamics. These models are the foundation for establishing nonlinear transmission line models that represent complex aging mechanisms in LIBs and measurement model tests for validating 2nd-NLEIS experimental data. Simultaneous EIS and 2nd-NLEIS analysis facilitates self-consistent physics-informed parameter estimation. A breakdown of charge transfer symmetry at the NMC cathode is observed and is correlated to the surface reconstruction induced lattice strain growth. Lastly, open-source nleis.py is developed to accelerate the adoption of this novel technique and enhance the reproducibility of the quantitative analysis.

----------------------------------------------------------------
### Folders
----------------------------------------------------------------
**Chapter 3**: This folder contians the jupyter notebook for the development for nonlinear transmission line models.

**Chapter 4**: This folder contains the jupyter notebook for the validation of 2nd-NLEIS experimental data with measurement model tests.

**Chapter 6**: This folder contains the data and jupyter notebook for the analysis EIS and 2nd-NLEIS data for aged 18650 cells, providing connection between charge transfer symmetry and surface reconstruction induced lattice strain.

**Chapter 8**: This folder contains additional un-published projects in my phd thesis, including asymmetric behavior demonstration with PyBAMM and P2D model and P2D model based data-driven model validation.

----------------------------------------------------------------
### Software Dependencies
----------------------------------------------------------------
The conda environment used for this work can be recreated with the following commands:


```bash
conda env create -f environment.yml

conda activate thesis
```