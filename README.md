## Alpine container with nginx

This is a mini docker container ![](https://images.microbadger.com/badges/image/nimmis/alpine-apache.svg) based on Alpine OS and nginx.

This image is build using [alpine](https://hub.docker.com/r/nimmis/alpine-micro/) offical image as base image and installing nginx component. The default root directory is changed to [/web] and no additional modifications maded, no more component were added.

To view build process check the [Dockerfile](https://github.com/rajezvelse/docker-alpine-nginx/Dockerfile).

#### Starting the container as a daemon

	docker run -d --name nginx rajez/alpine-nginx

#### Accessing nginx from outside the container

To access the webserver from external you can the **-P/-p** paramter, with **-P** the port 80 is automaticly exposed and assign a random port.

or use the **-p** command to assign other ports, the syntax is

	-p <external port on host>:<local port in container>

so to access the nginx server port 80 on port 8080 you should use the command

	docker run -d --name nginx -p 8080:80 rajez/alpine-nginx

#### Successsful setup

To check the successfull setup, open [http://localhost](http://localhost) in a webbrowser. If everything worked well, you will able to see the following page.

![screenshot](https://github.com/rajezvelse/docker-alpine-nginx/blob/master/images/screenshot.png?raw=true "Screenshot")
