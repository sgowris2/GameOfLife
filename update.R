update <- function(grid, neighbors){
  gridDim = dim(grid);
  gridSize = gridDim[1];
  
  for(i in 1:gridSize)
    for(j in 1:gridSize)
      grid[i,j] <- updateCell(grid[i,j], neighbors[i,j]);
  
  return(grid);
}

updateCell <- function(cellState, neighborState){
  
  newState = cellState;
  
  if(cellState == 1)
    if(neighborState >= 4 || neighborState < 2)
      newState = 0;
  
  if(cellState == 0)
    if(neighborState == 3)
      newState = 1;
  
  return(newState);
  
}

step <- function(grid){
  neighbors <- checkNeighbors(grid);
  grid <- update(grid, neighbors);
  return(grid);
}