SUMMARY = "Pantry-io GUI"
DESCRIPTION = "TODO"
SECTION = "example"
LICENSE = "MIT"

DEPENDS += " qtbase wayland "

SRC_URI = " file://main.cpp \
            file://mainwindow.cpp \
            file://mainwindow.h \
            file://mainwindow.ui  \
            file://qttest.pro "

LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

TARGET_CC_ARCH += "${LDFLAGS}"

S = "${WORKDIR}"

do_install() {
    install -d /opt/qttest/bin/qttest
    install -m 0775 qttest /opt/qttest/bin/
}

FILES:${PN} += "/opt/qttest/bin/qttest"

inherit qmake5
