--SELECT * FROM NETFLIX
---Q#1: Count the number of Movies vs TV Shows

--SELECT TYPE,
--       COUNT(TYPE) AS TOTAL_CONTENT
--FROM NETFLIX
--GROUP BY TYPE
--ORDER BY TOTAL_CONTENT DESC

---Q#2: Find the most common rating for movies and TV shows

--SELECT TYPE,
--       rating
--FROM
--  (SELECT TYPE,
--          Rating,
--          Count(*) AS Count_of_Content,
--          rank() over(PARTITION BY TYPE
--                      ORDER BY count(*)DESC) AS Ranking
--   FROM Netflix
--   GROUP BY TYPE,
--            rating) AS t2
--WHERE Ranking = 1

---Q#3: List all movies Released in a specific year (e.g.2000)

--Select * from Netflix
--where release_year= '2000'

---Q#4: Find the top 5  countries with the most content on Netflix


--SELECT TOP 5 country,
--           COUNT(*) AS No_Of_Content
--FROM Netflix
--WHERE country IS NOT NULL
--GROUP BY Country
--ORDER BY No_Of_Content DESC


---Q#5: Identify the longest movie

--SELECT *
--FROM Netflix
--WHERE TYPE = 'Movie'
--  AND duration=
--    (SELECT MAX(duration)
--     FROM Netflix)

---Q#6: Find All the movie/tv shows which was directed by "Rajiv Chilaka"

--SELECT * FROM Netflix
--where director= 'Rajiv Chilaka'


---Q#7: List all the TV Shows with more than 5 season

--SELECT * FROM Netflix
--WHERE Type='TV Show' and duration >= '5 Seasons'


---Q#8: Count the number of items in each genre
--SELECT value AS genre,
--       COUNT(*) AS genre_count
--FROM NETFLIX CROSS APPLY STRING_SPLIT(listed_in, ',')
--GROUP BY value
--ORDER BY genre_count DESC;


---Q#9: Find each year and the average number of content release in india on netflix

--SELECT 
--  YEAR(date_added) as Year_of, 
--  COUNT(*) as no_of_Movies 
--FROM 
--  Netflix 
--WHERE 
--  country = 'India' 
--  and date_added is NOT NULL 
--group by 
--  YEAR(date_added) 
--order by 
--  no_of_Movies desc


---Q#10 List all the movies that are documentries

--SELECT 
--  * 
--FROM 
--  Netflix 
--WHERE 
--  listed_in like '%Documentaries%'
