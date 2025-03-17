/*1*/
SELECT COUNT(Name)
FROM city, country
WHERE CountryCode = 'USA';

/*2*/
SELECT * FROM country 
ORDER BY LifeExpectancy DESC;

/*3*/
SELECT DISTINCT name 
FROM city 
WHERE name LIKE 'New%';

/*4*/
SELECT * FROM country 
ORDER BY Population DESC
LIMIT 0, 10;

/*5*/
SELECT * FROM country
WHERE Population > 2000000
ORDER BY Population DESC;

/*6*/
SELECT * 
FROM city
WHERE Name LIKE 'Be%';

/*7*/
SELECT * 
FROM city
WHERE Population >=500000 AND Population <=1000000;

/*8*/
SELECT Name AS 'City Name', CountryCode AS 'Country Code', District, Population
FROM city
ORDER BY Name ASC;

/*9*/
SELECT Name AS 'City Name', CountryCode AS 'Country Code', District, Population
FROM city
ORDER BY Population DESC
LIMIT 0, 20;

/*10*/
SELECT COUNT(distinct Name), Name
FROM city
GROUP BY Name
ORDER BY Name ASC;

/*11*/
SELECT Name AS 'City Name', CountryCode AS 'Country Code', District, Population
FROM city
ORDER BY Population ASC;

/*12*/
SELECT *
FROM country
ORDER BY Population DESC
LIMIT 0, 1;

/*13*/
SELECT co.Code, co.Continent, co.Name AS Country, co.LocalName, ci.Name AS Capital
FROM  country AS co, city AS ci
WHERE co.Capital=ci.ID AND co.Name = 'Spain';

/*14*/
SELECT co.Code, co.Continent, co.Name AS Country, co.LocalName, ci.Name AS City
FROM  country AS co, city AS ci
WHERE ci.CountryCode=co.Code AND co.Continent='Europe';

/*15*/
SELECT AVG(Population), Name AS 'Country Name'
FROM country
GROUP BY(name);

/*16*/
SELECT co.Code, co.Continent, co.Name AS Country, ci.Name AS Capital, ci.Population
FROM  country AS co, city AS ci
WHERE co.Capital=ci.ID
/*ORDER BY ci.Population ASC*/
ORDER BY ci.Population DESC;

/*17*/
SELECT (SUM(Population)/SUM(SurfaceArea)) AS 'Population Density', Name AS 'Country Name'
FROM country
GROUP BY(name)
ORDER BY (SUM(Population)/SUM(SurfaceArea)) ASC;

/*18*/
SELECT Name AS 'Country Name', (GNP/Population) AS 'GDP per Capita'
FROM country
WHERE (GNP/Population)>(
SELECT AVG(GNP/Population)
FROM country)
ORDER BY (GNP/Population) DESC;

/*19*/
SELECT Name AS 'City Name', CountryCode AS 'Country Code', District, Population
FROM city
ORDER BY Population DESC
LIMIT 31, 40;