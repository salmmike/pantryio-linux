SUMMARY = "Pantry-io linux image"

IMAGE_FEATURES += "splash package-management ssh-server-dropbear hwcodecs weston "

IMAGE_INSTALL:append = " pantry-io-ui "

LICENSE = "MIT"

inherit core-image

QB_MEM = "-m 512"
