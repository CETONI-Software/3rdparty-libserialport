include($$(cetoni_repository)/build/qt/qtprojectsettings/common.pri)

QMAKE_CFLAGS_RELEASE -= -std=c99

QT -= core gui

TEMPLATE = lib
TARGET = $$uslQtLibraryTarget(libserialport, d)


isEmpty( DLLDESTDIR ) {
    DLLDESTDIR = $$usrlibs
}




DEPENDPATH += $$PWD

HEADERS += libserialport.h \
	libserialport_internal.h

SOURCES += serialport.c

DEFINES -= UNICODE

win32 {
SOURCES += windows.c
}

LIBS += -lsetupapi
