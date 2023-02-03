# 1. Create a matrix of letters  of dimensions 3x3
matrix1 <- matrix(data = letters[1:9], nrow = 3, ncol = 3)
matrix1

# 2. Extract the letter ‘h’
matrix1[2, 3] # Manually specify row and column
matrix1[matrix1 == "h"] # Return vector of all occurrences
which(matrix1 == "h") # Return vector of indices of all occurrences

# 3. Create a matrix of numbers with 4 columns and 3 rows, filled by row.
matrix2 <- matrix(data = 1:12, nrow = 3, ncol = 4, byrow = TRUE)
matrix2

# 4. Add column and row names to this matrix.
colnames(matrix2) <- LETTERS[1:ncol(matrix2)]
rownames(matrix2) <- letters[1:nrow(matrix2)]
matrix2

# 5. Create an array of numbers 1-24 in 4 rows, 2 columns, 3 dimensions.
array <- array(data = 1:24, dim = c(4, 2, 3))
array

# 6. Extract the number ‘15’
array[3, 2, 2]

# 7. Extract the last matrix in the array and save to a new object called last_matrix
last_matrix <- array[, , 3]
last_matrix

# 8. Create a list of 5 items of multiple data types.
list <- list(
  "a",
  1L,
  pi,
  TRUE,
  last_matrix
)
list

# 9. Extract 3rd and 5th item in the list.
list[c(3, 5)] # Subset list containing elements 3 and 5
list[[3]] # Element 3
list[[5]] # Element 5