# dockj
A small project to run and configure a jenkins in a docker container with hopefully just one command.

## Maven
You can store all your dependencies for maven in the `mvn/repository` directory before starting. All other dependencies downloaded during jobs will be stored there too, so you can uninstall everything without losing your data.

## Jenkins
The jenkins configuration can be found in `config` so your setup is seperated from the installation. Thus you can fire up the server and it's instantly configured.

All the data is connected with your container through volumes, thus you can check out the file system from the container in real time and also modify it if neccessary.

## Docker
Some useful docker commands include:

`docker exec -it dockj bin/bash` to open a live shell to the container

`docker container stats dockj` to check the usage

`docker container inspect dockj` for detailed information

`docker ps` to check which containers are up
