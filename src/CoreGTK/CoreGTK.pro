TEMPLATE = lib
#CONFIG += staticlib
CONFIG += dll
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
    CGTK.h \
    CGTKAboutDialog.h \
    CGTKAccelLabel.h \
    CGTKActionBar.h \
    CGTKAlignment.h \
    CGTKAppChooserButton.h \
    CGTKAppChooserDialog.h \
    CGTKAppChooserWidget.h \
    CGTKApplicationWindow.h \
    CGTKArrow.h \
    CGTKAspectFrame.h \
    CGTKAssistant.h \
    CGTKBase.h \
    CGTKBaseBuilder.h \
    CGTKBin.h \
    CGTKBox.h \
    CGTKBuilder.h \
    CGTKButton.h \
    CGTKButtonBox.h \
    CGTKCalendar.h \
    CGTKCallbackData.h \
    CGTKCellView.h \
    CGTKCheckButton.h \
    CGTKCheckMenuItem.h \
    CGTKColorButton.h \
    CGTKColorChooserDialog.h \
    CGTKColorChooserWidget.h \
    CGTKColorSelection.h \
    CGTKColorSelectionDialog.h \
    CGTKComboBox.h \
    CGTKComboBoxText.h \
    CGTKContainer.h \
    CGTKDialog.h \
    CGTKDrawingArea.h \
    CGTKEntry.h \
    CGTKEventBox.h \
    CGTKExpander.h \
    CGTKFileChooserButton.h \
    CGTKFileChooserDialog.h \
    CGTKFileChooserWidget.h \
    CGTKFixed.h \
    CGTKFlowBox.h \
    CGTKFlowBoxChild.h \
    CGTKFontButton.h \
    CGTKFontChooserDialog.h \
    CGTKFontChooserWidget.h \
    CGTKFontSelection.h \
    CGTKFontSelectionDialog.h \
    CGTKFrame.h \
    CGTKGLArea.h \
    CGTKGrid.h \
    CGTKHandleBox.h \
    CGTKHBox.h \
    CGTKHButtonBox.h \
    CGTKHeaderBar.h \
    CGTKHPaned.h \
    CGTKHScale.h \
    CGTKHScrollbar.h \
    CGTKHSeparator.h \
    CGTKHSV.h \
    CGTKIconView.h \
    CGTKImage.h \
    CGTKImageMenuItem.h \
    CGTKInfoBar.h \
    CGTKInvisible.h \
    CGTKLabel.h \
    CGTKLayout.h \
    CGTKLevelBar.h \
    CGTKLinkButton.h \
    CGTKListBox.h \
    CGTKListBoxRow.h \
    CGTKLockButton.h \
    CGTKMenu.h \
    CGTKMenuBar.h \
    CGTKMenuButton.h \
    CGTKMenuItem.h \
    CGTKMenuShell.h \
    CGTKMenuToolButton.h \
    CGTKMessageDialog.h \
    CGTKMisc.h \
    CGTKModelButton.h \
    CGTKNotebook.h \
    CGTKOffscreenWindow.h \
    CGTKOverlay.h \
    CGTKPaned.h \
    CGTKPlacesSidebar.h \
    CGTKPopover.h \
    CGTKPopoverMenu.h \
    CGTKProgressBar.h \
    CGTKRadioButton.h \
    CGTKRadioMenuItem.h \
    CGTKRadioToolButton.h \
    CGTKRange.h \
    CGTKRecentChooserDialog.h \
    CGTKRecentChooserMenu.h \
    CGTKRecentChooserWidget.h \
    CGTKRevealer.h \
    CGTKScale.h \
    CGTKScaleButton.h \
    CGTKScrollbar.h \
    CGTKScrolledWindow.h \
    CGTKSearchBar.h \
    CGTKSearchEntry.h \
    CGTKSeparator.h \
    CGTKSeparatorMenuItem.h \
    CGTKSeparatorToolItem.h \
    CGTKSignalConnector.h \
    CGTKSignalData.h \
    CGTKSpinButton.h \
    CGTKSpinner.h \
    CGTKStack.h \
    CGTKStackSidebar.h \
    CGTKStackSwitcher.h \
    CGTKStatusbar.h \
    CGTKSwitch.h \
    CGTKTable.h \
    CGTKTearoffMenuItem.h \
    CGTKTextView.h \
    CGTKToggleButton.h \
    CGTKToggleToolButton.h \
    CGTKToolbar.h \
    CGTKToolButton.h \
    CGTKToolItem.h \
    CGTKToolItemGroup.h \
    CGTKToolPalette.h \
    CGTKTreeView.h \
    CGTKTypeWrapper.h \
    CGTKVBox.h \
    CGTKVButtonBox.h \
    CGTKViewport.h \
    CGTKVolumeButton.h \
    CGTKVPaned.h \
    CGTKVScale.h \
    CGTKVScrollbar.h \
    CGTKVSeparator.h \
    CGTKWidget.h \
    CGTKWindow.h

SOURCES += CGTK.m \
    CGTKAboutDialog.m \
    CGTKAccelLabel.m \
    CGTKActionBar.m \
    CGTKAlignment.m \
    CGTKAppChooserButton.m \
    CGTKAppChooserDialog.m \
    CGTKAppChooserWidget.m \
    CGTKApplicationWindow.m \
    CGTKArrow.m \
    CGTKAspectFrame.m \
    CGTKAssistant.m \
    CGTKBase.m \
    CGTKBaseBuilder.m \
    CGTKBin.m \
    CGTKBox.m \
    CGTKBuilder.m \
    CGTKButton.m \
    CGTKButtonBox.m \
    CGTKCalendar.m \
    CGTKCallbackData.m \
    CGTKCellView.m \
    CGTKCheckButton.m \
    CGTKCheckMenuItem.m \
    CGTKColorButton.m \
    CGTKColorChooserDialog.m \
    CGTKColorChooserWidget.m \
    CGTKColorSelection.m \
    CGTKColorSelectionDialog.m \
    CGTKComboBox.m \
    CGTKComboBoxText.m \
    CGTKContainer.m \
    CGTKDialog.m \
    CGTKDrawingArea.m \
    CGTKEntry.m \
    CGTKEventBox.m \
    CGTKExpander.m \
    CGTKFileChooserButton.m \
    CGTKFileChooserDialog.m \
    CGTKFileChooserWidget.m \
    CGTKFixed.m \
    CGTKFlowBox.m \
    CGTKFlowBoxChild.m \
    CGTKFontButton.m \
    CGTKFontChooserDialog.m \
    CGTKFontChooserWidget.m \
    CGTKFontSelection.m \
    CGTKFontSelectionDialog.m \
    CGTKFrame.m \
    CGTKGLArea.m \
    CGTKGrid.m \
    CGTKHandleBox.m \
    CGTKHBox.m \
    CGTKHButtonBox.m \
    CGTKHeaderBar.m \
    CGTKHPaned.m \
    CGTKHScale.m \
    CGTKHScrollbar.m \
    CGTKHSeparator.m \
    CGTKHSV.m \
    CGTKIconView.m \
    CGTKImage.m \
    CGTKImageMenuItem.m \
    CGTKInfoBar.m \
    CGTKInvisible.m \
    CGTKLabel.m \
    CGTKLayout.m \
    CGTKLevelBar.m \
    CGTKLinkButton.m \
    CGTKListBox.m \
    CGTKListBoxRow.m \
    CGTKLockButton.m \
    CGTKMenu.m \
    CGTKMenuBar.m \
    CGTKMenuButton.m \
    CGTKMenuItem.m \
    CGTKMenuShell.m \
    CGTKMenuToolButton.m \
    CGTKMessageDialog.m \
    CGTKMisc.m \
    CGTKModelButton.m \
    CGTKNotebook.m \
    CGTKOffscreenWindow.m \
    CGTKOverlay.m \
    CGTKPaned.m \
    CGTKPlacesSidebar.m \
    CGTKPopover.m \
    CGTKPopoverMenu.m \
    CGTKProgressBar.m \
    CGTKRadioButton.m \
    CGTKRadioMenuItem.m \
    CGTKRadioToolButton.m \
    CGTKRange.m \
    CGTKRecentChooserDialog.m \
    CGTKRecentChooserMenu.m \
    CGTKRecentChooserWidget.m \
    CGTKRevealer.m \
    CGTKScale.m \
    CGTKScaleButton.m \
    CGTKScrollbar.m \
    CGTKScrolledWindow.m \
    CGTKSearchBar.m \
    CGTKSearchEntry.m \
    CGTKSeparator.m \
    CGTKSeparatorMenuItem.m \
    CGTKSeparatorToolItem.m \
    CGTKSignalConnector.m \
    CGTKSignalData.m \
    CGTKSpinButton.m \
    CGTKSpinner.m \
    CGTKStack.m \
    CGTKStackSidebar.m \
    CGTKStackSwitcher.m \
    CGTKStatusbar.m \
    CGTKSwitch.m \
    CGTKTable.m \
    CGTKTearoffMenuItem.m \
    CGTKTextView.m \
    CGTKToggleButton.m \
    CGTKToggleToolButton.m \
    CGTKToolbar.m \
    CGTKToolButton.m \
    CGTKToolItem.m \
    CGTKToolItemGroup.m \
    CGTKToolPalette.m \
    CGTKTreeView.m \
    CGTKTypeWrapper.m \
    CGTKVBox.m \
    CGTKVButtonBox.m \
    CGTKViewport.m \
    CGTKVolumeButton.m \
    CGTKVPaned.m \
    CGTKVScale.m \
    CGTKVScrollbar.m \
    CGTKVSeparator.m \
    CGTKWidget.m \
    CGTKWindow.m
