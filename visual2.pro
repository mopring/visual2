QT += core gui widgets network xml multimedia multimediawidgets

CONFIG += c++17

win32-msvc*:QMAKE_CXXFLAGS += /utf-8
# QMAKE_LFLAGS += "/MANIFESTUAC:\"level='requireAdministrator' uiAccess='false'\""

SOURCES += \
    $$files($$PWD/src/*.cpp)\
    $$files($$PWD/src/common/*.cpp)

HEADERS += \
    $$files($$PWD/src/*.h)\
    $$files($$PWD/src/common/*.h)\


FORMS += $$PWD/src/visual2.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

INCLUDEPATH += C:\opencv\opencv-build\install\include
LIBS += C:\opencv\opencv-build\lib\libopencv_*.a
