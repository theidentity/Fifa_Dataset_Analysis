df <- read.csv('2_players_col_removed.csv')
print(dim(df))

player_pos <- df[,47:72]
print(colnames((player_pos)))

best_pos <- colnames(player_pos)[apply(player_pos,1,which.max)]
df$best_positions <- best_pos
colnames(df) <- c(colnames(df),'best_position')
print(colnames(df))

write.csv(df,"3_best_positions_derived.csv")
