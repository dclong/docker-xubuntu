# Ubuntu Xfce Desktop with Nomachine in Docker

Xubuntu Desktop 16.04 Dockerfile with NoMachine remote access and firefox. 

# How to run

## Build

```
./build.sh
```

## Docker pull command

```
docker pull dclong/xubuntu
```

## Usage

```
docker run -d -p 4000:4000 -e DOCKER_USER_ID=`id -u` -e DOCKER_USER=`id -un` -e DOCKER_PASSWORD=`id -un` -v $HOME:/home/`id -un` --cap-add=SYS_PTRACE dclong/xubuntu
```
A default user `dclong` with password `dclong` is used if not specified when running the docker image.

## Connect to the container

Download the NoMachine client from <https://www.nomachine.com/download>, 
install the client, 
create a new connection to your public ip, port 4000, NX protocol, 
use a user on the host OS and the corresponding password for authentication. 
