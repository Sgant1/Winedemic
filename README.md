# Final_Project AmandaMorgan Branch

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
- Complete cleaning.
- Complete joining files into annual data frame and .csv for both 2020 and 2021.
- Connect Pandas to pgAdmin.
- Merge with Ashley's code to analyze our data to answer the questions presented in our Project Proposal.
