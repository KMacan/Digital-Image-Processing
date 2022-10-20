library(tesseract)
library(imager)

#Read an image into R
image = load.image("https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781612430164/very-short-stories-9781612430164_hr.jpg")
plot(image, axes = FALSE)

#Use the tesseract() function to load the language and store it in a variable
language = tesseract(language = "eng")

#Convert image text into machine coded text
text = ocr("https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781612430164/very-short-stories-9781612430164_hr.jpg", 
           engine = language)

#View the machine coded text
cat("The machine coded text is:\n", text)
