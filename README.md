# Vehicle Service Price Prediction

This project analyzes vehicle service data from a garage over 2014–2015 and builds a machine learning model to estimate 2016 prices. The workflow involves ETL using SSIS, data cleaning using SQL and Python, and modeling using scikit-learn.

## Project Structure

vehicle-service-analysis/
├── data/
│ ├── raw/ # Original data
│ └── processed/ # Cleaned and transformed data
├── ssis_project/ # Full SSIS ETL project files
├── notebooks/
│ └── vehicle_services.ipynb # Data exploration and price prediction
├── errors/
│ └── manually_excluded_errors # Errors excluded from SQL analysis(also shown in Python)
│ └── automatically_excluded_errors # Errors excluded from the SSIS procedure
└── README.md # Project overview
