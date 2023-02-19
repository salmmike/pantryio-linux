# Pantry-io-linux
Yocto linux distribution for the pantry-io project

## Building

Run the repo\_init.sh setup script to get ST layers

Use the setup.sh to build and attach to a Docker build container

Run `DISTRO=openstlinux-weston MACHINE=stm32mp1 source layers/meta-st/scripts/envsetup.sh` inside the container

Build the image with bitbake

