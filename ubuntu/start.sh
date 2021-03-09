set -e

docker build -t ssh-ubuntu .
docker run -dp 1111:22 ssh-ubuntu
echo "VS Code -> 'Connect To Host' -> root@localhost:1111 -> password is 'root'"