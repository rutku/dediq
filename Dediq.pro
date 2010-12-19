#-------------------------------------------------
#
# Project created by QtCreator 2010-12-04T12:22:44
#
#-------------------------------------------------

QT       += core gui

TARGET = Dediq
TEMPLATE = app


SOURCES += main.cpp\
        mainform.cpp \
    settings/settingsdialog.cpp \
    management/pmanagement.cpp \
    settings/newprojectdialog.cpp \
    texteditor/texteditor.cpp \
    texteditor/highlighter.cpp

HEADERS  += mainform.h \
    settings/settingsdialog.h \
    management/pmanagement.h \
    settings/newprojectdialog.h \
    texteditor/texteditor.h \
    texteditor/highlighter.h

FORMS    += mainform.ui \
    settings/settingsdialog.ui \
    settings/newprojectdialog.ui

OTHER_FILES += \
    Readme.txt \
    todo.txt

RESOURCES += \
    icons.qrc
