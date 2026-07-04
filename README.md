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

## Insights:

1) Out of the total 99.41k orders worth 13.59M Brazilian dollars Approximately 92.9K orders with a value worth 12.61M Brazilian dollars were delivered before on an average of 13 days before the estimated time of delivery resulting in an average review score of 4.21 while the remaining 6.53K orders of value 985.9K Brazilian dollars were delivered late on an average of 10 days with an average review score of 2.27

2) During our analysis we also figured that the lowest average delivery delay was found in AC, RO, and AP, while the highest average delay was found in AL, MA, and SE

3) It was also found that the average review score given by the repeat buyer was 4.12 while that of single time buyer was 4.08.This is a much smaller gap than the on-time vs late-delivery difference, that is 4.21 vs 2.27, suggesting delivery timing is a far stronger driver of customer satisfaction than repeat-purchase behavior

## Limitations-
1) No cost or margin data is available in this dataset, so all revenue figures reflect gross sales, not profitability.

2) Review score is a lagging and incomplete proxy for customer satisfaction which is not every customer leaves a review, so the score reflects only a subset of buyers.

3) December 2016 shows an unusually low order count (near-zero), likely a 
  data collection gap during the platform's early ramp-up rather than a 
  genuine business event — this skews month-over-month growth calculations 
  for that period.

4) 2,965 orders have no recorded delivery date and 1,783 have no recorded 
  carrier handoff date; these were excluded from delivery-time calculations 
  rather than assumed late or lost.

5) Delivery delay figures are averages and can mask outliers — a state with 
  a good average delay could still have a meaningful number of severely 
  late orders pulled down by many very-early ones.

## Tech Stack
python language along with postgreSQL, powerBI were used to analyse the dataset for today. 


## Dataset
Dataset used was: Brazilian E-Commerce Public Dataset by Olist (Kaggle)
