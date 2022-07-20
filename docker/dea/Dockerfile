#
# This file is part of SITS Docker.
# Copyright (C) 2022 INPE.
#
# SITS Docker is free software; you can redistribute it and/or modify it
# under the terms of the MIT License; see LICENSE file for more details.
# 
# This Dockerfile is strongly based on the Dockerfile from Jupyter Stacks, 
# see more: github.com/jupyter/docker-stacks
#
ARG BASE_IMAGE=brazildatacube/sits-jupyter:1.1.0
FROM ${BASE_IMAGE}

#
# Dockerfile metadata
#
LABEL "org.brazildatacube.title"="SITS Docker R Image (JupyterLab image)"
LABEL "org.brazildatacube.maintainer"="Brazil Data Cube <brazildatacube@inpe.br>"
LABEL "org.brazildatacube.description"="JupyerLab with sits notebooks."

ARG SITS_NOTEBOOK_REPO=e-sensing/sitsnotebooks.git
ARG SITS_TAG_VERSION

USER ${BASE_USER}

WORKDIR /home/${BASE_USER}

RUN git clone -c advice.detachedHead=false -b ${SITS_TAG_VERSION} https://github.com/${SITS_NOTEBOOK_REPO} --single-branch