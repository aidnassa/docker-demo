docker rmi demo
docker build -t demo .
docker run -p 3080:3080 demo
