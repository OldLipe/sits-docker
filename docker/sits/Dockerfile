#
# This file is part of SITS Docker.
# Copyright (C) 2022 INPE.
#
# SITS Docker is free software; you can redistribute it and/or modify it
# under the terms of the MIT License; see LICENSE file for more details.

ARG BASE_IMAGE=brazildatacube/sits-4-swiss-r-latest:1.0.0
FROM ${BASE_IMAGE}

#
# Dockerfile metadata
#
LABEL "org.brazildatacube.title"="SITS Docker R Image (SITS-enabled image)"
LABEL "org.brazildatacube.maintainer"="Brazil Data Cube <brazildatacube@inpe.br>"
LABEL "org.brazildatacube.description"="SITS-enabled Docker Image."

#
# Installing the SITS and SITS Data Packages.
#
COPY install.R .

ARG SITS_TAG_VERSION=v1.0.0
ARG SITSDATA_COMMIT_REF=02f93e63b780a4c2b0f23f50d1b554648a6683dc

RUN Rscript install.R \
    && rm install.R
