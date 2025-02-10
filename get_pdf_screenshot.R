# This script reads the first page of a PDF file and saves it as a PNG image.
# It is not necessary for the quarto template to work. It's only purpose
# is to create the image that is shown in the Readme file of the github repository.
# Feel free to delete this file.

if (!requireNamespace("magick", quietly = TRUE)) {
  install.packages("magick")
}

library(magick)

# Read the first page of the PDF
pdf_image <- image_read_pdf("example.pdf", pages = 1)

# Save the image as PNG
image_write(pdf_image, path = "example.png", format = "png")
