php80 () {
    tty=
    tty -s && tty=--tty
    docker run \
        $tty \
        --interactive \
        --rm \
        --user $(id -u):$(id -g) \
        --volume $(pwd):/app \
        -w /app \
        php:8.0-cli-alpine "$@"
}
