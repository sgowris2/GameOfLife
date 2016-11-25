checkNeighbors <- function(grid){

  gridDim <- dim(grid);
  gridSize = gridDim[1];
  neighbors = matrix(0,gridSize,gridSize);
  
  for(i in 1:gridSize){
    for(j in 1:gridSize){
      for(x in -1:1){
        for(y in -1:1){
          if(!(x==0 && y==0) && (i+x >= 1) && (i+x <= gridSize) && (j+y >= 1) && (j+y <= gridSize))
            if(grid[i+x, j+y] == 1)
              neighbors[i, j] <- neighbors[i, j] + 1;       
        }
      }
    }
  }
  return(neighbors);
}