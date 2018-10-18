./kill.sh
# build image
docker build -t dockj build
# mount, setup and run container
docker run -d --name dockj -p 8080:8080 -p 50000:50000 -v "$(pwd)/config:/var/jenkins_home:rw" -v "$(pwd)/mvn:/root/.m2:rw" dockj
# show status
docker ps
echo "run 'docker container inspect dockj' for more info, 'docker ps' and 'docker container stats dockj' are useful too"
