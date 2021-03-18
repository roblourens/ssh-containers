set -e

docker build -t ssh-ubuntu .
id=$(docker run -dp 1111:22 ssh-ubuntu)
if [[ $? == 0 ]]; then
    echo $id > .current_id
    echo "Started $id"
    echo "VS Code -> 'Connect To Host' -> root@localhost:1111 -> password is 'root'"
else
    echo "Starting container failed"
    echo $id
fi