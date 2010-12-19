#ifndef NEWPROJECTDIALOG_H
#define NEWPROJECTDIALOG_H

#include <QDialog>
#include "management/pmanagement.h"

namespace Ui {
    class newProjectDialog;
}

class newProjectDialog : public QDialog
{
    Q_OBJECT

public:
    explicit newProjectDialog(QWidget *parent = 0);
    ~newProjectDialog();
    void setPmanagement(pManagement *p);

private:
    Ui::newProjectDialog *ui;
    void createProject();
    pManagement *pm;
    void settings();
    bool textControl();
    QString target;
    QString projectName;
    QString mainClass;

private slots:
    void on_newProjectDialog_destroyed();
    void on_btn_cancel_clicked();
    void on_btn_browse_clicked();
    void on_txt_target_textEdited(QString );
    void on_txt_mainClass_textEdited(QString );
    void on_txt_projectName_textChanged(QString );
    void on_btn_finish_clicked();
};

#endif // NEWPROJECTDIALOG_H
