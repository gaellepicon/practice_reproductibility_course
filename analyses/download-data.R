########################################################################
#-----------------Practice script for data downloading-----------------#
########################################################################

# Create the destination path
# We will create a subdirectory "data/wildfinder"
path <- here::here("data", "wildfinder")

# Create the destination directory
dir.create(path, showWarnings = FALSE, recursive = TRUE)

# Set the file name
filename <- "wildfinder-ecoregions_list.csv"

# Set the GitHub URL
base_url <- "https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/data/wildfinder/"

# Create the full url by adding file name
full_url <- paste0(base_url, filename)

# Create the full path by adding file name to the base path
dest_file <- file.path(path, filename)

# Download file
utils::download.file(url = full_url, destfile = dest_file, mode = "wb")

