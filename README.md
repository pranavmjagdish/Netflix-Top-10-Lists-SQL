# Analyzing Netflix Top 10 Lists Country-Wise & Globally

This is an exploratory analysis which involved importing two different Excel files onto SQL and conducting exploratory analyses based on the data.

## Concepts Covered

- SQL Joins
- Group By,Order By
- Aggregation

## Data Analyzed 

Top 10 Lists have been analysed for 42 weeks between 7th of April 2021 to 30th of January 2022   
Please visit : https://top10.netflix.com/ for more details

### CountryTop10 

Top 10 Lists by country per week for Films and T.V. Size of the data : 

- 94 unique countries
- 1579 films across the globe
- 520 TV shows 
 
### GlobalTop10

Top 10 Lists globally per week for Films(English), TV(English) and Films(Non-English) and T.V(Non-English). This has been aggregated based on weekly hours viewed from the CountryTop10 list. Size of the data : 

- 272 Films (150 English and 122 Non-English)
- 153 TV Shows (74 English and 79 Non-English) 

## Objectives of Exploratory Analysis 

1. Which shows or films are the most global?
2. Which shows or films have been popular the longest?
3. Which shows or films has been watched the most?

## Analysis Conducted 

### Most Global Show/Film

A show/film has been called most global if it's been in the top 10 list for the most amount of countries.  
The category from the GlobalTop10 list has been brought in through a LEFT OUTER JOIN to help give better context 

There are 5 shows that have been in the top 10 lists for all 94 countries! 

### Endured Popularity 

A show is said to have been popular for the longest duration if it's been in the top 10 lists longest. 
Please Note : A show can be popular for very long in one country than be popular for shorter duration in multiple countries

Many regional shows like Crash Landing On You have featured on this list due to regional popularity dominating

### Most Binged Show/Film 

A show is said to have been most binged if it has the highest amount of watch hours globally.  

As expected, TV shows have been watched for longer than films. This shows that rewatch capacity for films are quite less compared to watching long T.V shows.


## Some Cool Findings

- **Squid Game Popularity :** With only one season, Squid Game had the most amount of watch hours globally during the time period analysed. What's more impressive is that it's beaten shows like Money Heist(5 seasons) and You(3 seasons) by watch time!

- **English vs Non-English content:** Apart from Squid Game, there are no shows that are trending worldwide (present in top 10 lists across all the 94 countries) which are English in origin. This shows that regional content or non-English shows are yet to be globally popular.



