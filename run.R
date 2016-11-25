source ("init.R");
source("checkNeighbors.R");
source("visualize.R");
source("update.R");

grid <- init(100,10);
visualize();

for(i in 1:100){
  grid <- step(grid);
  visualize();
}



