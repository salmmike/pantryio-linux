sudo docker build  -t ubuntu-yocto .
container=$(sudo docker run -dit --rm --name ubuntu-yocto --mount type=bind,source=${PWD},target=/home/build/ ubuntu-yocto)
sudo docker attach $container


