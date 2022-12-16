# docker-test
Repository to host files for docker technical test

## Build image
`docker build -t myapp .`

## Run container
`docker run -p 80:80 myapp`

## Test the application
Run `curl 127.0.0.1:80`

Sample output:
```
curl 127.0.0.1:80
Your IP address is 172.17.0.1. You have accessed this page 1 times.

curl 127.0.0.1:80
Your IP address is 172.17.0.1. You have accessed this page 2 times.

curl 127.0.0.1:80
Your IP address is 172.17.0.1. You have accessed this page 3 times.
```

## Final image size
```
REPOSITORY                               TAG          IMAGE ID       CREATED          SIZE
myapp                                    latest       2b1ae59394a3   21 seconds ago   148MB
```