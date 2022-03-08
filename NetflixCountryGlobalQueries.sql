
-- Total # Of Unique Countries In The Country Top 10 List 

Select count(distinct(country_name)) as NumberOfUniqueCountries
From CountryTop10

-- # Of Countries A T.V Show Was In The Top 10 List  

Select ct.show_title,gt.category ,count(distinct(ct.country_name)) as UniqueCountries 
From CountryTop10 ct
LEFT OUTER Join GlobalTop10 gt on gt.show_title = ct.show_title
Where ct.category = 'TV' -- or Film 
Group by ct.show_title, gt.category
Order by UniqueCountries desc 

-- # of Weeks A T.V Show Was In The Top 10 List 

Select show_title,count(show_title) as WeeksInTop10 , count(distinct(season_title)) as NumberOfSeasons
From CountryTop10
Group By show_title
Order BY WeeksInTop10 DESC;

-- # of Hours Watched For A T.V Show 

Select show_title, category, sum(weekly_hours_viewed) as GlobalWatchHours
From GlobalTop10
Group By show_title, category
Order by sum(weekly_hours_viewed) desc




