> This repository contains a Docker configuration for hosting Wordpress with a Nginx web server and MariaDB database.

## Requirements

Make sure Docker is installed in your environment.

## Usage

To use this repository, follow the following steps:

1. Clone it to your environment using `git clone https://github.com/cdterry87/docker-wordpress`. Then `cd` to the `docker-wordpress` directory you just created.
2. Copy the `.env.example` file as `.env` using `cp .env.example .env`. Then set the database and Wordpress credentials to whatever you'd like.
3. Run the following command to build the Docker container and start it: `docker-compose up --build -d`
4. Visit `http://localhost:8080` in your browser and you should see your Wordpress site!
5. Visit `http://localhost:8080/wp-login.php` and login with the credentials you set in the `.env` file and start editing your site!
6. To destroy the container, use the following command: `docker-compose down -v`
