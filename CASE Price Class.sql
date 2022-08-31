SELECT  prod_id,title, CASE WHEN p.price  > 20 THEN 'expensive' 
                            WHEN p.price  < 10 THEN 'cheap' 
                            WHEN p.price BETWEEN 10 AND 20 THEN 'average'
                            END AS "price class"
FROM products AS p
