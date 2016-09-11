
CREATE database Movies

use Movies

DROP TABLE IF EXISTS Movies;

CREATE TABLE Movies 
(
  movie varchar(100) NOT NULL,
  movietype varchar(100) NULL,
  reviewer varchar(100) NULL,
  score int NULL
)

DROP TABLE IF EXISTS Reviewer;

CREATE TABLE Reviewer 
(
  reviewer varchar(100) NOT NULL,
  gender varchar(100) NOT NULL,
  age_bracket varchar(100) NOT NULL
)


#select * from Movies

LOAD DATA INFILE 'c:/mysqldata/Movies.csv' 
INTO TABLE Movies
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(movie,movietype,reviewer,score)

#select * from Reviewer

LOAD DATA INFILE 'c:/mysqldata/Reviewer.csv' 
INTO TABLE Reviewer
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(reviewer,gender,age_bracket)

#select *
#from movies m
#inner join reviewer r 
#on m.reviewer = r.reviewer


#select m.movietype,r.gender,avg(m.score)
#from movies m
#inner join reviewer r 
#on m.reviewer = r.reviewer
#group by  m.movietype,r.gender
#order by m.movietype asc,r.gender asc 


#select m.movietype,r.age_bracket,avg(m.score)
#from movies m
#inner join reviewer r 
#on m.reviewer = r.reviewer
#group by  m.movietype,r.age_bracket
#order by m.movietype asc,r.gender asc 

#select m.movietype,r.age_bracket,r.gender,avg(m.score)
#from movies m
#inner join reviewer r 
#on m.reviewer = r.reviewer
#group by  m.movietype,r.age_bracket,r.gender
#order by m.movietype asc,r.gender asc,r.age_bracket asc 


