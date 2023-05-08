PACKAGECONFIG += " gles2 "
PACKAGECONFIG[eglfs] = "eglfs,noeglfs,drm"

do_configure_prepend() {
    cat > ${S}/mkspecs/oe-device-extra.pri <<EOF
    QMAKE_LIBS_EGL += -lEGL -ldl -lglib-2.0 -lpthread
    QMAKE_LIBS_OPENGL_ES2 += -lGLESv2 -lgsl -lEGL -ldl -lglib-2.0 -lpthread

    QMAKE_CFLAGS += -DLINUX=1 -DWL_EGL_PLATFORM
    QMAKE_CXXFLAGS += -DLINUX=1 -DWL_EGL_PLATFORM

    QT_QPA_DEFAULT_PLATFORM = eglfs
    EOF
}
