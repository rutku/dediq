#ifndef MAINFORM_H
#define MAINFORM_H

#include <QMainWindow>
#include "texteditor/highlighter.h"
#include "QtGui"
#include "management/pmanagement.h"

namespace Ui {
    class MainForm;
}

class MainForm : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainForm(QWidget *parent = 0);
    ~MainForm();

private:
    Ui::MainForm *ui;
    void setupEditor();
    Highlighter *highlighter;
    QTreeWidgetItem *model;
    pManagement *p;
    QTreeWidgetItem *rootDir;
    QTreeWidgetItem *child;
    void loadProjects();
    void newProject();


public slots:
    void on_openFile_activated();

private slots:
    void on_treeWidget_customContextMenuRequested(QPoint pos);
    void on_treeWidget_itemDoubleClicked(QTreeWidgetItem* item, int column);
    void on_treeWidget_itemClicked(QTreeWidgetItem* item, int column);
    void on_MainForm_destroyed();
    void on_btn_save_clicked();
    void on_btn_newProject_clicked();
    void rightM_OnFileAdd();


};

#endif // MAINFORM_H
