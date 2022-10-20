library(imager)

#Read a jpg image of choice
picture <- load.image("https://www.thedesignwork.com/wp-content/uploads/2011/10/Random-Pictures-of-Conceptual-and-Creative-Ideas-02.jpg")
plot(picture)

#Create three histograms using the regular 'hist' function of the RGB strands
#using the R(), G(), and B() functions.
image.data <- data.frame(
  red = as.vector(picture[,,1]),
  blue = as.vector(picture[,,2]),
  green = as.vector(picture[,,3]))
  
hist(R(picture), 
     probability = T, 
     col = "red",
     xlab = "Red band",
     ylab = "Histogram of proportions",
     main = "")
hist(B(picture), 
     probability = T, 
     col = "blue",
     xlab = "Blue band",
     ylab = "Histogram of proportions",
     main = "")
hist(G(picture), 
     probability = T, 
     col = "green",
     xlab = "Green band",
     ylab = "Histogram of proportions",
     main = "")
