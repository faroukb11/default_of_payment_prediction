
# default of payment prediction
Machine Learning project

**This project was originally done in R. I only kept the data visualization part in R , and recoded the rest in Python .**
# default of payment prediction(Overview)
* In this project, I built a machine learning model (accuracy ~ 70 %) to help a bank predict the risk of default payment for granting a loan .
* Transformed and normalized the data before feeding it to the model .
* Resampled the data using 3 strategies (over-sampling, under-sampling, Synthetic Minority Over-sampling) to balance the target variable.
* Optimized SVM, SGD, Random Forest , KNN  and Naive Bayes classifiers using GridsearchCV to obtain the best performing model  knowing that  **the main goal is to minimize financial risks by avoiding granting loans incorrectly**.
* Built two pipelines for preprocessing and applying  the model to the new data .
## Code and Resources Used 
**Python Packages:** pandas, numpy, scipy.stats, sklearn, imblearn, collections.

**R Packages:** ggplot2

**Data :** 2 CSV files provided by my Data mining and ML teacher mr. Nicolas PASQUIER.  
 


## Data Strucure
The two sets of data concern the measures that a bank takes to reduce the default rate of loan repayments. The Data Projet.csv file contains financial and demographic information about 1200 clients who have already taken out a loan, with information on whether or not there has been a default payment for each (default variable). The Data Projet New.csv file contains information on 300 clients for whom the bank wants to predict the risk of default payment for granting a loan.

The data set contains 1200 rows and  12 columns. The following is the description of each column :

| Feature| Description | Values |
| --- | --- | --- |
| branch (categorical) | Code of the customer's activity branch. |{3, 13, 15, 20, 25, 49, 60, 64, 68, 73, 74, 75, 76, 77, 91}|
| ncust (integer) |Number of customers in the business branch. |[1919, 4809] |
| customer (integer) |Customer ID, Unique identifier for each customer. |[10010, 453800] |
| age (integer) | Age in number of years. |[18, 79] |
| ed (categorical)| Level of education after high school.| {HS, HS+2, HS+3, HS+4, HS+5} |
| employ(integer) | Number of years with the current employer.| [0, 63] |
| address (integer) | Number of years at current address.| [0, 34] |
| income (float) | Household income in  k$.| [12.0, 1079.0] |
| debtinc (float) | Credit card debit  in  k$.| [0.0, 40.7] |
| creddebt(float) | Credit Card Debt to Credit Ratio (x100). | [0.00, 35.97] |
| othdebt (float) | Other debts in  k$.| [0.00, 63.47] |
| default(Boolean) |Has a payment default occurred? target variable.| {Yes, No} |


## Exploratory Data Analysis
I looked at the distributions of the data and the value counts for the default feature. Below are a few highlights from the  charts. 

![alt text](https://github.com/faroukb11/default_of_payment_prediction/blob/main/default.png "default distribution")
<img src="https://github.com/faroukb11/default_of_payment_prediction/blob/main/CC_dist.png" width="400" height="300" hspace="20"/>
<img src="https://github.com/faroukb11/default_of_payment_prediction/blob/main/employ_dist.png" width="400" height="300"/>
<img src="https://github.com/faroukb11/default_of_payment_prediction/blob/main/scatter_a_a.png" width="400" height="300" hspace="20"/>
<img src="https://github.com/faroukb11/default_of_payment_prediction/blob/main/scatter_d_i.png" width="400" height="300"/>
<img src="https://github.com/faroukb11/default_of_payment_prediction/blob/main/scatter_dc_d.png" width="400" height="300"/>



## Data preprocessing and feature engineering 
After studying the data, I needed to clean it up and tranform it . I made the following changes and created the following features:

*	Created and applied function to translate default and ed.
*	Created credit feature (cred = debtinc/creddebt + othdebt - income)
*	Removed outliers using the Z-score
* Factorized ed 
*	Selected the best features to predict default
*	Normalized the data using the Standardscaler
*	Buit a pipeline for automating data cleaning 


## Model building 
After splitting data into train and test sets (test size  20%), i tried resampling the train sets using 3 different strategies (over-sampling, under-sampling, Synthetic Minority Over-sampling) in order to balance classes.
For each sampling strategy , i tried and optimized the following models :
* SVM
* Randomforest
* K-nearest neighbors
* Naive Bayes
* Logistic regression
* SGD

I chose the metrics  recall and F1 score to evaluate the models . Considering the  model's priority is to correctly identify the positive class (in our case, "yes" for default in payment) , a high recall value indicates that the model is able to identify most of the positive cases correctly


## Model performance
The KNN model clearly out performed the other algorithms on the test set .

| Model| Sampling | Recall | F1 score | Accuracy |
| --- | --- | --- | --- | --- |
| KNN | SMOTE |***0.89***|**0.70**|**70 %**|
| Naive Bayes |SMOTE |0.89|0.65|61.6 %|
| SVM |Under |0.79|0.70|73.75 %|
| SGD |Under |0.78|0.68|70.83 %|
| LR |Under |0.77|0.70|73.3 %|
| RF |Under |0.73|0.67|71.25 %|

The matrix below illustrate the model's performance :

<img src="https://github.com/faroukb11/default_of_payment_prediction/blob/main/knnmatrix.png"  >
