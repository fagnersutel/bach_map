library (ggmap)
# Read map from google maps and save data to file
mapImageData <- get_googlemap(
  c(lon=-74.0087986666667, lat=40.7106593333333), 
  zoom=15
)
save(mapImageData, file="savedMap.rda")

  # Start a new session (well, clear the workspace, to be honest)
  
  rm(list=ls())

# Load the saved file

load(file="savedMap.rda")

# Set up some data

myData <- data.frame(
  lat = c (40.702147, 40.718217, 40.711614),
  lon = c (-74.012318, -74.015794, -73.998284)
)


# Plot

ggmap(mapImageData) +
  geom_point(aes(x=lon, y=lat), data=myData, colour="red", size=5)
