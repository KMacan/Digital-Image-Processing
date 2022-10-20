library(magick)

#Import the 2x2 image
path = file.path(getwd(), "College", "3rd - First Sem", "Digital Image Processing", "Macan 2x2.png")
picture = image_read(path)
picture

#Resize into passport size 1.4" width and 1.8" height
picture = image_scale(picture, "173")
picture = image_crop(picture, "134x173+21")
picture

#Change the background to blue or light blue
picture = image_transparent(picture, "white")
picture = image_background(picture, "light blue")
picture

#Write the complete name at the bottom of the picture
picture = image_annotate(picture, "Kiana G. Macan", size = 18, gravity = "south", color = "white")
picture