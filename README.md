# Apple_Stock

Brief Background:

  The technological era has made devices such as phones and laptops essential in our lives. Apple, originally a small tech company founded in 1976, rose to prominence and became one of the FAANG companies in 2017. Before its rise to FAANG status, the price of Apple stock was always under $100. However, with Apple's position among the FAANG companies, its potential as a company rose, and so did its stock value. Now, the question arises: Is Apple's stock worth buying in the long-run?
  
  In this project, I will use the historical dataset of Apple from Kaggle to analyze the trend and distribution of the closing price for its stock. Using both Random Forest and LSTM (Long Short-Term Memory) models, I will attempt to predict the price of Apple's stock in 1 year and 3 years, covering the period from 2021 to 2023. By implementing SQL, I will determine the validity of these predictions.

Goals of the Project:
1. Data Preprocessing  and Exploration of the Closing Stock Price
2. Random Forest Prediction with hyperparameters for the next year (2021)
3. LSTM predictions for the next 3 years (2021-2023)
4. SQL queries to find the statistical of the dataset and the lower and upper boundary for the prediction

Resources of data:
1. Apple Dataset From Kaggle:

https://www.kaggle.com/datasets/tarunpaparaju/apple-aapl-historical-stock-data

2. Apple Dataset From Yahoo

https://finance.yahoo.com/quote/AAPL/

This repository contains the following files:
1. Apple Stock  -  CSV
2. Apple Stock  - IPYNB (Data Preprocessing, Data Exploration, Random Forest, LSTM) 
7. Apple Stock - SQL
8. Model Evaluation of the IPYNB

Some conclusions: 

  Based on the results from the previous models, the LSTM model demonstrated better performance compared to the Random Forest model in terms of price prediction. The LSTM model's predictions are closely aligned with the observed trend in the price of Apple stocks from 2021 to 2023. The predicted price range of around $150 was in line with the actual price movement. In contrast, the Random Forest model may not have performed as well due to overfitting, as shown by the predicted price falling outside of the boundary.
The SQL query provided insights into the significant range and rise in the price of Apple stocks in the year 2023. This increase in price could be attributed to various factors, including market dynamics, major events such as the impact of Covid-19, and the release of new Apple products like the iPad and iPhone. These factors contribute to shifts in market sentiment and investor confidence, resulting in fluctuations in stock prices.

  Considering these factors, investing in Apple stock can be a favorable decision. It is advisable to monitor opportune moments to buy, such as during the launch of new products or when there is positive market sentiment towards blue-chip stocks. Investing in Apple for the long term has the potential to generate favorable returns, given the company's strong market presence, technological advancements, and consistent product innovations.


