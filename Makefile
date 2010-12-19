#############################################################################
# Makefile for building: Dediq
# Generated by qmake (2.01a) (Qt 4.7.1) on: Paz Ara 19 14:08:54 2010
# Project:  Dediq.pro
# Template: app
# Command: /usr/bin/qmake -spec /usr/share/qt/mkspecs/linux-g++ CONFIG+=debug -o Makefile Dediq.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -pipe -g -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -pipe -g -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I/usr/share/qt/mkspecs/linux-g++ -I. -I/usr/include/QtCore -I/usr/include/QtGui -I/usr/include -I. -I.
LINK          = g++
LFLAGS        = -Wl,--hash-style=gnu -Wl,--as-needed
LIBS          = $(SUBLIBS)  -L/usr/lib -lQtGui -lQtCore -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = main.cpp \
		mainform.cpp \
		settings/settingsdialog.cpp \
		management/pmanagement.cpp \
		settings/newprojectdialog.cpp \
		texteditor/texteditor.cpp \
		texteditor/highlighter.cpp moc_mainform.cpp \
		moc_settingsdialog.cpp \
		moc_pmanagement.cpp \
		moc_newprojectdialog.cpp \
		moc_texteditor.cpp \
		moc_highlighter.cpp \
		qrc_icons.cpp
OBJECTS       = main.o \
		mainform.o \
		settingsdialog.o \
		pmanagement.o \
		newprojectdialog.o \
		texteditor.o \
		highlighter.o \
		moc_mainform.o \
		moc_settingsdialog.o \
		moc_pmanagement.o \
		moc_newprojectdialog.o \
		moc_texteditor.o \
		moc_highlighter.o \
		qrc_icons.o
DIST          = /usr/share/qt/mkspecs/common/g++.conf \
		/usr/share/qt/mkspecs/common/unix.conf \
		/usr/share/qt/mkspecs/common/linux.conf \
		/usr/share/qt/mkspecs/qconfig.pri \
		/usr/share/qt/mkspecs/modules/qt_webkit_version.pri \
		/usr/share/qt/mkspecs/features/qt_functions.prf \
		/usr/share/qt/mkspecs/features/qt_config.prf \
		/usr/share/qt/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt/mkspecs/features/default_pre.prf \
		/usr/share/qt/mkspecs/features/debug.prf \
		/usr/share/qt/mkspecs/features/default_post.prf \
		/usr/share/qt/mkspecs/features/warn_on.prf \
		/usr/share/qt/mkspecs/features/qt.prf \
		/usr/share/qt/mkspecs/features/unix/thread.prf \
		/usr/share/qt/mkspecs/features/moc.prf \
		/usr/share/qt/mkspecs/features/resources.prf \
		/usr/share/qt/mkspecs/features/uic.prf \
		/usr/share/qt/mkspecs/features/yacc.prf \
		/usr/share/qt/mkspecs/features/lex.prf \
		/usr/share/qt/mkspecs/features/include_source_dir.prf \
		Dediq.pro
QMAKE_TARGET  = Dediq
DESTDIR       = 
TARGET        = Dediq

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET): ui_mainform.h ui_settingsdialog.h ui_newprojectdialog.h $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: Dediq.pro  /usr/share/qt/mkspecs/linux-g++/qmake.conf /usr/share/qt/mkspecs/common/g++.conf \
		/usr/share/qt/mkspecs/common/unix.conf \
		/usr/share/qt/mkspecs/common/linux.conf \
		/usr/share/qt/mkspecs/qconfig.pri \
		/usr/share/qt/mkspecs/modules/qt_webkit_version.pri \
		/usr/share/qt/mkspecs/features/qt_functions.prf \
		/usr/share/qt/mkspecs/features/qt_config.prf \
		/usr/share/qt/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt/mkspecs/features/default_pre.prf \
		/usr/share/qt/mkspecs/features/debug.prf \
		/usr/share/qt/mkspecs/features/default_post.prf \
		/usr/share/qt/mkspecs/features/warn_on.prf \
		/usr/share/qt/mkspecs/features/qt.prf \
		/usr/share/qt/mkspecs/features/unix/thread.prf \
		/usr/share/qt/mkspecs/features/moc.prf \
		/usr/share/qt/mkspecs/features/resources.prf \
		/usr/share/qt/mkspecs/features/uic.prf \
		/usr/share/qt/mkspecs/features/yacc.prf \
		/usr/share/qt/mkspecs/features/lex.prf \
		/usr/share/qt/mkspecs/features/include_source_dir.prf \
		/usr/lib/libQtGui.prl \
		/usr/lib/libQtCore.prl
	$(QMAKE) -spec /usr/share/qt/mkspecs/linux-g++ CONFIG+=debug -o Makefile Dediq.pro
/usr/share/qt/mkspecs/common/g++.conf:
/usr/share/qt/mkspecs/common/unix.conf:
/usr/share/qt/mkspecs/common/linux.conf:
/usr/share/qt/mkspecs/qconfig.pri:
/usr/share/qt/mkspecs/modules/qt_webkit_version.pri:
/usr/share/qt/mkspecs/features/qt_functions.prf:
/usr/share/qt/mkspecs/features/qt_config.prf:
/usr/share/qt/mkspecs/features/exclusive_builds.prf:
/usr/share/qt/mkspecs/features/default_pre.prf:
/usr/share/qt/mkspecs/features/debug.prf:
/usr/share/qt/mkspecs/features/default_post.prf:
/usr/share/qt/mkspecs/features/warn_on.prf:
/usr/share/qt/mkspecs/features/qt.prf:
/usr/share/qt/mkspecs/features/unix/thread.prf:
/usr/share/qt/mkspecs/features/moc.prf:
/usr/share/qt/mkspecs/features/resources.prf:
/usr/share/qt/mkspecs/features/uic.prf:
/usr/share/qt/mkspecs/features/yacc.prf:
/usr/share/qt/mkspecs/features/lex.prf:
/usr/share/qt/mkspecs/features/include_source_dir.prf:
/usr/lib/libQtGui.prl:
/usr/lib/libQtCore.prl:
qmake:  FORCE
	@$(QMAKE) -spec /usr/share/qt/mkspecs/linux-g++ CONFIG+=debug -o Makefile Dediq.pro

dist: 
	@$(CHK_DIR_EXISTS) .tmp/Dediq1.0.0 || $(MKDIR) .tmp/Dediq1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/Dediq1.0.0/ && $(COPY_FILE) --parents mainform.h settings/settingsdialog.h management/pmanagement.h settings/newprojectdialog.h texteditor/texteditor.h texteditor/highlighter.h .tmp/Dediq1.0.0/ && $(COPY_FILE) --parents icons.qrc .tmp/Dediq1.0.0/ && $(COPY_FILE) --parents main.cpp mainform.cpp settings/settingsdialog.cpp management/pmanagement.cpp settings/newprojectdialog.cpp texteditor/texteditor.cpp texteditor/highlighter.cpp .tmp/Dediq1.0.0/ && $(COPY_FILE) --parents mainform.ui settings/settingsdialog.ui settings/newprojectdialog.ui .tmp/Dediq1.0.0/ && (cd `dirname .tmp/Dediq1.0.0` && $(TAR) Dediq1.0.0.tar Dediq1.0.0 && $(COMPRESS) Dediq1.0.0.tar) && $(MOVE) `dirname .tmp/Dediq1.0.0`/Dediq1.0.0.tar.gz . && $(DEL_FILE) -r .tmp/Dediq1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: moc_mainform.cpp moc_settingsdialog.cpp moc_pmanagement.cpp moc_newprojectdialog.cpp moc_texteditor.cpp moc_highlighter.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_mainform.cpp moc_settingsdialog.cpp moc_pmanagement.cpp moc_newprojectdialog.cpp moc_texteditor.cpp moc_highlighter.cpp
moc_mainform.cpp: texteditor/highlighter.h \
		management/pmanagement.h \
		mainform.h
	/usr/bin/moc $(DEFINES) $(INCPATH) mainform.h -o moc_mainform.cpp

moc_settingsdialog.cpp: settings/settingsdialog.h
	/usr/bin/moc $(DEFINES) $(INCPATH) settings/settingsdialog.h -o moc_settingsdialog.cpp

moc_pmanagement.cpp: management/pmanagement.h
	/usr/bin/moc $(DEFINES) $(INCPATH) management/pmanagement.h -o moc_pmanagement.cpp

moc_newprojectdialog.cpp: management/pmanagement.h \
		settings/newprojectdialog.h
	/usr/bin/moc $(DEFINES) $(INCPATH) settings/newprojectdialog.h -o moc_newprojectdialog.cpp

moc_texteditor.cpp: texteditor/texteditor.h
	/usr/bin/moc $(DEFINES) $(INCPATH) texteditor/texteditor.h -o moc_texteditor.cpp

moc_highlighter.cpp: texteditor/highlighter.h
	/usr/bin/moc $(DEFINES) $(INCPATH) texteditor/highlighter.h -o moc_highlighter.cpp

compiler_rcc_make_all: qrc_icons.cpp
compiler_rcc_clean:
	-$(DEL_FILE) qrc_icons.cpp
qrc_icons.cpp: icons.qrc \
		app_icons/save.png \
		app_icons/iFolder.png \
		app_icons/bt_play.png \
		app_icons/iFolder_add.png \
		app_icons/bt_stop.png
	/usr/bin/rcc -name icons icons.qrc -o qrc_icons.cpp

compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all: ui_mainform.h ui_settingsdialog.h ui_newprojectdialog.h
compiler_uic_clean:
	-$(DEL_FILE) ui_mainform.h ui_settingsdialog.h ui_newprojectdialog.h
ui_mainform.h: mainform.ui
	/usr/bin/uic mainform.ui -o ui_mainform.h

ui_settingsdialog.h: settings/settingsdialog.ui
	/usr/bin/uic settings/settingsdialog.ui -o ui_settingsdialog.h

ui_newprojectdialog.h: settings/newprojectdialog.ui
	/usr/bin/uic settings/newprojectdialog.ui -o ui_newprojectdialog.h

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_rcc_clean compiler_uic_clean 

####### Compile

main.o: main.cpp mainform.h \
		texteditor/highlighter.h \
		management/pmanagement.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

mainform.o: mainform.cpp mainform.h \
		texteditor/highlighter.h \
		management/pmanagement.h \
		ui_mainform.h \
		settings/newprojectdialog.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mainform.o mainform.cpp

settingsdialog.o: settings/settingsdialog.cpp settings/settingsdialog.h \
		ui_settingsdialog.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o settingsdialog.o settings/settingsdialog.cpp

pmanagement.o: management/pmanagement.cpp management/pmanagement.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o pmanagement.o management/pmanagement.cpp

newprojectdialog.o: settings/newprojectdialog.cpp settings/newprojectdialog.h \
		management/pmanagement.h \
		ui_newprojectdialog.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o newprojectdialog.o settings/newprojectdialog.cpp

texteditor.o: texteditor/texteditor.cpp texteditor/texteditor.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o texteditor.o texteditor/texteditor.cpp

highlighter.o: texteditor/highlighter.cpp texteditor/highlighter.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o highlighter.o texteditor/highlighter.cpp

moc_mainform.o: moc_mainform.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_mainform.o moc_mainform.cpp

moc_settingsdialog.o: moc_settingsdialog.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_settingsdialog.o moc_settingsdialog.cpp

moc_pmanagement.o: moc_pmanagement.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_pmanagement.o moc_pmanagement.cpp

moc_newprojectdialog.o: moc_newprojectdialog.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_newprojectdialog.o moc_newprojectdialog.cpp

moc_texteditor.o: moc_texteditor.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_texteditor.o moc_texteditor.cpp

moc_highlighter.o: moc_highlighter.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_highlighter.o moc_highlighter.cpp

qrc_icons.o: qrc_icons.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o qrc_icons.o qrc_icons.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:
