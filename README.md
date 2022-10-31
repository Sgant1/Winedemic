# Final_Project AmandaMorgan Branch

## Communication Protocols:
- Work on assigned responsibilities throughout the week.
- Meet on Monday and Wednesday class times to discuss in depth progress.
- Check in on Tuesdays via Slack with updates. 
- If questions arise outside of these times, post in Slack in our private group chat. 

## Week 1 Objectives:
- Complete Project Proposal and get approval. (Granted!)
"[Project Proposal]"(https://docs.google.com/document/d/1zHZrEiBU_xwVG8T5lrOBgKtYCqI6weuc/edit?usp=sharing&ouid=115296781988388488466&rtpof=true&sd=true)
- Create rough draft for cleaning 2020 and 2021 data.
- Create rough draft for joining individual months into annual data frames and .csv files.
- Create rough draft for connecting Pandas to pgAdmin.
- Update README.md

## Technology Used:
- Jupyter Notebook
  - IPython          : 8.2.0
  - ipykernel        : 6.9.1
  - ipywidgets       : 7.6.5
  - jupyter_client   : 6.1.12
  - jupyter_core     : 4.9.2
  - jupyter_server   : 1.13.5
  - jupyterlab       : 3.3.2
  - nbclient         : 0.5.13
  - nbconvert        : 6.4.4
  - nbformat         : 5.3.0
  - notebook         : 6.4.8
  - qtconsole        : 5.3.0
  - traitlets        : 5.1.1
- Python: 	3.9.12
- pgAdmin/SQL: 6.8
- Excel: 16.66.1

## Data Extraction and Inspection:
- Each month .csv needed to be opened in excel and saved as a delimited file to be read properly in Jupyter Notebook.
- Initially, .ipynb files titled "Combine_DataFrames_2020"(2021) were created to extract, inspect, clean, join and transfer but the code was lengthy and confusing, so individual .ipynb files were created for each month. 
- "dirty_months_2020"(2021) are where edits were made, and then will be exported to the "cleaned_months_2020"(2021) folder. 
- Some of the months have dates in the "Created Date" column that are outside of the month in question. This is ok. Some orders were created but then a hold was placed until an adult was present to sign for the delivery. 

## Data Cleaning:
- Some cleaning was previously done to the raw data by Team Member Steve. Further cleaning was needed.
- Cleaned dtypes so all 12 months in 2020 and 2021 match.
- Dropped unnecessary columns
  - "Status"
  - "Zone"
- Dropped NaN values 
- Investigate the "Zip" column to determine if cleaning is necessary. (Some issues present with Machine Learning code)

## Data Transfer:
- Files from the "cleaned_months_2020"(2021) folder will be read into the "Join_2020"(2021) file to create an annual data frame and .csv for each year. 
- These annual data frames will then be connected and transferred to pgAdmin.

## Next Steps:
- Duplicate dirty_months_2020 and cleaned_months_2020 and then edit to 2021.
- Complete cleaning.
- Complete joining files into annual data frame and .csv for both 2020 and 2021.
- Connect Pandas to pgAdmin.
- Merge with Ashley's code to analyze our data to answer the questions presented in our Project Proposal.

--------------------------------------------------------------------------------------------------------------------------------------------------------

## Main Branch:
Cleaned files, removing 19 columns, changing ship date and created date from number format to Date format, then mass changed Company Name to Standard naming convention.

Ecom1
All online sales based.

Promotes primarily 3 pack & 6 pack boxes

Ecom2
Only ships 2 pack orders.

Club is monthly at the same time every month.

Primarily a gift based program.

Didn’t ship 2/20, 3/20.

Ecom3
Wine imports big struggle for this customer. Delays led to lack of product to sell.

Experienced more volume purchases than quality.

COVID surcharge from carriers cut into profitability reducing money spend on marketing.

Winery1
Tasting room shut down until 2021.

Does a 4 pack club every quarter

Winery2
No tasting room, but couldn’t perform private tastings due to COVID shutdown.

Bottle prices are more expensive than normal wineries, with consumers buying volume instead of quality it cut into their sales.

--------------------------------------------------------------------------------------------------------------------------------------------------------

## ashleycvirga Branch:
Same as Main Branch

--------------------------------------------------------------------------------------------------------------------------------------------------------

## SG Branch:
Same as Main Branch

--------------------------------------------------------------------------------------------------------------------------------------------------------

## eoweed Branch:
Machine Learning Models
Overview:
A sample dataset of the preliminary wine data has been used to train and test three machine learning models. In this project the target variable is ‘Item/Bottle Count’ and can be predicted with a classification model for discrete numerical data. The goal is to have the model predict an integer amount of wine that will be sold.

Data Preprocessing:
The data used in each model has been converted to numerical datatypes and encoded with LabelEncoder from Scikit Learn.

Note: It may be worth trying to encode the data with a different encoder to avoid overfitting.

Results:
Decision Trees Accuracy Score: 0.997

Random Forest Accuracy Score: 0.988

Neural Network Accuracy: 0.358

Software:
Python 3.7.13

Pandas 1.3.5

Scikit Learn 1.0

TensorFlow 2.10.0

-------------------------------------------------------------------------------------------------------------------------------------------------------
