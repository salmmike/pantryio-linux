SUMMARY = "Pantry-io linux image"

IMAGE_FEATURES += "splash package-management ssh-server-dropbear hwcodecs weston"

LICENSE = "MIT"

inherit core-image

CORE_IMAGE_BASE_INSTALL += "gtk+3-demo"
CORE_IMAGE_BASE_INSTALL += "${@bb.utils.contains('DISTRO_FEATURES', 'x11', 'weston-xwayland matchbox-terminal', '', d)}"

IMAGE_INSTALL += " qtbase qtbase-tools qtbase-plugins pantry-io-qt5"

QB_MEM = "-m 512"
