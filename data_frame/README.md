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
- "dirty_months_2020"(2021) are where edits are made and will be exported to the "cleaned_months_2020"(2021) folder. 
- Some of the months have dates in the "Created Date" column that are outside of the month in question. This is ok. Some orders were created but then a hold was placed until an adult was present to sign for the delivery. 

## Data Cleaning:
- Some cleaning was previously done to the raw data by Team Member Steve. Further cleaning was needed.
- Cleaned dtypes so all 12 months in 2020 and 2021 match.
- Dropped unnecessary columns
  - "Status"
  - "Zone"
- Dropped NaN values 

## Data Transfer:
- Files from the "cleaned_months_2020"(2021) folder will be read into the "Join_2020_and_Connect_SQL.ipynb"(2021) file to create an annual data frame and .csv for each year. 
- These annual data frames will then be connected and transferred to pgAdmin.

## Next Steps:
- Duplicate dirty_months_2020 and cleaned_months_2020 and then edit to 2021.
- Complete cleaning.
- Complete appending files into annual data frame and .csv for both 2020 and 2021.
- Create ERD for pgAdmin tables.
- Connect Pandas to pgAdmin.
- Merge with Ashley's code to analyze our data to answer the questions presented in our Project Proposal.
________________________________________________________________________________________________________________________________________________________
## Week 2 Objectives:
- Duplicate dirty_months_2020 and cleaned_months_2020 and then edit to 2021.
- Complete cleaning.
- Complete appending files into annual data frame and .csv for both 2020 and 2021.
- Create ERD in pgAdmin and corresponding database.
- Connect Pandas to pgAdmin.
- Merge with Ashley's code to analyze our data to answer the questions presented in our Project Proposal.
- Look at cleaning "States" excel file to create states_research db.

## Cleaning 2020, 2021, and State_Research:
- Completed cleaning all 12 months of both 2020 and 2021 and pushed cleaned .csv files to AmandaMorgan Branch. Need to confirm that Winery3 was added to 2020 and 2021 data.
- Continued to find small things that needed to be cleaned which resulted in multiple pushes.
- Winery3 was added to the months that they were active, new files were pushed, all cleaning files were updated to read in the updated data.
- Cleaned the date format in the State_Research file so all pages match.
- Cleaned the Political Alignment column so all values are formatted similarly. 
- Appended all five sheets of state info into one overall state_research df and exported to a .csv file.
- 
## Data Transfer:
- The connection to pgAdmin was moved to the Join_2020_and_Connect_SQL.ipynb (2021)files and completed. 
- Cleaned database was merged with pgAdmin and confirmed tables/columns/rows. 
- A join was created in pgAdmin:
  - Joining State_Research with Complete_2020 on “State”

## Next Steps:
- Connect Machine Learning with pgAdmin.
- Begin preliminary analysis on answering our specific questions.
- Begin looking at creating visuals with Matplotlib.
- Update README
________________________________________________________________________________________________________________________________________________________
## Week 3 Objectives: 
- Week 2 Next Steps.

## Machine Learning
- Machine Learning connected successful to pgAdmin by team member Erica.

## Preliminary Analysis:
- Created a rough outline of questions we want to answer in Jupyter Notebook. Began researching how to split our annual df into state specific data frames.
- isin() was used to slice copies of each specific state's order data.
- Total Item/Bottle Count was calculated per state.
- Working on creating a new df that includes the total Item/Bottle Count per state.
- Began working with MatPlotLib to create a pie chart showcasing Item/Bottle Count per State. (The resulting chart was not a good choice to display this information.)

## Next Steps:
- Continue working on analysis. Once syntax works, it can be applied to 2021 data.
  - Specific questions to be answered:
   - How many items/bottles per month have been purchased in each state from January 2019 to December 2021?
   - Which state consumed the most wine?
   - Which state saw the most significant change in wine consumption?
   - How do wine shipments compare between states that had stay at home orders issued vs states that did not?
   - How do wine shipments compare between red states and blue states?
   - Is there a time of year where wine shipments increased? For example, during the holidays or during COVID stay-at-home orders?
________________________________________________________________________________________________________________________________________________________
## Week 4 Objectives:
- Week 3 Next Steps.

## Analysis:
   - How many items/bottles per month have been purchased in each state from January 2019 to December 2021?
   INSERT IMAGE OF DF
   - Which state consumed the most wine?
   INSERT IMAGE OF TOP STATE
   - Which state saw the most significant change in wine consumption?
   INSERT IMAGE/GRAPH
   - How do wine shipments compare between states that had stay at home orders issued vs states that did not?
   INSERT GRAPH
   - How do wine shipments compare between red states and blue states?
   INSERT GRAPH/DF
   - Is there a time of year where wine shipments increased? For example, during the holidays or during COVID stay-at-home orders?
   INSERT GRAPH
