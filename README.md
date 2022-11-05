# Winedemic

![image](https://user-images.githubusercontent.com/107363048/200133140-a924ad40-e17a-4a36-8d59-7ecb27e20cd2.png)

# Introduction

This project focuses on how the COVID-19 pandemic impacted wine sales throughout the United States by analyzing wine shipment data from six companies between January 2019 through December 2021. The goal of the project is to analyze wine sales specifically before, during, and after COVID 19 stay-at-home orders. We will analyze wine sales by state and zip code, as well as analyze sales based on state political alignment, and whether or not stay-at-home orders were in place.

We were motivated to begin this project as three of our team members work in the wine industry and we all consider ourselves wine enthusiasts. The COVID-19 pandemic impacted all industries including wine producers and sellers. We have all noticed changes in how much wine people seem to be consuming throughout the COVID-19 pandemic and we intend to try and prove (or disprove) this trend with data.

# Data

Team member Steve Gant is employed by a 3rd party logistics company and has been given permission to access datasets from the six randomly selected wine companies. The datasets contain information on wine sales by order number, company, ship date, state, zip code, shipping service, date created, weight of shipment, and item/bottle count. This data does not contain any private customer information or sales dollar amounts.
- For the purpose of this analysis we will be defining consumption/sales volume as the number of bottles shipped to the consumer.
- We will also be focusing on the date the order was created as the purchase date rather than the shipment date--the date the wine actually shipped out to the customer. We consider this to be a more accurate indicator of a customer's motivation to create a wine purchase.

- We will be using the 2019 shipping data to establish a baseline for sales pre-pandemic. The onset of the COVID-19 pandemic began around January of 2020 with many states issuing lockdowns and Shelter in Place orders around March/April 2020 and extended through around May/June of 2020. Wine shipment data for the year 2021 will be used to describe the post-pandemic/recovery period in this data story.

- The data set includes wines shipped to all states except where prohibited by law. As is the case for the states of Rhode Island, Mississippi, and Utah.

Wine Companies Studied

Three of the companies are e-commerce based companies--wine sellers who offer wines from multiple producers, and three are wineries selling their products direct to consumers. Below we've included some additional information about each company included in our data set.

- **Ecom1** : All online sales based. Promotes primarily 3 bottle & 6 bottle pack boxes.

- **Ecom2** : Only ships 2 bottle pack orders. Wine club shipments are shipped out monthly. Primarily a gift based program. Did not ship out wine for the months of February 2020 or March 2020.

- **Ecom3** : Wine imports were a big struggle for this company. Pandemic related international shipping delays led to lack of product to sell.  Experienced more volume purchases than quality. COVID surcharge from carriers cut into profitability reducing money spend on marketing.

- **Winery1** : Tasting room shut down until 2021.  Does a 4 bottle package wine club shipment every quarter.

- **Winery2** : No tasting room, but were not able to perform private tastings due to COVID-19 shutdowns and restrictions. Bottle prices are on the high end in comparison to the average winery. With most consumers choosing to buy in volume over quality it,  overall sales losses were noted by the company even though our data does was not able to include this information.

- **Winery3** : 

We have compiled a spreadsheet with specific information as it pertains to each individual state along with additional information we found might be interesting or important to consider in our analysis. This spreadsheet includes Population, Population Density, Household Size, % Uninsured, % Living in Poverty, % Population aged 65+, Lockdown Start, Initial Expected Lockdown End, Phase 1 Re-Opening Start, Re-Opening notes, Shipping Laws/Restrictions, Maximum Shipping Amount allowed in accordance with individual state laws, and Political Alignment.

[States Spreadsheet] https://docs.google.com/spreadsheets/d/1HCtPgPVyrqVgxTyKwS5Qj6OLXZJXs_VPq_MCs4-rusg/edit#gid=1741904899

- We defined Lockdown start dates as the date in which the entire state was ordered by its Governor to "Shelter in Place" -- or in the case of Alaska, "Hunker Down." Many states ordered public schools to close and limited large gathering activities earlier than March of 2020 but did not close the states non-essential activites and businesses until later-- if at all, in the case of a couple states(). This definition made the most sense to us since our goal was to analyze how lockdown orders effected wine sales. With normal, in person, avenues for purchasing wine shutdown in many cases, were sonsumers more likely to have wine shipped to them as the natural alternative?
- Political Alignment is defined in the boolean of either "red" or "blue" states based on the results of the 2020 national elecion. Pandemic response actions and decisions by government leaders became highly politicized against this dichotomy and thus we think this information will provide aditional insight into our analysis of the citizens of each state's wine purchasing behavior.

# Analysis

ERD
![](link goes here)

Database Set-up Code
![](link goes here)

Description of Machine Learning model:

The goal of the Machine Learning model is to predict ‘Item/Bottle Count’ per month. We can do this using a regression model, specifically the RandomForestRegression model from Scikit Learn. This model can be optimized by changing the hyperparameters of the model(ex: max_depth), and the predictions can be scored by printing the r-squared values once the model has been trained and tested. This model can quickly predict regression outputs (‘Item/Bottle Count’) from complex data and is more easily interpreted compared to a neural network model. 

# Summary

Questions We Hope to Answer
 How many items/bottles per month have been purchased in each state and zip code from January 2020 to December 2021?

 Is there a time of year where wine shipments increased? For example, during the holidays or during COVID stay-at-home orders?

 How do wine shipments compare between states that had stay at home orders issued vs states that did not?

 How do wine shipments compare between red states and blue states?

 Which state consumed the most wine?

 Which state saw the most significant change in wine consumption?
 
 Limitations
 
 # Software
 
 Python v.

Pandas v.

Matplotlib v.

NumPy v.

SciPy v.

Tableau v.

Google Sheets v.
