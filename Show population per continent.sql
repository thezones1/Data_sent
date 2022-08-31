SELECT DISTINCT c.continent
,sum( c.population ) OVER( PARTITION BY c.continent ) AS population
FROM
Country AS c
GROUP BY c.continent , population
ORDER BY c.continent
