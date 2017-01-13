# docker-haskell

Dockerfiles for ***Haskell***.<br>
The image is available directly from [https://index.docker.io](https://hub.docker.com/u/p7hb/ "» Docker Hub").

This image contains the following softwares:

* GHC v8.0.2
* Cabal v1.24 

## Get this image
There are 2 ways of getting this image:

1. Build this image using [`Dockerfile`](Dockerfile) OR
2. Pull the image directly from DockerHub.

### Build this image
Copy the [`Dockerfile`](Dockerfile) to a new folder on your machine and then invoke the following command.

    docker build -t p7hb/docker-haskell .

### Pull the image

    docker pull p7hb/docker-haskell


## Run the image

    docker run -it -h haskell --name=haskell p7hb/docker-haskell


The above step will launch and run the image with:

* `root` is the user we logged into.
* `haskell` is the container name.
* `haskell` is the host name of this container. 

## Check softwares and versions

### Host name

    root@haskell:~# hostname
    haskell

### Haskell

    root@haskell:~# ghci --version
	The Glorious Glasgow Haskell Compilation System, version 8.0.2

### Cabal

    root@haskell:~# cabal --version
    cabal-install version 1.24.0.2
	compiled using version 1.24.0.2 of the Cabal library


## Problems? Questions? Contributions? [![Contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](http://p7h.org/contact/)
If you find any issues or would like to discuss further, please ping me on my Twitter handle [@P7h](http://twitter.com/P7h "» @P7h") or drop me an [email](http://p7h.org/contact/ "» Contact me").


## License [![License](http://img.shields.io/:license-apache-blue.svg)](http://www.apache.org/licenses/LICENSE-2.0.html)
Copyright &copy; 2017 Prashanth Babu.<br>
Licensed under the [Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0).