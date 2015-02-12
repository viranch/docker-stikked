Stikked Dockerfile


This repository contains **Dockerfile** of [Stikked](https://github.com/claudehohl/Stikked) for [Docker](https://www.docker.com/).


### Base Docker Image

* [maxexcloo/nginx-php](https://registry.hub.docker.com/u/maxexcloo/nginx-php/)


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/viranch/stikked/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull viranch/stikked`

   (alternatively, you can build an image from Dockerfile: `docker build -t="viranch/stikked" github.com/viranch/docker-stikked`)

### Setting up

1. You'll need to setup a MySQL database and a user for stikked.

2. Copy the config file from [here](https://github.com/viranch/docker-stikked/blob/master/config/stikked.php).

3. Set database configuration (and any other configuration you might want) in the file, and save it at a persistent location of your choice, e.g., `~/data/stikked/stikked.php`.

4. Mount the config file on to the docker container while running it: `docker run -d -v ~/data/stikked/stikked.php:/data/http/application/config/stikked.php -p 80:80 viranch/stikked`.


### Usage

    docker run -d -v /path/to/stikked.php:/data/http/application/config/stikked.php -p 80:80 viranch/stikked

After few seconds, open `http://<host>/` to see the result.
