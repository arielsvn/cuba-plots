FROM rocker/tidyverse:3.6.0
WORKDIR /home/rstudio/kitematic

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN apt-get install dialog apt-utils -y

RUN apt-get update -qq && apt-get -y --no-install-recommends install \
    && install2.r --error \
    --deps TRUE \
    rjson \
    readr \
    purrr \
    geosphere \
    gridExtra

RUN install2.r --error \
    --deps TRUE \
    maps
