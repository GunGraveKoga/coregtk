TEMPLATE = app
CONFIG += windows
CONFIG -= app_bundle
CONFIG -= qt

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

INCLUDEPATH += $$PWD/../../src

DEFINES += gnu_printf=__printf__

LIBS += -lgtk-3 -lgdk-3 -lgdi32 -limm32 -lshell32 \
 -lole32 -lwinmm -ldwmapi -lsetupapi -lcfgmgr32 -lz \
 -lpangowin32-1.0 -lpangocairo-1.0 -lpango-1.0 -latk-1.0 \
 -lcairo-gobject -lcairo -lgdk_pixbuf-2.0 -lgio-2.0 -lgobject-2.0 \
 -lglib-2.0 -lintl

HEADERS += \ 
    MultiDialog.h \
    SimpleTextEditor.h

SOURCES += main.m \
    MultiDialog.m \
    SimpleTextEditor.m

DISTFILES += \
    gui.glade \
    indirect_compiler.sh

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../../src/CoreGTK/release/ -lCoreGTK
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../src/CoreGTK/debug/ -lCoreGTK
else:unix: LIBS += -L$$OUT_PWD/../../src/CoreGTK/ -lCoreGTK

INCLUDEPATH += $$PWD/../../src/CoreGTK
DEPENDPATH += $$PWD/../../src/CoreGTK
DEPENDPATH += $$PWD/../../src
