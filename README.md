# Dockerfile for r2u binary packages and rstudio server

With my own modifications. Thanks a lot to [Matthieu
Stiegler](https://github.com/MatthieuStigler) for getting this to work!

## Setup

From https://github.com/rocker-org/r2u/issues/1#issuecomment-1545308105:

1. `docker build -f Dockerfile . --tag rockerstudio`
2. `docker run --rm -ti -p 8787:8787 -v ~/:/home/docker/ rockerstudio`
3. Run `rstudio-server start` from within docker container
4. Open [](http://localhost:8787/), username=docker, password=pass
5. ???
6. Profit!!!

## Adding packages

When the docker image is built it executes the R script in `install-packages.R`. To add packages to the image simply add the relevant package names to the `install.packages`, `BiocManager::install`, or `remotes::install_github` calls depending on the source of the package you want.
