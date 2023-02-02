if (Test-Path .current_id) {
    docker stop $(cat .current_id)
}