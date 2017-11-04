source("helper.R")
data = read.csv("../data/japanese_credit_screening_data_set.csv", header = FALSE, stringsAsFactors=FALSE)
print_to_latex(data[1:5, ])
data = read.csv("../data/japanese_credit_screening_data_set.csv", header = FALSE, stringsAsFactors=TRUE)
data[, 16] = as.numeric(data[, 16]) - 1 
nrow(data)
mean(data[, 16])
