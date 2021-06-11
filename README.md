<!-- README.md is generated from README.Rmd. Please edit that file -->

# ggtreeExtra: Compact visualization of richly annotated phylogenetic data

GitHub Action build status badge:
![.github/workflows/basic\_checks.yaml](https://github.com/xiangpin/ggtreeextraarticleenv/workflows/.github/workflows/basic_checks.yaml/badge.svg)

If you use this work in published research, please cite:

S Xu, Z Dai, P Guo, X Fu, S Liu, L Zhou, W Tang, T Feng, M Chen, L Zhan,
T Wu, E Hu, Y Jiang<sup>\*</sup>, X Bo<sup>\*</sup> and **G
Yu**<sup>\*</sup>. ggtreeExtra: Compact visualization of richly
annotated phylogenetic data. ***Molecular Biology and Evolution***.
2021, msab166. doi:
[10.1093/molbev/msab166](https://doi.org/10.1093/molbev/msab166)
(accepted).

This repo contains source code and data to produce Supplementary
Material of the above paper. And this repo has been pushed to [Docker
Hub](https://hub.docker.com/r/xushuangbin/ggtreeextraarticleenv). You
can pull and run it according to the following. If you want to build the
computing environment about the supplemental file of the above paper on
the local platform, you can refer to [this
repository](https://github.com/YuLab-SMU/plotting-tree-with-data-using-ggtreeExtra).

## How to run Docker

  - Install Docker (<https://www.docker.com/>)
      - `sudo apt-get install docker.io` (Ubuntu)
  - Pull the Docker image from Docker Hub:
      - `docker pull xushuangbin/ggtreeextraarticleenv:latest`
      - or
      - `sudo pull xushuangbin/ggtreeextraarticleenv:latest`
  - Run the image:
      - `docker run -e PASSWORD=yourpassword -p 8787:8787
        xushuangbin/ggtreeextraarticleenv`
      - or
      - `sudo docker run -e PASSWORD=yourpassword -p 8787:8787
        xushuangbin/ggtreeextraarticleenv`
  - Log in to RStudio at <http://localhost:8787> using username
    `rstudio` and password `yourpassword`. For Windows users, you also
    need to provide your IP address, you can find it using
    `docker-machine ip default`.
  - Inside the RStudio, run: `browseVignettes(package =
    "ggtreeExtraArticleEnv")`
  - You can click one of the links: “PDF”, “source”, “R code”
  - In case of `The requested page was not found` error, try add ‘help/’
    in front of the hostname in the URL (this is a known bug):
    <http://localhost:8787/help/library/ggtreeExtraArticleEnv/doc/supplementary_file.pdf>
