> This repository contains a Docker configuration for hosting Wordpress with a Nginx web server and MariaDB database.

## Requirements
Make sure Docker is installed in your environment.

## Usage
To use this repository, follow the following steps:

1. Clone it to your environment using `git clone https://github.com/cdterry87/docker-wordpress`. Then `cd` to the `docker-wordpress` directory you just created.
2. Copy the `.env.example` file as `.env` using `cp .env.example .env`. Then set the database credentials to whatever you'd like.
3. Run the following command to build the Docker container: `docker-compose up --build`
4. Visit `http://localhost:8080` in your browser and you should see the Wordpress setup.
5. Setup Wordpress like normal, and Congrats! You have a fully Dockerized Wordpress site!
