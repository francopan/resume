docker build . -t resume
docker run --name resume -d resume
sleep 5
docker cp $(docker ps -aqf "name=resume"):/usr/share/nginx/html/index.pdf ./dist
docker container stop resume && docker container rm resume

