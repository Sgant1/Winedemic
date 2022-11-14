# Machine Learning Models

### Overview:
This project uses the Random Forest Regressor model from Scikit Learn to predict the number of wine bottles that will be purchased. Random Forest models are usually more accurate than Decision Tree models and have a lower chance of overfitting the data. Random Forest models are also easier to interpret compared to neural networks because the input features do not need to be scaled, and they don’t usually need as much tuning or optimizing either. 

However, one disadvantage of the Random Forest Regressor model is that it cannot extrapolate values that fall outside of the training data set, or values that it has not seen before. Therefore, the training data will be customized to include samples of data from each month so that it can better predict trends throughout the whole year.


### Data Preprocessing:
The wine data for each year can be imported from the PostgreSQL Winedemic database.

The data has been prepared for the model by converting columns to numerical datatypes and encoded with LabelEncoder from Scikit Learn. Columns Ship Date, Zip, and Weight are dropped.     

The data has been filtered by month and split into training and test data sets, then fit to four models with different values for max_depth in order to determine which model provides the best results.

Each of the four RandomForestRegressor models are evaluated by printing the R-squared values for the training and test sets, the Mean Squared Error, Root Mean Squared Error, And Mean Absolute Error.


### Results:
<img src="" height="" width="">
<img src="" height="" width="">

### References:
https://scikit-learn.org/stable/auto_examples/tree/plot_tree_regression_multioutput.html#sphx-glr-auto-examples-tree-plot-tree-regression-multioutput-py

https://www.kdnuggets.com/2019/06/random-forest-vs-neural-network.html


### Software:
Python 3.7.13

Pandas 1.3.5

Scikit Learn 1.0

TensorFlow 2.10.0

SQLAlchemy 1.4.32
