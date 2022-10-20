library(magick)
library(image.libfacedetection)

#Import and view the image with faces
path <- file.path(getwd(), "College" ,"faces.png")
picture = image_read(path)
picture

#Use a tool to detect the faces
faces <- image_detect_faces(picture)

#Print the coordinates for each detected face
faces

#Plot the results of the detection algorithm
plot(faces, 
     picture, 
     border = "red",
     lwd = 7, 
     col = "white",
     landmarks = TRUE)