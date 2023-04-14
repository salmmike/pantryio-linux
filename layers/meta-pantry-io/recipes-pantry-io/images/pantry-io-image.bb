SUMMARY = "Pantry-io linux image"

IMAGE_FEATURES += "splash package-management ssh-server-dropbear hwcodecs"

LICENSE = "MIT"

inherit core-image

IMAGE_INSTALL += " qtbase qtbase-tools qtbase-plugins pantry-io-qt5"

QB_MEM = "-m 512"
