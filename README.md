# Representation and Analysis of Statistical Signals
This repository aims at providing some MATLAB code that can be used as examples for signal processing and analysis of noisy signals.

The code is written as a MATLAB live script, and can be read by using MATLAB. For easy viewing, PDF (directly view on Github) and HTML files (download and open on browser) are also available.

## Description of Files
1. `Stochastic_Processes.mlx`: Includes brownian motion (both correlated and non correlated), Poisson process, Markov Chains and diffusion process.
2. `Filtering_time_Series.mlx`: Includes Moving Average (MA) process, noise smoothening, auto-covariance, Auto-regressive (AR) process and noisy sinusoid vs AR process.
3. `Time_Estimation.mlx`: Includes estimation of auto and inter-correlation functions, applications of the autocorrelation function and the Levinson ALgorithm
4. `Frequency_Estimation.mlx`: Includes the periodogram, used for estimating frequencies ina  noisy signal. Also gives an implementation of the MUSIC algorithm for high resolution frequency estimation.

Each file can be run independently of the other.