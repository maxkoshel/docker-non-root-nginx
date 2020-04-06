# Running docker container with NGINX under non-sudo user

For security reasons, it is recommended to run NGINX as a unpreviliged user without sudo permission. By default, NGINX assumes that it has write access to all kinds of restricted locations on the UNIX file system, and each of them is controlled by different configuration options. In this example you will find a ready-made solution that will allow NGINX to run from an unprivileged user `webserver` in the Docker container. Unnecessary settings are omitted here to avoid overloading the config, you can add everything you need.

Build an image from a Dockerfile:

```bash
$ docker build -t non-root-nginx -f ./Dockerfile .
```

Run container:

```bash
$ docker run -p 8080:8080 non-root-nginx
```

Check how it works: http://localhost:8080. If everything is ok you will see the message `Nginx works!`.
