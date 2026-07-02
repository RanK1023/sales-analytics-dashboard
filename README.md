# Sales & Delivery Performance Analytics — Olist E-Commerce

## Business Problem
Late or unconfirmed deliveries are a major driver of customer dissatisfaction in e-commerce — they can lead to bad reviews, reduced trust in the platform, 
and customer churn. This project analyzes the Olist Brazilian e-commerce dataset (~99,000 orders) to understand delivery performance: how many orders 
are genuinely late, whether that correlates with lower review scores, and whether the platform's delivery partners are contributing to the problem.
The analysis also raises the question that if we should change our delivery partners as there is also missing info from the delivery side that the packages were not handed on the specific date. This raises a question in the credibility of our delivery partners.

## Data Quality Notes
Few mistakes were found while analysing the dataset today, first that in the Orders table out of 99442 orders 2965 orders dont have a order delivered to customer date and 1783 orders do not have an order delivered carrier date.

These both are big problems because first of all we dont know when has the customer recieved the order or weather or not the data in the order status for them is either right or not as it questions the credibility of the data.
By the second missing thing we have the problem that weather or not the data was stolen during the time of shipment or was misplaced during that time  

## Tech Stack
python language along with postgreSQL, powerBI were used to analyse the dataset for today. 


## Dataset
Dataset used was: Brazilian E-Commerce Public Dataset by Olist (Kaggle)
