-- QUERY 1 : AVERAGE CUSTOMER AGE GROUP BY "MARITAL STATUS" 
SELECT "Marital Status" , AVG(age) AS average_age
FROM customer
GROUP BY "Marital Status" ;

-- QUERY 2 : AVERAGE CUSTOMER AGE GROUP BY "GENDER"
SELECT gender  , AVG(age) AS average_age
FROM customer 
GROUP BY gender ;

-- QUERY 3 : TOTAL TRANSACTION GROUP BY STORE NAME
SELECT store.storename  , SUM(transaction.qty)
FROM "transaction"
INNER JOIN store ON transaction.storeid  = store.storeid 
GROUP BY store.storename 
ORDER BY SUM DESC
LIMIT 1;

-- QUERY 4 : TOTAL AMOUNT GROUP BY PRODUCT NAME 
SELECT product."Product Name"  , SUM(transaction.totalamount)
FROM "transaction"
INNER JOIN product OSN transaction.productid = product.productid  
GROUP BY product."Product Name"  
ORDER BY SUM desc
limit 1;
