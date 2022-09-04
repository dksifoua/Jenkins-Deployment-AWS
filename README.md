![MIT License](https://img.shields.io/github/license/dksifoua/Jenkins-Configuration-as-Code?color=blue&label=License)


# Jenkins

Jenkins is one of the most popular open-source automation servers, often used to orchestrate continuous integration (CI) and/or continuous deployment (CD) workflows.

Configuring Jenkins is typically done manually through a web-based setup wizard; this can be a slow, error-prone, and non-scalable process. In addition to that,
configurations cannot be tracked in a version control system (VCS) like Git, nor be under the scrutiny of any code review process.

In this repo, we automate the installation and configuration of Jenkins using Docker and the Jenkins Configuration as Code (JCasC) method.

Jenkins uses a pluggable architecture to provide most of its functionality. JCasC makes use of the Configuration as Code plugin, which allows us to define the desired 
state of our Jenkins configuration as one or more YAML file(s), eliminating the need for the setup wizard. On initialization, the Configuration as Code plugin would 
configure Jenkins according to the configuration file(s), greatly reducing the configuration time and eliminating human errors.

Docker is the de facto standard for creating and running containers, which is a virtualization technology that allows to run isolated, self-contained applications consistently 
across different operation systems (OS) and hardware architectures. We will run our Jenkins instance using Docker to take advantage of this consistency and cross-platform capability.

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
