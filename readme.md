# dclong/xubuntu [@DockerHub](https://hub.docker.com/r/dclong/xubuntu/) | [@GitHub](https://github.com/dclong/docker-xubuntu)

## Detailed Information

OS: Ubuntu 16.04

Desktop Environment: Xfce

Remote Desktop: NoMachine

Additional Software: Firefox

## About the Author

[Personal Blog](http://www.legendu.net)   |   [GitHub](https://github.com/dclong)   |   [Bitbucket](https://bitbucket.org/dclong/)   |   [LinkedIn](http://www.linkedin.com/in/ben-chuanlong-du-1239b221/)



## How to run

### Build

```
./build.sh
```

### Docker pull command

```
docker pull dclong/xubuntu
```

### Usage

```
docker run -d \
    --hostname xubuntu \
    --log-opt max-size=50m \
    -p 4000:4000 \
    -e DOCKER_USER=$(id -un) \
    -e DOCKER_USER_ID=$(id -u) \
    -e DOCKER_PASSWORD=$(id -un) \
    -e DOCKER_GROUP_ID=$(id -g) \
    -v "$(pwd)":/workdir \
    -v "$(dirname $HOME)":/home_host \
    --cap-add=SYS_PTRACE \
    dclong/xubuntu /scripts/sys/init.sh
```

```
docker run -d \
    --hostname xubuntu \
    --log-opt max-size=50m \
    -p 4000:4000 \
    -e DOCKER_USER=$(id -un) \
    -e DOCKER_USER_ID=$(id -u) \
    -e DOCKER_PASSWORD=$(id -un) \
    -e DOCKER_GROUP_ID=$(id -g) \
    -v "$(pwd)":/workdir \
    -v "$(dirname $HOME)":/home_host \
    --cap-add=SYS_PTRACE \
    dclong/xubuntu /scripts/sys/init.sh
```

A default user `dclong` with password `dclong` is used if not specified when running the docker image.

### Connect to the container

Download the NoMachine client from <https://www.nomachine.com/download>, 
install the client, 
create a new connection to your public ip, port 4000, NX protocol, 
use a user on the host OS and the corresponding password for authentication. 

## [Related Images](http://www.legendu.net/en/blog/my-docker-images/)
