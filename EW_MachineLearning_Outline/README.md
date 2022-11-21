# Machine Learning Model


### Overview:
This project uses the Random Forest Regressor model from Scikit Learn to predict the number of wine bottles that will be purchased over time.


### Methods:
1. Import dependencies. (see Software section)

2. Import data from 2019, 2020 and 2021 from the PostgreSQL Winedemic database.

3. Feature and Target variables:
    - Features for the model are 'Company Name', 'City', 'State', and 'Year', 'Month' and 'Day' (extracted from the 'Created Date').
    - The target variable for the model is 'Item/Bottle Count'.

4. Model Selection: 
    - We used the Random Forest Regressor model from Scikit Learn as our regression model to make predictions. Random Forest models are usually more accurate than single Decision Tree models and typically have a lower chance of overfitting the data. Random Forest models are also easier to use compared to neural networks because the input features do not need to be scaled in order to produce acceptable results, and they don't usually need as much optimizing or tuning (no need to determine the optimal number of units, layers, epochs, etc.). 
    - However, one disadvantage of the Random Forest Regressor model is that it cannot extrapolate values that fall outside of the training data set, so the model will only be able to predict within the range of values that it has seen before. In particular, we expect outlier data points during COVID lockdown periods, as well as spikes in wine purchases during the holiday season from October through December. In this case, the training and testing data should be customized so that the model can learn from these extreme values and better predict trends over time. (see Step 6: Split data into train and test sets). 

5. Data Preprocessing and Feature Engineering:
    - Columns to Drop: 'Unnamed: 0', 'Order Number', 'Ship Date', 'Zip', and 'Weight'.
        - We dropped 'Unnamed: 0' and 'Order Number' because they are identifier values that shouldn't have any influence on the predicting the target variable. Dropping these columns reduces unnecessary noise for the model.
        - 'Ship Date' can be dropped because we want to focus on the date the order was created and reduce noise. We consider 'Created Date' to be a more accurate indicator of a customer's motivation to create a wine purchase compared to the 'Ship Date', so we only kept the 'Created Date' column.
        - 'Zip' can be dropped or converted to a standardized five-digit format. (Some entries are in the nine-digit format, ex: 10314-3222). However, 'City' and 'State' should provide enough information to the model to produce acceptable results without including the 'Zip' column.
        - 'Weight' needs to be dropped because we know it is related to the target variable and should not be used as a feature to make predictions. Alternatively, a model could be created with both 'Weight' and 'Item/Bottle Count' as target variables.
    - We encoded columns 'City' and 'State' with LabelEncoder(). The Random Forest Regressor model cannot interpret the categorical data from these columns, so the LabelEncoder() can convert the values to numeric data.
    - We also converted the 'Created Date' column to datetime format, created three columns for the 'Year', 'Month', and 'Day', then dropped the original 'Created Date' column. The date needs to be converted because the Random Forest Regressor model cannot have columns with datetime format as input.

6. Split data into train and test sets:
    - From the 3 years of available data, we used the 2019, 2020, and the first 6 months of 2021 data for training the model, and then tested the model on the last 6 months of 2021. The training data includes trends during COVID lockdown as well as samples from the holiday period and captures some of the extreme outliers that occur during that time. 

7. Altering and Optimizing the Model:
    - Initially we considered using a categorical model to predict a category range of 'Item/Bottle Count' as it seemed like a categorical model would be more accurate. However, we eventually concluded that it is more useful to have a regression model to predict a specific numerical value for purchasing trends over time, and when comparing the accuracy scores between the two types of models, the regression model scored well.
    - We also initially had 'Weight' included as a feature which produced an extremely accurate model. But this is because 'Weight' is correlated to 'Item/Bottle Count', so it needs to be either removed completely from the data set (which is what we did) or treated as a second target variable.
    - The data was also initially split into train and test data sets using the standard method of train_test_split(). However, this was changed to ensure that samples from all months of the year were included in the training set. Lastly, the training and testing data was changed yet again to split the data by training the model with past purchasing data and testing the model on the most recent available data. This seems to be the most useful method because it can eventually be easily refactored to predict trends into the future.
    - We also altered values for max_depth when creating the Random Forest Regressor model instance. This is the depth of the trees, or how many if/else statements occur until a decision is made. We used values 5, 10, 20, and "None"(default). After evaluating the model, it seems that the default value "None" provides the best model results.
    - We also altered values for n_estimators, or the "number of trees in the forest". We used values 50, 150, and 100 (default). After evaluating the model, it seems that the default value of 100 also provides the best model results.

8. Future training of the model can occur by continuing to add the actual purchase data to the dataset over time. This will increase the amount of data that the model can use to learn and can improve the accuracy of the model as well. *Note: It is not guaranteed that the model accuracy will continue to improve indefinitely with increase in the amount of data. This may lead to overfitting, and the model should continuously be evaluated to determine if it is a good fit.*

9. Evaluating the model: 
    - The model was evaluated by calculating the R-squared value, Root Mean Squared Error, and Mean Absolute Error. This allows us to measure how well the model performs, and the differences between the actual vs. predicted target values.
        - R-Squared: Measures the proportion of variance in the target that can be explained by the features. It determines how well the model, and the input features can predict outcomes.
        - Root Mean Squared Error (RMSE): The square root of the average squared difference between predicted and actual values. This measurement can be considered as a weighted error because it is more sensitive to outliers and penalizes larger differences between actual and predicted values.
        - Mean Absolute Error (MAE): The average of the absolute difference between predicted and actual target values. This measurement is easiest to interpret for general audiences and is the average error of the model.

<img src="https://github.com/Sgant1/Final_Project/blob/erica/EW_MachineLearning_Outline/Images/EvaluationFormulas.png" height="35%" width="35%">


### Results:

The evaluation of the model resulted in a R-Squared value of around 0.87, which means that the input features have an 87% chance of predicting the target. The RMSE is around 10.5, which means that the model's weighted error is off by about 10.5 bottles. Lastly, the MAE is about 1.9 which means there is an average error of 1.9 bottles.

<img src="https://github.com/Sgant1/Final_Project/blob/erica/EW_MachineLearning_Outline/Images/FinalEvaluation.png" height="50%" width="50%">

We can also visualize the model's output and compare the actual vs. predicted 'Item/Bottle Count' from the available data. The image below shows the actual total 'Item/Bottle Count' per month from January 2019 through December 2021 in blue, and the model's  predicted 'Item/Bottle Count' for the last six months of 2021 is shown in red.

<img src="https://github.com/Sgant1/Final_Project/blob/erica/EW_MachineLearning_Outline/Images/VizAll3Years.png">



### References:
https://scikit-learn.org/stable/auto_examples/tree/plot_tree_regression_multioutput.html#sphx-glr-auto-examples-tree-plot-tree-regression-multioutput-py

https://www.kdnuggets.com/2019/06/random-forest-vs-neural-network.html


### Software:
Python 3.7.13

Pandas 1.3.5

Scikit Learn 1.0

TensorFlow 2.10.0

SQLAlchemy 1.4.32