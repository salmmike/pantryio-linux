SUMMARY = "Pantry-io linux image"

IMAGE_FEATURES += "splash package-management ssh-server-dropbear hwcodecs"

LICENSE = "MIT"

inherit core-image

PACKAGECONFIG_qtbase += " eglfs gles2 "
PACKAGECONFIG:append_pn-qtbase = " eglfs "

PACKAGECONFIG[eglfs] = "-eglfs"

IMAGE_INSTALL +=  " qtbase \
                    qtbase-tools \
                    qtbase-plugins \
                    pantry-io-qt5 \
                    qtscript "

QB_MEM = "-m 512"
