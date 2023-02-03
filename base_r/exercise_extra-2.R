# 1. Create the vector 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 in three ways:
#    once using c(), once using a:b, and once using seq()
vector1.1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
vector1.2 <- 1:10
vector1.3 <- seq(1, 10)

# 2. Create the vector 2.1, 4.1, 6.1, 8.1 in two ways:
#    once using c() and once using seq()
vector2.1 <- c(2.1, 4.1, 6.1, 8.1)
vector2.2 <- seq(2.1, 8.1, by = 2L)

# 3. Create the vector 0, 5, 10, 15 in 3 ways:
#    using c(), seq() with a by argument, and seq() with a length.out argument
vector3.1 <- c(0, 5, 10, 15)
vector3.2 <- seq(0, 15, by = 5L)
vector3.3 <- seq(0, 15, length.out = 4)

# 4. Create the vector 101, 102, 103, 200, 205, 210, 1000, 1100, 1200 using a combination of the c() and seq() functions
vector4 <- c(seq(101, 103),
             seq(200, 210, by = 5L),
             seq(1000, 1200, by = 100L)
             )

# 5. Create a vector that repeats the integers from 1 to 5, 10 times. That is [1, 2, 3, 4, 5, 1, 2, 3, 4, 5, ...]. The length of the vector should be 50!
vector5 <- rep(1:5, times = 10)

# 6. Now, create the same vector as before, but this time repeat 1, 10 times, then 2, 10 times, etc., That is [1, 1, 1, ..., 2, 2, 2, ..., ... 5, 5, 5]. The length of the vector should also be 50!
vector6 <- rep(1:5, each = 10)