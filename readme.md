docker-php-init
========

Introduction
------------
This repository is intended to contain an empty PHP project skeleton, using composer as main dependency manager and
docker as project server virtualization, database will be a second mysql container via docker compose

* Docker allows update/install composer autoload and dependencies.
* Docker container php-apache will serve all php-apache projects (same versions) with the same image.
* Docker container mysql will serve database exposed to php container using the same image for all mysql projects

Installation
------------

You can install the component in the following ways:

* Use the official Github repository (https://github.com/mbarquin/docker-php-init)

Usage
-----

