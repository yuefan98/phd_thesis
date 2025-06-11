The data folder contains all 10228 P2D Simulation based on parameter range introduced in Chapter 8.3.
Sobol sampling is used to generate 10228 distinct EIS and 2nd-NLEIS spectra.

Run 402,404,2875,4250 are missing due to comvergence failure

Note: the P2D simulation assumes exp(iwt) perturbation
the model used in nleis.py assumes cos(wt) perturbation

To align these two models, the nleis.py simulations and fittings are multiplied by 2 to match with P2D simulation.

model_runs_512_10239.txt contains the parameter set for all the simulation

run_simulations.m is the MATLAB file to perform COMSOL calculation through MATLAB LIVE link

P2D-NLEIS_revised_final.mph is the COMSOL file to perform main calculation
