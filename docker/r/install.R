#
# This file is part of SITS Docker.
# Copyright (C) 2022 INPE.
#
# SITS Docker is free software; you can redistribute it and/or modify it
# under the terms of the MIT License; see LICENSE file for more details.

#
# Install devtools, rmarkdown, knitr, testthat and Rcpp if not already available
#
install.packages(c("rmarkdown", "Rcpp", "knitr",
                   "testthat", "remotes", "qpdf",
                   "shiny",   "pacman", "covr",
                   "withr", "devtools", "lightgbm",
                   "torch", "luz"))

#
# Check the environment type
#
environment_type <- Sys.getenv("SITS_ENVIRONMENT_TYPE")
environment_type <- if (environment_type == "full") TRUE else NA

remotes::install_deps(dependencies = environment_type)

#
# Web Time Series Service Client
#
install.packages("Rwtss")
