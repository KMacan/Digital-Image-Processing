library(magick)

#Create a range of values equal to 1
values <- c(0.2, 0.1, .0, .1, .0, .0, .2 , .1, .3)

#Generate a matrix using the created
kernel <- matrix(values, 
              nrow = 3, 
              ncol = 3, byrow = T)

#Import image
picture <- image_read("3rd - First Sem/Digital Image Processing/duck.jpg")
picture

#Apply image_convolve using the kernel
new_picture <- image_convolve(picture, 
                              kernel = kernel
)
new_picture

#Plot images side by side
par(mfrow = c(1,2))
plot(picture)
plot(new_picture)