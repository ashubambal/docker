# docker
This repository having all docker projects and related files.


docker stop $(docker ps -q)
docker rm $(docker ps -a -q)
docker system prune
docker container prune

docker rmi $(docker images -q)
