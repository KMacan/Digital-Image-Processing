library(OpenImageR)

#Load an image into R
path = file.path(getwd(), "College", "sample3.jpg")
picture = readImage(path)
imageShow(picture)

#Convert the image into grayscale
picturegray = rgb_2gray(picture)

#Apply the average_hash function
iahash = average_hash(picturegray, 
             hash_size = 7, 
             MODE = 'binary')

#Apply the phash function
iphash = phash(picturegray,
               hash_size = 7,
               MODE = 'binary')

#Apply the dhash function
idhash = dhash(picturegray,
               hash_size = 7, 
               MODE = 'binary')

cat("Output of the three hash methods: ",
    "\n\tahash: ", iahash, 
    "\n\tphash: ", iphash, 
    "\n\tdhash: ", idhash)
