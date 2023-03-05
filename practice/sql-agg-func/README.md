
# Aggregate Functions

## Introduction

В этой самостоятельной работе `1` необходимо запрашивать данные из таблицы, заполненной статистикой достижений Бэйба Рута за карьеру. Использовать агрегатные функции для извлечения интересной информации из таблицы, которую не могут отследить базовые запросы. 

## Objectives

1. Напишите запросы с агрегатными функциями, такими как `COUNT`, `MAX`, `MIN` и `SUM`.
2. Создайте псевдоним для возвращаемого значения агрегатной функции.
3. Используйте `GROUP BY` для сортировки наборов данных, возвращаемых агрегатными функциями.
4. Сравните агрегаты, используя предложение `HAVING`.

## Babe Ruth -- Career Hitting Statistics


Запросы авыполнять из таблицы `babe_ruth_stats`, представленной ниже.

year|team |league|doubles|triples|hits|HR|games|runs|RBI|at_bats|BB |SB|SO|AVG
----|-----|------|-------|-------|----|--|-----|----|---|-------|---|--|--|------
1914|"BOS"|"AL"  |1      |0      |2   |0 |5    |1   |2  |10     |0  |0 |4 |0.2
1915|"BOS"|"AL"  |10     |1      |29  |4 |42   |16  |21 |92     |9  |0 |23|0.315
1916|"BOS"|"AL"  |5      |3      |37  |3 |67   |18  |15 |136    |10 |0 |23|0.272
1917|"BOS"|"AL"  |6      |3      |40  |2 |52   |14  |12 |123    |12 |0 |18|0.325
1918|"BOS"|"AL"  |26     |11     |95  |11|95   |50  |66 |317    |58 |6 |58|0.3
1919|"BOS"|"AL"  |34     |12     |139 |29|130  |103 |114|432    |101|7 |58|0.322
1920|"NY" |"AL"  |36     |9      |172 |54|142  |158 |137|458    |150|14|80|0.376
1921|"NY" |"AL"  |44     |16     |204 |59|152  |177 |171|540    |145|17|81|0.378
1922|"NY" |"AL"  |24     |8      |128 |35|110  |94  |99 |406    |84 |2 |80|0.315
1923|"NY" |"AL"  |45     |13     |205 |41|152  |151 |131|522    |170|17|93|0.393
1924|"NY" |"AL"  |39     |7      |200 |46|153  |143 |121|529    |142|9 |81|0.378
1925|"NY" |"AL"  |12     |2      |104 |25|98   |61  |66 |359    |59 |2 |68|0.29
1926|"NY" |"AL"  |30     |5      |184 |47|152  |139 |146|495    |144|11|76|0.372
1927|"NY" |"AL"  |29     |8      |192 |60|151  |158 |164|540    |137|7 |89|0.356
1928|"NY" |"AL"  |29     |8      |173 |54|154  |163 |142|536    |137|4 |87|0.323
1929|"NY" |"AL"  |26     |6      |172 |46|135  |121 |154|499    |72 |5 |60|0.345
1930|"NY" |"AL"  |28     |9      |186 |49|145  |150 |153|518    |136|10|61|0.359
1931|"NY" |"AL"  |31     |3      |199 |46|145  |149 |163|534    |128|5 |51|0.373
1932|"NY" |"AL"  |13     |5      |156 |41|133  |120 |137|457    |130|2 |62|0.341
1933|"NY" |"AL"  |21     |3      |138 |34|137  |97  |103|459    |114|4 |90|0.301
1934|"NY" |"AL"  |17     |4      |105 |22|125  |78  |84 |365    |104|1 |63|0.288
1935|"BOS"|"NL"  |0      |0      |13  |6 |28   |13  |12 |72     |20 |0 |24|0.181

**Хоум-ран** (англ. `Home run`, `HR`) — разновидность игровой ситуации в бейсболе, представляющая собой хит, во время которого отбивающий и бегущие, находящиеся на базах, успевают совершить полный круг по базам и попасть в дом (то есть совершить пробежку), при этом не имеется ошибок со стороны защищающейся команды. В современном бейсболе хоум-ран обычно достигается сильным и точным ударом отбивающего, в результате которого мяч, не попадая в фол-зону, покидает границы аутфилда без касания земли — так называемый автоматический хоум-ран.


## Queries

#### `Q1` - total_seasons
Подсчитать общее количество лет, в течение которых Бэйб Рут играл в профессиональный бейсбол.

#### `Q2` - total_seasons_with_ny
Подсчитать общее количество `лет`, сыгранных за `NY` Yankees.

#### `Q3` - most_hr
Выбрать наибольшее количество `HR`, которое Бэйб Рут набрал за один сезон.

#### `Q4` - least_hr
Выбрать наименьшее количество попаданий `HR` за один сезон

#### `Q5` - total_hr
Вернуть общее количество `HR`, которые Бэйб Рут нанес за свою карьеру.

#### `Q6` - average_hr_per_year
Returns the average number of `HR` hit in a given year

#### `Q7` - year_and_games_with_least_hr
In the previous query, we learned that Babe Ruth hit 0 `HR` one year.  That statistic might not be indicative of a typical Babe Ruth season if he played in only a handful of games that year.  Let's figure out how many games he played that season.  Select the `year` and `games` from the season in which Ruth hit 0 `HR`.

#### `Q8` - select_yr_and_min_hr_with_at_least_100_games
We determined that Babe Ruth hit 0 homeruns in his first year, when he played only five games.  Let's avoid the outliers by looking at years in which Ruth played in at least 100 games.  Select the `year` with the least number of  `HR` from only those seasons with over 100 `games` played.

#### `Q9` - avg_batting_avg_aliased_as_career_average
Select the average, `AVG`, of Ruth's batting averages.  The header of the result would be `AVG(AVG)` which is quite confusing, so provide an alias of `career_average`.

#### `Q10` - total_years_and_hits_per_team
Select the `team` and the total number of `year`s and `hits`, but represent the results on a per team basis.  (**Hint**: you will need to sort the result with a certain clause...)

#### `Q11` - total_years_and_hr_per_team_ordered_by_hr
The previous query returns Babe Ruth's Boston stats first.  However, the overwhelming majority of Ruth's career statistics came when he played for the `NY` Yankees.  Shouldn't we list Ruth's `NY` stats first?  Write the previous query again, but this time we want Babe Ruth's total `HR`s instead of his total `hits`.  Make sure that the resulting data set lists Babe Ruth's stats as a Yankee first.  
> **Hint**:  You will need to chain another sorting clause after `GROUP BY`.

#### `Q12` - years_with_on_base_over_300
We want to know the years in which Ruth successfully reached base over 300 times.  We need to add `hits` and `BB` to calculate how many times Ruth reached base.  Simply add the two columns together (ie: `SELECT hits + BB FROM ...`) and give this value an alias of `on_base`.  Select the `year` and `on_base` for only those years with an `on_base` over 300.  
> **Hint**: `WHERE` won't work here!

## Summary

Well done! In this lab we continued adding complexity to our SQL statements and wrote aggregate functions. 
