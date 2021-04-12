FROM bioconductor/bioconductor_docker:devel

RUN apt-get update && apt-get -y install libgdal-dev gdal-bin\
    libproj-dev proj-data proj-bin libgeos-dev default-libmysqlclient-dev libmysqlclient-dev\
    texlive texlive-xetex texlive-fonts-extra

WORKDIR /home/rstudio

COPY --chown=rstudio:rstudio . /home/rstudio/

RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); BiocManager::install(ask=FALSE)"

RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); devtools::install('.', dependencies=TRUE, build_vignettes=TRUE, repos = BiocManager::repositories())"
