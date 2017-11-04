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
