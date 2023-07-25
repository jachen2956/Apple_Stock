-- Get a overview of the columns in the table -- 
SELECT *
FROM Apple_Stock
--prevent the rows from overflowing -- 
LIMIT 10;

--2022--
--Select the traded amount and the total exchange price--
SELECT COUNT(Close) as Stock_Count, ROUND(SUM(Close),2) as Total_Price
FROM Apple_Stock
WHERE Date LIKE '2022%'
LIMIT 10;

-- Get an overview of 2022, including the max, min, and range --
SELECT ROUND(MAX(Close),2) as Max_Price, ROUND(MIN(Close),2) as Min_Price, (MAX(Close) - MIN(Close)) AS Range
FROM Apple_Stock
WHERE Date LIKE '%2022%'
LIMIT 10;

--SELECT the Q1 and Q3 of the Closing Price for 2022 -- 
SELECT ROUND(MAX(CASE WHEN Quartile = 1 THEN Close END),2) AS Q1,
       ROUND(MAX(CASE WHEN Quartile = 3 THEN Close END),2) AS Q3
FROM (
    SELECT Close, NTILE(4) OVER (ORDER BY Close) AS Quartile
    FROM Apple_Stock
    WHERE Date LIKE '%2022%'
) t;

--Find the lower and upper boundary of the stock price -- 
SELECT ROUND((Q1 - ((Q3 - Q1) * 1.5)),2) AS Lower_Boundary, ROUND((Q3 + ((Q3-Q1)*1.5)),2) AS Upper_Boundary
FROM (
    SELECT AVG(Close) AS Q1
    FROM (
        SELECT Close, NTILE(4) OVER (ORDER BY Close) AS Quartile
        FROM Apple_Stock
        WHERE Date LIKE '%2022%'
    ) t
    WHERE Quartile = 1
) Q1,

(
    SELECT AVG(Close) AS Q3
    FROM (
        SELECT Close, NTILE(4) OVER (ORDER BY Close) AS Quartile
        FROM Apple_Stock
        WHERE Date LIKE '%2022%'
    ) t
    WHERE Quartile = 3
) Q3;

--2023--
--Select the traded amount and the total exchange price--
SELECT COUNT(Close) as Stock_Count, ROUND(SUM(Close),2) as Total_Price
FROM Apple_Stock
WHERE Date LIKE '2023%'
LIMIT 10;

-- Get an overview of 2023, including the max, min, and range --
SELECT ROUND(MAX(Close),2) as Max_Price, ROUND(MIN(Close),2) as Min_Price, (MAX(Close) - MIN(Close)) AS Range
FROM Apple_Stock
WHERE Date LIKE '%2023%'
LIMIT 10;

--SELECT the Q1 and Q3 of the Closing Price for 2022 -- 
SELECT ROUND(MAX(CASE WHEN Quartile = 1 THEN Close END),2) AS Q1,
       ROUND(MAX(CASE WHEN Quartile = 3 THEN Close END),2) AS Q3
FROM (
    SELECT Close, NTILE(4) OVER (ORDER BY Close) AS Quartile
    FROM Apple_Stock
    WHERE Date LIKE '%2023%'
) t;

--Find the lower and upper boundary of the stock price -- 
SELECT ROUND((Q1 - ((Q3 - Q1) * 1.5)),2) AS Lower_Boundary, ROUND((Q3 + ((Q3-Q1)*1.5)),2) AS Upper_Boundary
FROM (
    SELECT AVG(Close) AS Q1
    FROM (
        SELECT Close, NTILE(4) OVER (ORDER BY Close) AS Quartile
        FROM Apple_Stock
        WHERE Date LIKE '%2023%'
    ) t
    WHERE Quartile = 1
) Q1,

(
    SELECT AVG(Close) AS Q3
    FROM (
        SELECT Close, NTILE(4) OVER (ORDER BY Close) AS Quartile
        FROM Apple_Stock
        WHERE Date LIKE '%2023%'
    ) t
    WHERE Quartile = 3
) Q3;