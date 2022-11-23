# Final_Project Data_Frame (AmandaMorgan Branch)

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

## Week 1 Objectives:
- Complete Project Proposal and get approval. (Granted!)
"[Project Proposal]"(https://docs.google.com/document/d/1zHZrEiBU_xwVG8T5lrOBgKtYCqI6weuc/edit?usp=sharing&ouid=115296781988388488466&rtpof=true&sd=true)
- Create rough draft for cleaning 2019, 2020 and 2021 data.
- Create rough draft for joining individual months into annual data frames and .csv files.
- Create rough draft for connecting Pandas to pgAdmin.
- Update README.md

## Data Extraction and Inspection:
- Each month .csv needed to be opened in excel and saved as a delimited file to be read properly in Jupyter Notebook.
- Initially, .ipynb files titled "Combine_DataFrames_2019"('20/'21) were created to extract, inspect, clean, join and transfer but the code was lengthy and confusing, so individual .ipynb files were created for each month. 
- "dirty_months_2019"('20/'21) are where edits are made and will be exported to the "cleaned_months_2019"('20/'21) folder. 
- Some of the months have dates in the "Created Date" column that are outside of the month in question. This is ok; some orders were created and a hold was placed until an adult was present to sign for the delivery. 

## Data Cleaning:
- Some cleaning was previously done to the raw data by Team Member Steve. Further cleaning was needed.
- Cleaned dtypes so all 12 months in 2019, 2020 and 2021 match.
- Dropped unnecessary columns
  - "Status"
  - "Zone"
- Dropped NaN values 

## Data Transfer:
- Files from the "cleaned_months_2019"('20/'21) folder will be read into the "Join_20219_and_Connect_SQL.ipynb"('20/'21) file to create an annual data frame and .csv for each year. 
- These annual data frames will then be connected and transferred to pgAdmin.

## Next Steps:
- Duplicate dirty_months_2019 and cleaned_months_2019 and edit to '20/'21.
- Complete cleaning.
- Complete appending files into annual data frame and .csv for 2019, 2020 and 2021.
- Create ERD for pgAdmin tables.
- Connect Pandas to pgAdmin.
- Merge with Ashley's code to analyze our data to answer the questions presented in our Project Proposal.
________________________________________________________________________________________________________________________________________________________
## Week 2 Objectives:
- Week 1 Next Steps
- Look at cleaning "States" excel file to create states_research db.

## Cleaning 2019, 2020, 2021, and State_Research:
- Completed cleaning all 12 months of 2019, 2020 and 2021 and pushed cleaned .csv files to AmandaMorgan Branch. Need to confirm that Winery3 was added to 2019, 2020 and 2021 data.
- Continued to find small things that needed to be cleaned which resulted in multiple pushes.
- Winery3 was added to the months that they were active, new files were pushed, all cleaning files were updated to read in the updated data.
- Cleaned the date format in the State_Research file so all pages match.
- Cleaned the Political Alignment column so all values are formatted similarly. 
- Appended all five sheets of state info into one overall state_research df and exported to a .csv file.

## Data Transfer:
- The connection to pgAdmin was moved to the Join_2019_and_Connect_SQL.ipynb ('20/'21)files and completed. 
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
- Week 2 Next Steps

## Machine Learning
- Machine Learning connected successful to pgAdmin by team member Erica.

## Preliminary Analysis:
- Created a rough outline of questions we want to answer in Jupyter Notebook. Began researching how to split our annual df into state specific data frames.
- isin()/groupby() was used to slice/group copies of each specific state's order data.
- Total Item/Bottle Count was calculated per state.
- Working on creating a new df that includes the total Item/Bottle Count per state.
- Began working with MatPlotLib to create a pie chart showcasing Item/Bottle Count per State. (The resulting chart was not a good choice to display this information.)

## Next Steps:
- Continue working on analysis. Once syntax works, it can be applied to 2020 and 2021 data.
- Create data frames that will be used in Tableau to create visuals.
________________________________________________________________________________________________________________________________________________________
## Week 4 Objectives:
- Create specific .csv files for total bottle counts (red vs blue vs total). These will be exported and used to create visuals in Tableau that will better tell our story. 

## Analysis:
### What was the total bottle count for all three years?
- 2019: 961,409
- 2020: 1,148,819
- 2021: 1,065,457
<img width="333" alt="Total_Item:Bottle_Count_by_Year" src="https://user-images.githubusercontent.com/106630710/203437362-0670bace-5585-4a52-8e16-f65322fcee92.png">

### How many items/bottles have been purchased in each state from January 2019 to December 2021?
2019:
![2019_descending_count_by_state_1-25](https://user-images.githubusercontent.com/106630710/203457060-fca94ca6-aa31-4f3b-9f62-02801388d380.png)
![2019_descending_count_by_state_26-end](https://user-images.githubusercontent.com/106630710/203456971-065a37f9-593a-4875-8d83-97f20ed36c18.png)
2020:
![2020_total_count_by_state_1-25](https://user-images.githubusercontent.com/106630710/203455489-782f15c9-9d02-4d9a-8f0d-25147215dee2.png)
![2020_total_count_by_state_26-end](https://user-images.githubusercontent.com/106630710/203455497-23334c69-aba8-4066-8919-b1a11523d715.png)
2021:
![2021_total_count_by_state_1-25](https://user-images.githubusercontent.com/106630710/203455532-32628b34-b9a6-46c2-93f8-b63ae1a217b3.png)
![2021_total_count_by_state_26-end](https://user-images.githubusercontent.com/106630710/203455538-f4aab159-b881-4524-a2d0-2e8d95547574.png)

### Which state consumed the most wine?
- 2019: New York: 190,449
- 2020: California: 130,312
- 2021: California: 109,697
### Which state consumed the least wine?
(Utah and Mississippi prohibit shipping of alcohol)
- 2019: Utah: 0 and Mississippi: 0
- 2020: Utah: 0 (One order to Mississippi got past checks and balances)
- 2021: Utah: 0 and Mississippi: 0
<img width="841" alt="2019_minmax" src="https://user-images.githubusercontent.com/106630710/203439229-0b2db93b-d9dd-4652-8d72-68f17ef3c1ad.png">
<img width="818" alt="2020_maxmin_total_bottles_by_state" src="https://user-images.githubusercontent.com/106630710/203439203-d2381490-ec4b-455b-9f77-67e1cbc229b3.png">
![2021_minmax_total states](https://user-images.githubusercontent.com/106630710/203456353-3ae391c4-8a30-4fd2-9060-4ff1b3cb680b.png)

   #### Red States: 
- Total Bottle Count for Red states in 2019: 242,612
- Total Bottle Count for Red states in 2020: 338,744
- Total Bottle Count for Red states in 2021: 322,781
<img width="589" alt="2019_total_bottle_count_red" src="https://user-images.githubusercontent.com/106630710/203440228-56fb2e37-a5a3-467e-8e92-f38521769f0d.png">
<img width="565" alt="2020_total_red_count" src="https://user-images.githubusercontent.com/106630710/202340028-7d070b9a-d91b-4b2b-bfee-6278c3d21664.png">
![2021_total_bottle_count_red](https://user-images.githubusercontent.com/106630710/203440204-a1443d2f-d578-425f-b868-a191e1cae490.png)

### How many items/bottles have been purchased in each red state from January 2019 to December 2021?
2019:
![2019_red_count_by_state](https://user-images.githubusercontent.com/106630710/203455760-efbb9f99-f917-4397-8ad0-2c115c174013.png)
2020:
![2020_total_red_count_by_state](https://user-images.githubusercontent.com/106630710/203440389-f1f32da8-ad19-49d0-889b-ca971e0f4469.png)
2021:
![2021_total_bottle_count_by_red_state](https://user-images.githubusercontent.com/106630710/203440417-dc2081f8-ab01-4111-8138-e0781200e9bf.png)

### Which Red state consumed the most wine?
- 2019: Texas: 59,999
- 2020: Florida: 82,961
- 2021: Florida: 79,220
### Which Red state consumed the least wine?
(Utah and Mississippi prohibit shipping of alcohol; not counting states that had shipping prohibited)
- 2019: Kentucky: 52
- 2020: Mississippi: 6
  - Mississippi has prohibited the shipment of alcohol, though this order in particular may have confused the checks and balances in place because it was sent to Philedelphia, Mississippi.
- 2021: Kentucky: 853
<img width="896" alt="2019_red_maxmin" src="https://user-images.githubusercontent.com/106630710/203441033-e6e93750-2371-48f8-a479-05c5ebc32b11.png">
![2020_maxmin_total_red_by_state](https://user-images.githubusercontent.com/106630710/203441249-2da69fba-7bdf-42aa-9c23-ca8ca26a6fce.png) 
![2021_minmax_red_states](https://user-images.githubusercontent.com/106630710/203441286-5ff44e77-2a6c-4c26-a6b9-bc949fc0355d.png)

   #### Blue States: 
- Total Bottle Count for Blue states in 2019: 718,797
- Total Bottle Count for Blue states in 2020: 810,075
- Total Bottle Count for Blue states in 2021: 742,676
<img width="581" alt="2019_blue_total_bottle_count" src="https://user-images.githubusercontent.com/106630710/203441547-3e46e445-c31a-46c8-9988-9c5d2e1df9aa.png">
<img width="577" alt="2020_total_blue_count" src="https://user-images.githubusercontent.com/106630710/203441592-71ac20e3-ac90-4fa9-a63a-2d26d098aa03.png">
![2021_total_bottle_count_blue](https://user-images.githubusercontent.com/106630710/203441634-1d483d54-d3d1-4173-ab64-408cd3094b62.png)

### How many items/bottles have been purchased in each blue state from January 2019 to December 2021?
2019: 
![2019_blue_count_by_state_df](https://user-images.githubusercontent.com/106630710/203456645-8cd12ea7-2e10-45e0-8a5c-0cfeec1ff3d1.png)
2020:
![2020_total_blue_count_by_state](https://user-images.githubusercontent.com/106630710/202337513-4e58ae47-a7ec-4e3c-b8c6-72b05709d2f9.png)
2021: 
![2021_total_bottle_count_by_blue_state](https://user-images.githubusercontent.com/106630710/203441765-1a4c198d-c3f6-482c-8eea-21dc61c81345.png)

 ### Which Blue state consumed the most wine?
- 2019: New York: 190,449
- 2020: California: 130,312
- 2021: California: 109,697
 ### Which Blue state consumed the least wine?
- 2019: Delaware: 644
- 2020: Utah: 0
- 2021: Delaware: 2,053
<img width="892" alt="2019_blue_maxmin" src="https://user-images.githubusercontent.com/106630710/203442162-ed45a09d-1ce6-447c-96c9-0c217ae76039.png">
![2020_maxmin_total_blue_by_state](https://user-images.githubusercontent.com/106630710/203442194-7e9a8039-0924-4179-a226-1c3022568ef6.png)
![2021_minmax_blue_states](https://user-images.githubusercontent.com/106630710/203441901-a3df2214-bff3-48f4-9d47-d36a4b951852.png)
