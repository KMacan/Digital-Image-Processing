library(image.darknet)
library(magick)

#Input the necessary code
f <- system.file(package="image.darknet", 
                 "include", 
                 "darknet", 
                 "data", 
                 "voc.names")
labels <- readLines(f)

#Specify a YOLO model based on the available models
weights <- file.path(system.file(package="image.darknet", "models"), "darknet.weights")
download.file(url = "http://pjreddie.com/media/files/darknet.weights", destfile = weights)
darknetref <- image_darknet_model(type = 'classify', 
                                  model = "darknet.cfg", 
                                  weights = weights, 
                                  labels = labels)

#Define the detection model
yolo_tiny_voc <- image_darknet_model(type = 'detect', 
                                     model = "tiny-yolo-voc.cfg", 
                                     weights = system.file(package="image.darknet", "models", "tiny-yolo-voc.weights"), 
                                     labels = labels)
yolo_tiny_voc

#Import image
path <- file.path("3rd - First Sem/Digital Image Processing/duck.jpg")

#Apply the image detection function
x <- image_darknet_detect(file = path, 
                          object = yolo_tiny_voc, 
                          threshold = 0.3, 
                          hier_threshold = 0.5)
