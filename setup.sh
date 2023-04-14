docker build  -t ubuntu-yocto .
container=$(docker run -dit --rm --name ubuntu-yocto --mount type=bind,source=${PWD},target=/build/ -w /build ubuntu-yocto)
docker attach $container


