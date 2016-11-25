updateCell <- function(cellState, neighborState){
  
  newState = cellState;
  
  if(cellState == 1)
    if(neighborState >= 4 || neighborState == 0)
      newState = 0;
  
  if(cellState == 0)
    if(neighborState >= 2)
      newState = 1;
  
  return(newState);
}