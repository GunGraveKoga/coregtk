TEMPLATE = app
CONFIG += windows
CONFIG -= app_bundle
CONFIG -= qt
TARGET += HellowWorld

INCLUDEPATH += "C:/msys64/mingw32/i686-w64-mingw32/include"
INCLUDEPATH += "C:/msys64/mingw32/include"
INCLUDEPATH += "C:/msys64/mingw32/include/gtk-3.0"
INCLUDEPATH += "C:/msys64/mingw32/include/cairo"
INCLUDEPATH += "C:/msys64/mingw32/include/pango-1.0"
INCLUDEPATH += "C:/msys64/mingw32/include/atk-1.0"
INCLUDEPATH += "C:/msys64/mingw32/include/pixman-1"
INCLUDEPATH += "C:/msys64/mingw32/include/freetype2"
INCLUDEPATH += "C:/msys64/mingw32/include/libpng16"
INCLUDEPATH += "C:/msys64/mingw32/include/harfbuzz"
INCLUDEPATH += "C:/msys64/mingw32/include/glib-2.0"
INCLUDEPATH += "C:/msys64/mingw32/lib/glib-2.0/include"
INCLUDEPATH += "C:/msys64/mingw32/include/harfbuzz"
INCLUDEPATH += "C:/msys64/mingw32/include/gdk-pixbuf-2.0"

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
