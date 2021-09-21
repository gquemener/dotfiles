pandoo() {
  docker run --rm -it \
    -e MDPTIO_USER="$(whoami)" \
    -e MDPTIO_UID="$(id -u)" \
    -e MDPTIO_GID="$(id -g)" \
    -v "${HOME}/.pandoo":/root/.pandoo \
    mdpt.io/pandoo:latest "$@"
}
