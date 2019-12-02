# Dead simple hello world Docker with Flask example

Followed [this tutorial](https://runnable.com/docker/python/dockerize-your-flask-application) more or less, but it is full of typos in the code. Also, it appears to use system Python and I wanted modern Python so I made some appropriate changes, such as using an official Python image for 3.8.

```bash
docker build -t flask-tutorial:latest
```

The `-t` flag evidently creates the name for the container. That allows the command

```bash
docker run -d -p 5000:5000 flask-tutorial
```
to know what flask-tutorial is. If you omit `-d`, the container run command is not daemonized, so you can kill the process by `ctrl-c`.