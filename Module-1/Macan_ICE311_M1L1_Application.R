library(OpenImageR)

path = file.path(getwd(), "College", "sample2.jpg")
image = readImage(path)

dim(image)
imageShow(image)
imagegray <- rgb_2gray(image)
imageShow(imagegray)
