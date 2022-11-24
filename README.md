<h1 align="center"><u>Winedemic</u></h1>
<p align="center">
<b> </b>Ashley Virga, Erica Weed, Amanda Morgan, Zack Freskan, & Steve Gant 
</p>
 
<p align="center">
  <img width="300" src="https://user-images.githubusercontent.com/107363048/200133140-a924ad40-e17a-4a36-8d59-7ecb27e20cd2.png">
</p>

# Introduction

This project focuses on how the COVID-19 pandemic impacted wine sales throughout the United States by analyzing wine shipment data from six companies between January 2019 through December 2021. The goal of the project is to analyze wine sales specifically before, during, and after COVID-19 stay-at-home orders. We will analyze wine sales by state, sales based on state political alignment, and whether or not stay-at-home orders were in place.

We were motivated to begin this project as three of our team members work in the wine industry and we all consider ourselves wine enthusiasts. The COVID-19 pandemic impacted all industries including wine producers and sellers. We noticed changes in how much wine people seemed to be consuming throughout the COVID-19 pandemic and we intend to try and prove (or disprove) this trend with data.


# Data

Team member Steve Gant is employed by a 3rd party logistics company and has been given permission to access datasets from the six randomly selected wine companies. The datasets contain information on wine sales by order number, company, ship date, state, zip code, shipping service, date created, weight of shipment, and item/bottle count. This data does not contain any private customer information or sales dollar amounts.

- For the purpose of this analysis we will be defining consumption/sales volume as the number of bottles shipped to the consumer.

- We will also be focusing on the date the order was created as the purchase date rather than the shipment date--the date the wine actually shipped out to the customer. We consider this to be a more accurate indicator of a customer's motivation to create a wine purchase.

- We will be using the 2019 shipping data to establish a baseline for sales pre-pandemic. The onset of the COVID-19 pandemic began around January of 2020 with many states issuing lockdowns and Shelter in Place orders around March/April 2020 and extended through around May/June of 2020. Wine shipment data for the year 2021 will be used to describe the post-pandemic/recovery period in this data story.

- The includes wines shipped to all states except where prohibited by law. As is the case for the states of Rhode Island, Mississippi, and Utah.

**Wine Companies Studied**

Three of the companies are e-commerce based companies--wine sellers who offer wines from multiple producers, and three are wineries selling their products direct to consumers. Below we've included some additional information about each company included in our data set.

- **Ecommerce**
    - **Customer 1.** All online sales based. Promotes primarily 3 bottle & 6 bottle pack boxes.

    - **Customer 2.** Only ships 2 bottle pack orders. Wine club shipments are shipped out monthly. Primarily a gift based program. Did not ship out wine for the months of February 2020 or March 2020.

    - **Customer 3.** Wine imports were a big struggle for this company. Pandemic related international shipping delays led to lack of product to sell.  Experienced more volume purchases than quality. COVID surcharge from carriers cut into profitability reducing money spend on marketing.

- **Winery**
    - **Customer 1.** Tasting room shut down until 2021.  Does a 4 bottle package wine club shipment every quarter. Reopened early 2021 with redesign of outdoor seating to accommodate tastings at the winery.

    - **Customer 2.** No tasting room, but were not able to perform private tastings due to COVID-19 shutdowns and restrictions. Bottle prices are on the high end in comparison to the average winery. With most consumers choosing to buy in volume over quality, overall sales losses were noted by the company even though our data was not able to include this information.

    - **Customer 3.** Small production winery. Club 2 times a year in spring, then again in fall. Tasting room at owners house, was not open for Covid. Customer held orders for 2021 in October, November, December.

**States Research**

We have compiled a spreadsheet with specific information as it pertains to each individual state along with additional information we found might be interesting or important to consider in our analysis. This spreadsheet includes Population, Population Density, Household Size, % Uninsured, % Living in Poverty, % Population aged 65+, Lockdown Start, Initial Expected Lockdown End, Phase 1 Re-Opening Start, Re-Opening notes, Shipping Laws/Restrictions, Maximum Shipping Amount allowed in accordance with individual state laws, and Political Alignment.

[Research Data](https://docs.google.com/spreadsheets/d/1HCtPgPVyrqVgxTyKwS5Qj6OLXZJXs_VPq_MCs4-rusg/edit#gid=1741904899 "Research data for individual states Google Sheet")

- We defined Lockdown start dates as the date in which the entire state was ordered by its Governor to "Shelter in Place" -- or in the case of Alaska, "Hunker Down." Many states ordered public schools to close and limited large gathering activities earlier than March of 2020 but did not close the states non-essential activities and businesses until later-- if at all, in the case of a couple states(). This definition made the most sense to us since our goal was to analyze how lockdown orders effected wine sales. With normal, in person, avenues for purchasing wine shutdown in many cases, were consumers more likely to have wine shipped to them as the natural alternative?

- Political Alignment is defined in the boolean of either "red" or "blue" states based on the results of the 2020 national election. Pandemic response actions and decisions by government leaders became highly politicized against this dichotomy and thus we think this information will provide additional insight into our analysis of the citizens of each state's wine purchasing behavior.

# Analysis

**ERD**

![ERD](https://github.com/Sgant1/Final_Project/blob/eba177e619ff5b3cecaa3a3d7ff2b1c538072741/SQL/ERD.png)

**Database Set-up Code**

[Database Set-up Code](https://github.com/Sgant1/Final_Project/blob/8277ed984b9bb0ba5046f468a511b0789af6f3c2/SQL/schema.sql "Raw Data for Set-up Code")

**Description of Machine Learning model:**

The goal of the machine learning model is to be able to predict 'Item/Bottle Count'. By using the available data from 2019, 2020 and 2021, we can create a regression model that will predict wine purchasing trends over time. 

Initially we considered using a categorical model to predict a category range of 'Item/Bottle Count' and it seemed like a categorical model would be more accurate. However, we eventually concluded that it is more useful to have a regression model to predict a numerical value for purchasing trends over time, and when comparing the accuracy scores between the two types of models, the regression model scored pretty well. In addition, we have also altered the methods of splitting up the training and testing data. Initially we used the standard train_test_split() method on all the available data. Then we tried to customize the training data by ensuring we had samples from every month. Lastly, we decided that the most useful and reproducible way to split the data was by time period and training the model with past purchasing data and testing the model on the most recent available data. 

We used the Random Forest Regressor model to make these predictions. Random Forest models are usually more accurate than single Decision Tree models and typically have a lower chance of overfitting the data. Random Forest models are also easier to use compared to neural networks because the input features do not need to be scaled in order to produce acceptable results, and they don’t usually need as much optimizing or tuning (no need to determine the optimal number of units, layers, epochs, etc.). However, it is important to be aware that Random Forest models cannot extrapolate values that fall outside of the training data, so the model will only be able to predict within the range of values that it has seen before. 

Our input features will be the 'Company Name', 'City', 'State', and 'Created Date' ('Year', 'Month', and 'Day'), and the target will be the 'Item/Bottle Count'. We can drop the 'Order Number' column to reduce unnecessary noise because the order identification should not have any influence over the output. 'Ship Date' can also be dropped because we only want to focus on the date the order was created, whereas keeping 'Ship Date' may confuse the model. 'Zip' can be dropped because 'City' and 'State' should provide enough information to the model to produce acceptable results. In addition, the model cannot interpret categorical data, so the 'City' and 'State' columns need to be encoded and converted to numerical datatypes. 'Weight' can also be dropped because the values can be inferred from the target variable 'Item/Bottle Count'. 

From the 3 years of available data, we used the first 2.5 years for training and then tested it on the last six months of data. The first 2.5 years includes data during COVID lockdown and captures some of the extreme outliers that occurred during that time. We then used the test data to predict 'Item/Bottle Count' for the last six months of 2021.

The accuracy of the model can be scored by calculating the R-squared value, Root Mean Squared Error, and Mean Absolute Error. This will help us measure how well the model performs, and the differences between the actual vs. predicted target values.

- Current Scores:
    - Training R-Squared: 0.87
    - Test R-Squared: -7.9
    - RMSE: 10.5
    - MAE: 1.9

Further training of the model could involve adding new purchase data as it occurs over time into the training data set and continuing to use the model to predict 'Item/Bottle Count'. As the model continues to learn from more and more data, it’s prediction accuracy should increase as well. This could allow wine companies to more accurately predict purchasing trends into the future. 

To learn more about our Machine Learning model, see our outline here:
[EW_MachineLearning_Outline](https://github.com/Sgant1/Final_Project/tree/main/EW_MachineLearning_Outline "EW Machine Learning")

## Questions Answered

- [ ]  Which state received the most wine shipments?

![2019_2020_2021_top_6_states](https://github.com/Sgant1/Final_Project/blob/17846cfc249953e0ffdc59c8a8736a8a71cfd974/images/2019_2020_2021_top_6_states.png)

California and New York consistently landed in the top 2!

Florida, Pennsylvania and Texas battled it out for the next three spots.

Honorable mentions to Illinois and New Jersey.

- [ ]  Is there a time of year where wine shipments increased? For example, during the holidays or during COVID stay-at-home orders?

![US_yearly_bottles_shipped_by_month_with_NY](https://github.com/Sgant1/Final_Project/blob/308334a2fd3522f4722320f9098f806a8192a993/images/US_yearly_bottles_shipped_by_month_with_NY.png)

![blue_vs_red_yearly_by_month](https://github.com/Sgant1/Final_Project/blob/308334a2fd3522f4722320f9098f806a8192a993/images/blue_vs_red_yearly_by_month.png)

There is a clear jump in wine shipments across the US during COVID-19 Shelter In Place advisories, regardless of each state’s level of enforcement strictness.

October-November-December(OND) is traditionally considered wine industry peak shipping time.

January-February-March is considered the “Slow Season”.



- [ ]  How do wine shipments compare between red states and blue states?

![yearly_bottles_shipped_by_political_alignment](https://github.com/Sgant1/Final_Project/blob/6c6317cc8272cf8b5e88f644b86b4f46e29475b3/images/yearly_bottles_shipped_by_political_alignment.png)

Blue states have more fun! --with wine! 

Blue states dominate wine shipments accross all three years.  Though, Red states did steadily increase their slice of the pie from year to year.

- [ ]  How do wine shipments compare between states that had stay at home orders issued vs states that did not?

California was the state considered to have the most strict COVID-19 response precautionary ordinances.

![CA_yearly_wines_shipped_by_month_with_notes](https://github.com/Sgant1/Final_Project/blob/6c6317cc8272cf8b5e88f644b86b4f46e29475b3/images/CA_yearly_wines_shipped_by_month_with_notes.png)

Iowa was the state considered to have the most lax COVID-19 response precautionary ordinances.

![IA_yearly_wines_shipped_by_month_with_notes.](https://github.com/Sgant1/Final_Project/blob/6c6317cc8272cf8b5e88f644b86b4f46e29475b3/images/IA_yearly_wines_shipped_by_month_with_notes.png)

General trends in 2020 wine shipments were consistent regardless of a state's COVID-19 ordinances. 

- [ ]  Which state saw the most significant change in wine consumption?

![change_2019_to_2020](https://github.com/Sgant1/Final_Project/blob/6c6317cc8272cf8b5e88f644b86b4f46e29475b3/images/change_2019_to_2020.png)

New York
-71,229 bottles shipped


Florida
+27,057 bottles shipped

![change_2020_2021](https://github.com/Sgant1/Final_Project/blob/6c6317cc8272cf8b5e88f644b86b4f46e29475b3/images/change_2020_2021.png)

California
-20,792 bottles shipped

Hawaii
+1,443 bottles shipped

Most states decreased in total bottles shipped to them from 2020 to 2021


# Presentation

[Google Power Point](https://docs.google.com/presentation/d/1hp-BWXtIPt3EbBRc0EJJZQTD55_zflQvH2bcfMTNE8Y/edit#slide=id.g1861b40c787_0_122 "Final Presentation Power Point")

# Tableau Dashboard

[Check out our Winedemic Story on Tableau Public and interact with our data set!](https://public.tableau.com/app/profile/ashley.virga/viz/Winedemic_16690008656370/WineDemicStory?publish=yes)
 
 
# Summary

**Limitations**
 
 
**Recomendations**

- Calculate wine bottles shipped per capita and see if any of our findings differ when considering a states wine shipments to its population density

 
# Software
 
[Python 3.7.13](https://www.python.org/downloads/release/python-3713/ "Python 3.7.13")

[Pandas 1.3.5](https://pandas.pydata.org/pandas-docs/version/1.3/index.html "Pandas 1.3.5")

Matplotlib v. 3.5.1

NumPy v. 1.21.5

SciPy v.

[SQLAlchemy 1.4.32](https://www.sqlalchemy.org/blog/2022/03/06/sqlalchemy-1.4.32-released/ "SQLAlchemy 1.4.32")

[TensorFlow 2.10.0](https://www.tensorflow.org/versions "TensorFlow 2.10.0")

[Scikit Learn 1.0](https://scikit-learn.org/stable/install.html "Scikit Learn 1.0")

[Tableau 22.3.1649.0](https://public.tableau.com/app/discover "Tableau")

[Google Sheets](https://docs.google.com/presentation/d/1hp-BWXtIPt3EbBRc0EJJZQTD55_zflQvH2bcfMTNE8Y/edit#slide=id.p "Link to Google Sheets")

[Google Slides](https://docs.google.com/presentation/d/1hp-BWXtIPt3EbBRc0EJJZQTD55_zflQvH2bcfMTNE8Y/edit#slide=id.p "Link to Google Slides")
