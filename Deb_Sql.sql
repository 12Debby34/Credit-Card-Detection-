Use Deb_SQL

go
select * from DeboCredit
---Determine the number of fraudulent and non-fraudulent transactions in the dataset
select 'Fraudulent transactions' as Transaction_type,
count('Fraudulent transactions') as Count from [DeboCredit] where Class=1

UNION ALL
select 'Non-Fraudulent transactions' as Transaction_type,
count('Non-Fraudulent transactions') as count from [DeboCredit] where Class=0

---What is the percentage of the class that was fraud?
select Class, count(*) as Fraud_class,
count(*) * 100.0/ sum(count(*)) over () as Fraud_class_Percent
from [DeboCredit]
group by Class

---The average time of the transactions or maximum time of transactions
select MAX(Time) as MAXTransactionTime from DeboCredit

---The least amount of transaction made in the dataset with a response variable (class) of 1
select MIN(Amount) as MinTransactionAmount from DeboCredit
where Class=1 

---What is the average transaction amount in the dataset?
select AVG(Amount) as AVGTransactionAmount from DeboCredit