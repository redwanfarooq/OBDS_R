# 1. Open a new Rstudio script and create 3 new objects
matrix1 <- matrix(data = rnorm(100, mean = 0, sd = 1), nrow = 10, ncol = 10)
matrix2 <- matrix(data = rnorm(100, mean = 0, sd = 1), nrow = 10, ncol = 10)
matrix3 <- matrix(data = rnorm(100, mean = 0, sd = 1), nrow = 10, ncol = 10)

# 2. Save your code as .R file and then save the workspace to a .Rdata file.
save.image(file = "exercise5.RData")

# 3. Save one object using saveRDS()
saveRDS(matrix1, file = "matrix1.rds")

# 4. Remove one of the objects – how can you check it is gone?
rm(matrix1) # Remove matrix1
ls() # List workspace objects

# 5. Clear your workspace completely (remove all objects)
rm(list = ls())

# 6. Display your current working directory.
getwd()

# 7. Make a new directory in your linux terminal and then set the R working directory to be that new directory.
setwd("/t1-data/project/obds/rfarooq/base_r/projects/day1_base_r/tmp")

# 8. Load the objects you saved in the .Rdata file
load(file = "exercise5.RData")