if [[ -f .current_id ]]; then
    docker stop `cat .current_id`
fi