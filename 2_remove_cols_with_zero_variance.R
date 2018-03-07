data <- read.csv('players.csv',header = TRUE)
print(dim(data))

cols <- colnames(data)

cols_to_remove = c()

for(col in cols){
    if(length(unique(data[,col]))==1){
      cols_to_remove <- c(cols_to_remove,col)
    }
}

print(cols_to_remove)

req_cols <- setdiff(cols,cols_to_remove)
print(req_cols)
