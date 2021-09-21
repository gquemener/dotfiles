composer () {
    tty=
    tty -s && tty=--tty
    docker run \
        $tty \
        --interactive \
        --rm \
        --user $(id -u):$(id -g) \
        --volume /etc/passwd:/etc/passwd:ro \
        --volume /etc/group:/etc/group:ro \
        --volume $(pwd):/app \
        --volume $SSH_AUTH_SOCK:/ssh-auth.sock \
        --volume ${HOME}/.ssh/known_hosts:/etc/ssh/ssh_known_hosts \
        --volume ${HOME}/.composer:/tmp/.composer \
        --env SSH_AUTH_SOCK=/ssh-auth.sock \
        --env COMPOSER_HOME=/tmp/.composer \
        composer "$@"
}
