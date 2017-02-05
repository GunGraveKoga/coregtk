TEMPLATE = app
CONFIG += windows
CONFIG -= app_bundle
CONFIG -= qt

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
