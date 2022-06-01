#
# This file is part of SITS Docker.
# Copyright (C) 2022 INPE.
#
# SITS Docker is free software; you can redistribute it and/or modify it
# under the terms of the MIT License; see LICENSE file for more details.

#
# install sits from CRAN
#
install.packages("sits")

#
# Change the download method 
#
options(download.file.method = "wget") 

#
# Satellite Image Time Series Example Datasets
#
sitsdata_commit_ref <- Sys.getenv("SITSDATA_COMMIT_REF")
remotes::install_github(paste0("e-sensing/sitsdata@", sitsdata_commit_ref), dependencies = FALSE)
