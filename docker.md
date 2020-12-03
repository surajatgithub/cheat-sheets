# Getting started
## Tutorial
1. Create/Download the container
2. Build the container
3. Run the container
4. Share/Publish the container/image

## Commands

### All commands
```sh
$ docker images
$ docker run busybox:1.24 echo "Hello World"
$ docker run busybox:1.24 ls /
$ docker run -d busybox:1.24 echo "Hello World"
$ docker run -d --name busybox.1.24-1 busybox:1.24 echo "Hello World 3" 
$ docker run -i -t busybox:1.24 ls /
$ docker run --rm busybox:1.24 echo "Hello World"
$ docker ps 
$ docker ps -a 
$ docker inspect <container_id>
$ docker logs <container_id>
```

### List all images from the host
```sh
$ docker images
```

### Run container
```sh
$ docker run busybox:1.24 echo "Hello World"
$ docker run -d busybox:1.24 echo "Hello World"
$ docker run --rm busybox:1.24 echo "Hello World"
$ docker run busybox:1.24 ls /
$ docker run -i -t busybox:1.24 ls /
$ docker run -d --name busybox.1.24-1 busybox:1.24 echo "Hello World 3" 
```

### List down the all the contents from the root directory of container
```sh
$ docker run busybox:1.24 ls /
```

### Login into container
```sh
$ docker run -i -t busybox:1.24 ls /
$ docker exec -it 9f2f53c64ef0 /bin/bash
```
```sh
-   All the activities done after login, on exit/logout it will be vanished or cleared out
```

### List down the running containers
```sh
$ docker ps 
    - Running
$ docker ps -a 
    - All incluing stoped containers
```

### Inspect the running container
```sh
$ docker inspect <container_id>
```

# Playing with the Tomcat
```sh
$ 
```