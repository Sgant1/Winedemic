# Machine Learning Model


### Overview:
This project uses the Random Forest Regressor model from Scikit Learn to predict the number of wine bottles that will be purchased over time.


### Methods:
1. Import dependencies. (see Software section)

2. Import data from 2019, 2020 and 2021 from the PostgreSQL Winedemic database.

3. Feature and Target variables:
    - Features for the model are Company Name, City, State, and Created Date.
    - The target variable for the model is Item/Bottle Count.

4. Model Selection: 
    - We will use the RandomForestRegressor model from Scikit Learn as our regression model. Random Forest models are usually more accurate than Decision Tree models and have a lower chance of overfitting the data. Compared to neural networks, Random Forest models are easier to interpret because the input features do not need to be scaled and the decision making process can be easily understood. They also don’t need as much tuning or optimizing.
    - However, one disadvantage of the Random Forest Regressor model is that it cannot extrapolate values that fall outside of the training data set, or values that it has not seen before. Therefore, the training and testing data will need to be customized so that the model can better predict trends over time. (see Options in Step 6: Split data into train and test sets)

5. Data Preprocessing and Feature Engineering:
    - Drop columns: Unnamed: 0, Order Number, Ship Date, Zip, and Weight.
        - We can drop Unnamed:0 and Order Number because they are just identifier values that shouldn’t have any influence on the predicting the target variable. 
        - Ship Date can be dropped because we want to reduce the noise in the data and focus on the date the order was created (aka. Created Date). We consider this to be a more accurate indicator of a customer's motivation to create a wine purchase compared to the Ship Date.
        - Zip can be dropped or converted to a standardized five-digit format. (Some entries are in the nine-digit format, ex: 10314-3222)
        - Weight needs to be dropped because we already know it is related to the target variable and should not be used as a feature to make predictions. *Alternatively, a model could be created with both Weight and Item/Bottle Count as target variables.*
    - Encode columns City, State, and Shipping Service with LabelEncoder. This will convert categorical data to numeric datatypes so that it can be understood by the model. 
    - Convert Created Date column to datetime format and create three columns for the Year, Month, and Day, then drop the original Created Date column. The date needs to be converted because the Random Forest Regressor model cannot have columns with datetime format as input. The columns must be numerical.

6. Split data into train and test sets:
    - ***Option 1:*** Take random samples from each month of the year (ex: use train_test_split on January data, then February data, then March data, etc.) And then combine all the samples into training data representing all months, and test data representing all months.
    - ***Option 2:*** Use the 2019, 2020, and the first 6 months of the 2021 data for training the model, and then test the model with the last 6 months of 2021.

7. Altering and Optimizing the Model:
    - Initially, Weight was included as a feature which produced an extremely accurate model. But this is because Weight is correlated to Item/Bottle Count, so it needs to be either removed completely, or treated as a second target variable.
    - The data was also initially split into train and test datasets using the standard method. However, this was later changed to ensure that samples from all months of the year are included in the training and test sets. Once the method was customized, the model had a much better fit to the data.
    - We also altered values for max_depth, which is the depth of the trees, or how many if/else statements occur until a decision is made. We used values 5, 10, 20, and “None”(default). After evaluating the model, it seems that the default value “None” provides the best model.
    - We also altered values for n_estimators, or the number of trees in the forest. We used values 50, 150, and 100 (default). After evaluating the model, it seems that the default value of 100 provides the best model.


8. Future training of the model can occur by continuing to add the actual purchase data to the dataset over time. This will increase the amount of data that the model can use to learn and can improve the accuracy of the model as well. *Note: It is not guaranteed that the model accuracy will continue to improve indefinitely with increase in the amount of data. This may lead to overfitting, and the model should continuously be evaluated.*

9. Evaluating the model: 
    - Once the model is fit with training data and then tested, it can be evaluated by calculating the R-squared value, Root Mean Squared Error, and Mean Absolute Error. This will help us measure how well the model performs, and the differences between the actual vs. predicted target values.
    - R-Squared: Measures the proportion of variance in the target that can be explained by the features. It determines how well the model (and the input features) can predict outcomes.
    -  Root Mean Squared Error: The square root of the average squared difference between predicted and actual values. This measurement is more sensitive to outliers and penalizes larger errors.
    - Mean Absolute Error: The average of the absolute error of difference between predicted and actual target values. This measurement is easiest to interpret for general audiences.

<img src="https://github.com/Sgant1/Final_Project/blob/erica/EW_MachineLearning_Outline/Images/EvaluationFormulas.png" height="35%" width="35%">


### Results:

As shown in the image below, the first option splitting the data into train and test sets resulted in good scores for our purposes. The trained model has an R-Squared value of around 0.86, which means that the input features have a 86% chance of predicting the target. The RMSE of 12.7 shows that the model’s prediction may be off by a weighted average of 12.7 bottles. The MAE score shows that the model’s average error is off by around 1.8 bottles. 

<img src="https://github.com/Sgant1/Final_Project/blob/erica/EW_MachineLearning_Outline/Images/All3Years_Option1.png" height="50%" width="50%">

Option 2 of splitting the data results in a model with a higher R-Squared score for the trained data, a lower RMSE, and a slightly greater MAE than Option 1. The R-Squared value of around 0.87 means that the input features have a 87% chance of predicting the target (1% more than Option 1). The RMSE is around 10.5, which means that the model’s weighted error is off by about 10.5 bottles. Lastly, the MAE is about 1.9 which means there is an average error of 1.9 bottles.

<img src="https://github.com/Sgant1/Final_Project/blob/erica/EW_MachineLearning_Outline/Images/All3Years_Option2.png" height="50%" width="50%">

Option 2 also allows us to clearly visualize the model's predictions for the last six months of data and can be refactored to predict outcomes into the future. Below is an image of the actual number of bottles purchased over time compared to the model’s predictions on the last six months.

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