TEMPLATE = app
CONFIG += windows
CONFIG -= app_bundle
CONFIG -= qt
TARGET += HellowWorld

INCLUDEPATH += "$$(MSYSTEM_PREFIX)/$$(MSYSTEM_CHOST)/include"
INCLUDEPATH += "$$(MSYSTEM_PREFIX)/include"
INCLUDEPATH += "$$(MSYSTEM_PREFIX)/include/gtk-3.0"
INCLUDEPATH += "$$(MSYSTEM_PREFIX)/include/cairo"
INCLUDEPATH += "$$(MSYSTEM_PREFIX)/include/pango-1.0"
INCLUDEPATH += "$$(MSYSTEM_PREFIX)/include/atk-1.0"
INCLUDEPATH += "$$(MSYSTEM_PREFIX)/include/pixman-1"
INCLUDEPATH += "$$(MSYSTEM_PREFIX)/include/freetype2"
INCLUDEPATH += "$$(MSYSTEM_PREFIX)/include/libpng16"
INCLUDEPATH += "$$(MSYSTEM_PREFIX)/include/harfbuzz"
INCLUDEPATH += "$$(MSYSTEM_PREFIX)/include/glib-2.0"
INCLUDEPATH += "$$(MSYSTEM_PREFIX)/lib/glib-2.0/include"
INCLUDEPATH += "$$(MSYSTEM_PREFIX)/include/harfbuzz"
INCLUDEPATH += "$$(MSYSTEM_PREFIX)/include/gdk-pixbuf-2.0"

DEFINES += gnu_printf=__printf__

HEADERS += 

SOURCES += main.m

DISTFILES += \
    gladeExample.glade \
    indirect_compiler.sh

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/CoreGTK/release/ -lCoreGTK
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/CoreGTK/debug/ -lCoreGTK
else:unix: LIBS += -L$$OUT_PWD/CoreGTK/ -lCoreGTK

INCLUDEPATH += $$PWD/CoreGTK
DEPENDPATH += $$PWD/CoreGTK
