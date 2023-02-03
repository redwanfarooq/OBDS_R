# 1. Load the coding_gene_region.bed into R.
#    /project/obds/shared/resources/2_r/baseR/coding_gene_region.bed
df <- read.table(
  file = "coding_gene_region.bed", # Relative path to symlink to BED file in project directory
  header = FALSE,
  sep = "\t",
  stringsAsFactors = FALSE
  )

# 2. Check the dimensions of the data frame and the class of each variable.
#    How many rows and columns are there in this data frame?
dim(df)
sapply(df, class)

# 3. Add column names. The columns are:
#    "chr", "start", "stop", "name", "score", "strand"
colnames(df) <- c("chr", "start", "stop", "name", "score", "strand")

# 4. Display the new columns names.
colnames(df)

# 5. Extract the element at row 30, column 3
df[30, 3]

# 6. Extract the second column by index and by name (using both [ ] and $ ), assign these to new variables
df[[2]]
df$start

# 7. Calculate the intervals (start-stop) and add them as a new column called int_length.
#    What is a quick way to check you have added this column?
df$int_length <- df$stop - df$start

# 8. Subset the data frame to contain only regions with a length from 100,001-200,000 bp - assign to a new variable.
df_subset1 <- df[df$int_length >= 100001 & df$int_length <= 200000, ] # Method 1
df_subset2 <- subset(df, subset = df$int_length >= 100001 & df$int_length <= 200000) # Method 2

# 9. Write your subset data frame to a tab separated file ie (include column names but not row names).
write.table(
  df_subset1,
  file = "coding_gene_region_subset.tsv",
  quote = FALSE,
  sep = "\t",
  row.names = FALSE,
  col.names = TRUE
  )
