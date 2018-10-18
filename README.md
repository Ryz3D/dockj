# dockj
A small project to run and configure a jenkins in a docker container with hopefully just one command.
## Maven
You can store all your dependencies for maven in the `mvn` directory. All dependencies downloaded during jobs will be stored there too, so you can uninstall everything without losing your data.
## Jenkins
The jenkins configuration can be found in `config`. So all your jobs, users and other setup is seperated from the installation. Thus you can fire up the server and it's instantly configured. All the data is connected with your container through volumes, thus you can check the file system from the container out in real time and also do modifications if neccessary.
## Docker
Some useful docker commands include:
`docker exec -it dockj bin/bash` to open a live shell to the container
`docker container stats dockj` to check the usage
`docker container inspect dockj` for detailed information
`docker ps` to check which containers are up
