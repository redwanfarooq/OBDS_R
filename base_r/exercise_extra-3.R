# Set up
vector1 <- 1:10
vector2 <- letters[1:10]
vector3 <- rnorm(10, mean = 0, sd = 10)
df <- data.frame(vector1, vector2, vector3, stringsAsFactors = FALSE)
str(df)

# 1. Look up the function rnorm() – what does it do?
# 2. What does stringsAsFactors mean?
# 3. One can select columns from a data frame using either the name or the position.
#    Use both methods to print the last two columns from the df data frame.
df[, -(seq_along(ncol(df) - 2))] # Generalised form for last 2 columns
df[, 2:3] # Specifying last 2 column numbers
df[, c("vector2", "vector3")] # Specifying last 2 column names

# 4. Print all letters in the vector2 column of the data frame where the vector3 column has a positive value
df$vector2[which(df$vector3 > 0)]

# 5. Look up the function paste(). Create a new vector combining the all columns of df separated by a underscore.
vector4 <- paste(df$vector1, df$vector2, df$vector3, sep = "_")
vector4
