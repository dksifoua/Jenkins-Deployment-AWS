[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)

# Jenkins
This repo contains Jenkins installation with Docker.

## Installation

Before the installation, make sure you have Docker installed on your machine. If not, you can install Docker via the [official installation web page](https://docs.docker.com/engine/install/).

After Docker is successfully installed, run the command below:

```shell
$ make
```

If you don't have `make` installed, the command won't work. You can install by running the  command 

```shell
$ sudo apt-get -y install make
```

After the installation completed, you can access Jenkins UI via [localhost:8080](http://localhost:8080/)

## Authors

- [@dksifoua](https://www.github.com/dksifoua)