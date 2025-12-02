# Create an empty file because Positron projects don't create any 
# Creating one will allow rcompendium and here to detect the good folder
file.create(".here")

# Creating a README file
utils::file.edit(here::here("README.md"))

# Test:
here::here("README.md")

# Convert into .md
rmarkdown::render("README.Rmd")

# Create a DESCRIPTION file
rcompendium::add_description()

# Create a license file
rcompendium::add_license(license = "GPL-2")

# Create sub-repositories
rcompendium::add_compendium(compendium = c("data", "analyses", "R", "figures", "outputs"))

# Create R script
utils::file.edit(here::here("analyses", "download-data.R"))

# Create a function in the R folder
usethis::use_r("dl_pantheria_data")

#----- GIT -----#
# Adding a .gitignore
rcompendium::add_to_gitignore()

# Adding modifications for testing
test <- 14

