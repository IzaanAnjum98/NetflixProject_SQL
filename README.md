# Netflix Data Analysis Using SQL Server
![Netflix Logo](https://github.com/IzaanAnjum98/NetflixProject_SQL/blob/main/netflix-logo-png-transparent.png)

## Objectives
- Analyze the number of movies and TV shows added over the years and identify trends.
- Determine the most popular genres and countries producing Netflix content to understand regional preferences and focus areas.
- Analyze the distribution of content types (movies vs. TV shows) and their growth trends over time.

## Business Problems with Solutions

### Q#1: Count the number of Movies vs TV Shows
''' sql
SELECT TYPE,
       COUNT(TYPE) AS TOTAL_CONTENT
FROM NETFLIX
GROUP BY TYPE
ORDER BY TOTAL_CONTENT DESC
'''
