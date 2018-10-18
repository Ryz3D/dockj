# kill last container if still running
docker kill $(docker ps -l -q)
# remove old dockj (fails if not neccessary, ignore)
docker rm dockj
