SELECT DISTINCT c1.continent
,sum( c1.population :: float4) OVER w1  AS population
,concat(' ',
        ROUND( 
              (
              sum(c1.population :: float4)OVER w1 /
              sum(c1.population:: float4)OVER()
              )
              *100 ), ' %' )AS AVG              
FROM Country AS c1
WINDOW w1 AS( PARTITION BY continent );
--GROUP BY c1.continent , c1.population 
--ORDER BY c1.continent





