# Vehicle Service Price Prediction

This project analyzes vehicle service data from a garage over 2014–2015 and builds a machine learning model to estimate 2016 prices. The workflow involves ETL using SSIS, data cleaning using SQL and Python, and modeling using scikit-learn.

## Project Structure

vehicle-service-analysis/<br />
├── data/<br />
│ ├── raw/ # Original data<br />
│ └── processed/ # Cleaned and transformed data<br />
├── ssis_project/ # Full SSIS ETL project files<br />
├── notebooks/<br />
│ └── vehicle_services.ipynb # Data exploration and price prediction<br />
├── errors/<br />
│ └── manually_excluded_errors # Errors excluded from SQL analysis(also shown in Python)<br />
│ └── automatically_excluded_errors # Errors excluded from the SSIS procedure<br />
└── README.md # Project overview<br />
