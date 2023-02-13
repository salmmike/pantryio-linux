sudo docker build  -t ubuntu-yocto .
containerid=$(sudo docker run -dit --rm --name ubuntu-yocto --mount type=bind,source=${PWD},target=/build/ ubuntu-yocto)
sudo docker attach ${containerid}


