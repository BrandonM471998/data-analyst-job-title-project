SELECT COUNT (*)
FROM data_analyst_jobs;
--1)1793 rows in this table
SELECT *
FROM data_analyst_jobs
LIMIT 10;
--2)ExxonMobil
SELECT title, company, location
FROM data_analyst_jobs
	WHERE location='TN' OR location='KY';
--3)21 job postings in TN, 6 job postings in KY
SELECT title, company, location, star_rating
FROM data_analyst_jobs
	WHERE star_rating>4 AND location='TN';
--4)3 postings have a star rating above 4 starts
SELECT COUNT (review_count)
FROM data_analyst_jobs
	WHERE review_count BETWEEN 500 AND 1000;
--5)151 postings have a review count between 500 and 1000
SELECT location AS state, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
	WHERE star_rating IS NOT NULL
		GROUP BY state
		ORDER BY avg_rating DESC;
--6) Association of Universities for Research in Astronomy
SELECT COUNT (DISTINCT title)
FROM data_analyst_jobs;
--7)881 unique job titles
SELECT COUNT (DISTINCT title)
FROM data_analyst_jobs
	WHERE location='CA';
--8)230 unique job titles for California
SELECT ROUND(AVG(star_rating),2) AS average_star_rating, company
FROM data_analyst_jobs
	WHERE review_count>5000
	AND company IS NOT NULL
		GROUP BY company
--9)40 companies with over 5000 reviews across all locations
SELECT ROUND(AVG(star_rating),2) AS average_star_rating, company
FROM data_analyst_jobs
	WHERE review_count>5000
	AND company IS NOT NULL
		GROUP BY company
		ORDER BY average_star_rating DESC;
--10)Unilever has the highest star rating of 4.19
SELECT COUNT (DISTINCT title)
FROM data_analyst_jobs
	WHERE title LIKE '%Analyst%';
--11)There are 774 distinct job titles for Analyst
SELECT title
FROM data_analyst_jobs
	WHERE title NOT ILIKE '%Analyst%' 
	AND title NOT ILIKE '%Analytics%';
--12)All entries have Tableau, which is a visualization tool
SELECT domain, skill, days_since_posting
FROM data_analyst_jobs
	WHERE days_since_posting>21
	AND domain IS NOT NULL
	AND skill ILIKE '%SQL%'
		ORDER BY title;
--BONUS)Health Care, Computer & Electronics, and Consulting are in the top 4, all listings are past 3 wks for the top 4