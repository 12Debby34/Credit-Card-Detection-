Credit Card Fraud Detection 
This dataset is a collection of credit card transactions, with each transaction labeled as either legitimate or fraudulent. It serves as a valuable resource for developing and evaluating machine learning models designed to identify and prevent financial fraud.

Dataset Overview and Features
This credit card fraud dataset contains a large number of transactions, with a total of 284,807 transactions. The dataset contains transactions made by credit cards in September 2013 by European cardholders. To ensure confidentiality, the original features of the data have been transformed using Principal Component Analysis (PCA).
The dataset includes the following key features:
•	Time: This feature contains the seconds elapsed between each transaction and the first transaction in the dataset.
•	Amount: The transaction amount.
•	V1, V2, ..., V28: These are the principal components resulting from the PCA transformation. The original features (e.g., transaction location, cardholder details, etc.) are not provided.
•	Class: This is the target variable. It's a binary indicator where 0 represents a legitimate transaction and 1 represents a fraudulent one.

   
. Severe Class Imbalance 
The most significant characteristic of this dataset is its extreme class imbalance. The number of fraudulent transactions is minuscule compared to the number of legitimate ones.
•	Legitimate Transactions: Approximately 284,315
•	Fraudulent Transactions: Approximately 492
•	Fraud Ratio: The fraudulent transactions account for only about 0.172% of the total.
This imbalance is a major challenge. A model that simply predicts every transaction as legitimate would achieve over 99.8% accuracy, but it would be useless as it fails to detect any fraud.  Using the Area Under the Precision-Recall Curve (AUPRC) to measure the accuracy would be ideal.  A high recall score is especially important to ensure that most fraudulent transactions are caught, even at the cost of some false positives.
