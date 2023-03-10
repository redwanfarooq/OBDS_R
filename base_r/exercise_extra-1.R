# Setup variables
movie <- c("Whatever Works", "It Follows", "Love and Mercy", "The Goonies", "Jiro Dreams of Sushi", "There Will be Blood", "Moon", "Spice World", "Serenity", "Finding Vivian Maier")
year <- c("2009","2015","2015","1985","2012","2007","2009","1988","2005","2014")
boxoffice <- c(35,15,15,62,3,10,321,79,39,1.5)
genre <- c("Comedy","Horror","Drama","Adventure","Drama","SciFi","Comedy","Documentary","SciFi","Documentary")

# 1. What is the name of the 10th movie in the list?
movie[10]

# 2. What are the genres of the first 4 movies?
genre[1:4]

# 3. Some joker put Spice World in the movie names – it should be 'The Naked Gun’ Please correct the name.
movie[movie == "Spice World"] <- "The Naked Gun"

# 4. What were the names of the movies made before 1990?
year <- as.integer(year)
movie[which(year < 1990)]

# 5. What were the names of the Comedy movies? What were their boxoffice totals? (Two separate questions)
comedies <- which(genre == "Comedy")
movie[comedies]
boxoffice[comedies]

# 6. What is the name of the movie that made less than $50 Million dollars AND was a Documentary?
documentaries <- which(genre == "Documentary")
boxoffice_less_than_50 <- which(boxoffice < 50)
movie[intersect(documentaries, boxoffice_less_than_50)]
