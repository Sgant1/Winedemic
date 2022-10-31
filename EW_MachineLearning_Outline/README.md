# Machine Learning Models

### Overview:
A sample dataset of preliminary wine data has been used to train and test a few different machine learning models. In this project the target variable is ‘Item/Bottle Count’, which can be predicted with either a classification model or a linear regression model. The goal is to have the model predict an integer amount of wine that will be sold.

### Data Preprocessing:
The data used in each model has been converted to numerical datatypes and encoded with LabelEncoder from Scikit Learn. 
The data is also split into features and targets and scaled with the MinMaxScaler.
***Note: It may be worth trying to encode the data with a different encoder to avoid overfitting.***

### Results:
Decision Trees Classifier
-	Max_depth=5 Accuracy Score: 0.624
-	Max_depth=10 Accuracy Score: 0.633
-	Max_depth=20 Accuracy Score: 0.607
-	Max_depth=None Accuracy Score: 0.583
Decision Trees Regressor
-	Max_depth=5 R-Squared Score: 0.537
-	Max_depth=10 R-Squared Score: 0.523
-	Max_depth=20 R-Squared Score: 0.365
-	Max_depth=None R-Squared Score: 0.216
-	
Random Forest Classifier 
-	Max_depth=5 Accuracy Score: 0.615
-	Max_depth=10 Accuracy Score: 0.632
-	Max_depth=20 Accuracy Score: 0.638
-	Max_depth=None Accuracy Score: 0.626
Random Forest Regressor 
-	Max_depth=5 R-Squared Score: 0.545
-	Max_depth=10 R-Squared Score: 0.562
-	Max_depth=20 R-Squared Score: 0.564
-	Max_depth=None R-Squared Score: 0.553
Neural Network Accuracy: 0.358

### References:
https://scikit-learn.org/stable/auto_examples/tree/plot_tree_regression_multioutput.html#sphx-glr-auto-examples-tree-plot-tree-regression-multioutput-py

### Software:
Python 3.7.13

Pandas 1.3.5

Scikit Learn 1.0

TensorFlow 2.10.0

