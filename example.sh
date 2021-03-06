#!/bin/bash
# all example codes will be done using pipenv
# Outputs will be saved in example/output directory

# Data cleaning
echo "<Data cleaning>"
echo "Data loading"
pipenv run python -m example.dataset_load
echo "Population"
pipenv run python -m example.dataset_population

# ODE simulation and hyperparameter estimation
echo "<ODE simulation and hyperparameter estimation>"
echo "SIR model"
pipenv run python -m example.sir_model
echo "SIR-D model"
pipenv run python -m example.sird_model
echo "SIR-F model"
pipenv run python -m example.sirf_model
echo "SIR-FV model"
pipenv run python -m example.sirfv_model
echo "SEWIR-F model"
pipenv run python -m example.sewirf_model

# Long ODE simulation with SIR-F model
echo "<Long ODE simulation with SIR-F model>"
pipenv run python -m example.long_simulation

# Reproductive hyperparameter estimation
echo "<Reproductive hyperparameter estimation>"
pipenv run python -m example.reproductive_optimization

# Scenario analysis
echo "<Scenario analysis>"
pipenv run python -m example.scenario_analysis
