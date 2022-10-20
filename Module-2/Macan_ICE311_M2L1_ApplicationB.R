library(magick)

#Read the picture
picture = image_read("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCI4AxlexkTOpE3P6VhxI7DIx90nQlcVO7Bg&usqp=CAU")
plot(picture)

#Charcoal the picture
picture2 = image_charcoal(picture)
plot(picture2)

#Compare the picture
image_compare(picture, picture2)
image_compare_dist(picture, picture2)
image_compare_dist(picture2, picture)
