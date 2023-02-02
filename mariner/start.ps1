docker build -t ssh-mariner .
$id=$(docker run -dp 1112:22 ssh-mariner)
if ($LASTEXITCODE -eq 0) {
    echo $id > .current_id
    Write-Host "Started $id"
    Write-Host "VS Code -> 'Connect To Host' -> root@localhost:1112 -> password is 'root'"
} else {
    Write-Error "Starting container failed $id"
}