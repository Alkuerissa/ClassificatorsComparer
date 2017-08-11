print_to_latex = function(data)
{
  for (i in 1:nrow(data))
  {
    for (j in 1:(ncol(data)-1))
    {
      cat(data[i, j] , " & ")
    }
    cat(data[i, ncol(data)])
    cat("\\\\\n")
  }
}

data = read.csv("../data/japanese_credit_screening_data_set.csv", header = FALSE, stringsAsFactors=FALSE)
data[, 16] = plyr::revalue(data[, 16], c('+'=1, '-'=0))
print_to_latex(data[1:5, ])
