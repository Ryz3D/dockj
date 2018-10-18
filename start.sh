./kill.sh
# build image
docker build -t dockj build
# mount, setup and run container
docker run -d --name dockj -p 8080:8080 -p 50000:50000 -v "$PWD/config:/var/jenkins_home:rw" -v "$PWD/mvn:/root/.m2:rw" dockj
# show status
docker ps
