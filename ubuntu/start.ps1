docker build -t ssh-ubuntu .
$id=$(docker run -dp 1111:22 ssh-ubuntu)
if ($LASTEXITCODE -eq 0) {
    echo $id > .current_id
    Write-Host "Started $id"
    Write-Host "VS Code -> 'Connect To Host' -> root@localhost:1111 -> password is 'root'"
} else {
    Write-Error "Starting container failed $id"
}