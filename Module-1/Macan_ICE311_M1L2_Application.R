library(imager)

#Loading the image, getting the class, and plotting it
image = load.image("https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/a6971270048085.5b968a1a1bb21.jpg")
class(image)
plot(image)

#Getting the width, height, depth, and color channel of the image
width(image)
height(image)
depth(image)
spectrum(image)

#Grayscale the image
imagegray = grayscale(image)
spectrum(imagegray)

#Comparing the two images
layout(t(1:2))
plot(image, rescale=FALSE)
plot(image/2, rescale=FALSE)

#Alter the color of the image
newcolor <- function(r,g,b)rgb(b,g,r)

#Use the newcolor on the image
layout(t(1:2))
plot(image, rescale)
plot(image/2, rescale, colourscale = newcolor)