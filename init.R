init <- function(gridSize, lifePercent){

  alive = 0;
  lifePercent = lifePercent*10;
  
  cat("Initial gridSize: ", gridSize, "\n");
  cat("Initial lifePercent: ", lifePercent, "\n");
  
  
  grid = matrix(0,gridSize,gridSize);
  for(i in 1:gridSize){
    for(j in 1:gridSize){
      if(sample(1:1000,1) <= lifePercent){
        grid[i, j] <- 1;
        alive <- alive + 1;
      }
    }
  }
  
  lifePercent = 100*alive/(gridSize*gridSize);
  cat(alive, "cells (",lifePercent,"%) are alive.");
  
  return(grid);
}
