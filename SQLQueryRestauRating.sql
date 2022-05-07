
select * from restaurant_cuisines
select * from consumer_preferences
select * from consumers
select * from restaurants
select * from ratings

select * from ratings  where Overall_Rating=2 and Food_Rating=2 AND Service_Rating=2

select * from ratings where Restaurant_ID=132564 and Overall_Rating=2 and
Food_Rating=2 AND Service_Rating=2
/* ------------Part1----------------------------*/
/* What can you learn from the highest rated restaurants? Do consumer preferences have an effect on ratings?*/
select * from restaurants where Restaurant_ID  in (select Restaurant_ID from ratings where Overall_Rating=2 and
Food_Rating=2 AND Service_Rating=2)

select Restaurant_ID, Price from restaurants where Restaurant_ID  in (select Restaurant_ID from ratings where Overall_Rating=2 and
Food_Rating=2 AND Service_Rating=2)  order by Price
/* ------------BEST RESTAURANT GROUPED BY PRICE----------------------------*/
/* ------------51 Medium price, 28 Low, 24 High----------------------------*/
select Price, count(Price) from restaurants where Restaurant_ID  in (select Restaurant_ID from ratings where Overall_Rating=2 and
Food_Rating=2 AND Service_Rating=2)  group by Price order by count(Price) DESC 

/* ------------BEST RESTAURANT GROUPED BY Smocking allowed----------------------------*/
/* ------------73 not allowed, 22 smocking section, 6 yes, 2 bar only----------------------------*/
select Smoking_Allowed, count(Smoking_Allowed) from restaurants where Restaurant_ID  in (select Restaurant_ID from ratings where Overall_Rating=2 and
Food_Rating=2 AND Service_Rating=2)  group by Smoking_Allowed order by count(Smoking_Allowed) DESC 

/* ------------BEST RESTAURANT GROUPED BY Area----------------------------*/
/* ------------94 closed area, 9 open area----------------------------*/
select Area, count(Area) from restaurants where Restaurant_ID  in (select Restaurant_ID from ratings where Overall_Rating=2 and
Food_Rating=2 AND Service_Rating=2)  group by Area order by count(Area) DESC

/* ------------BEST RESTAURANT GROUPED BY Alcohol_Service----------------------------*/
/* ------------66 dont offer,  29 wine and beer , 8 Full bar----------------------------*/
select Alcohol_Service, count(Alcohol_Service) from restaurants where Restaurant_ID  in (select Restaurant_ID from ratings where Overall_Rating=2 and
Food_Rating=2 AND Service_Rating=2)  group by Alcohol_Service order by count(Alcohol_Service) DESC 

/* ------------BEST RESTAURANT GROUPED BY State----------------------------*/
/* --------------San Lui Potosi 73,  Morelos 18, Tamaulipas 12--------------------------*/
select State, count(State) from restaurants where Restaurant_ID  in (select Restaurant_ID from ratings where Overall_Rating=2 and
Food_Rating=2 AND Service_Rating=2)  group by State order by count(State) DESC


/* Sorting  restaurant cuisine */
select Cuisine, count(Cuisine) from restaurant_cuisines group by Cuisine order by count(Cuisine) DESC

/* Sorting  Customer preferance cuisne */
select Preferred_Cuisine, count(Preferred_Cuisine) from consumer_preferences group by Preferred_Cuisine order by count(Preferred_Cuisine) DESC

/* ------------Part2----------------------------*/
select * from consumers
/* What are the consumer demographics? Does this indicate a bias in the data sample?*/
/* -----STATE   San Luis Petosi 86,  Morelos 27, Tamaulipas 25----------------------------*/
select State, count(State) from consumers group by State order by count(State) DESC
/* ----BIAS--------Marital Status   124 single   Married 10   Null 0----------------------------*/
select Marital_Status, count(Marital_Status) from consumers group by Marital_Status order by count(Marital_Status) DESC
/* ------------Abstemious	51 Casual Drinker	47 Social Drinker	40----------------------------*/
select Drink_Level, count(Drink_Level) from consumers group by Drink_Level order by count(Drink_Level) DESC

/* ----BIAS----nonSmocker 	109 Smocker	26  NULL	0-------*/
select Smoker, count(Smoker) from consumers group by Smoker order by count(Smoker) DESC

/* ---BIAS-----Occupation student 113 Employer 16  Unemployed 2 Null 0-------*/
select Occupation, count(Occupation) from consumers group by Occupation order by count(Occupation) DESC

/* --------Budjet Medium	91  Low	35   High	5 NULL	0-------*/
select Budget, count(Budget) from consumers group by Budget order by count(Budget) DESC

/* ----BIAS----Children	Independent	113 -- Kids	11 Dependent	3 NULL	0-------*/
select Children, count(Children) from consumers group by Children order by count(Children) DESC