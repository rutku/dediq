#include "newprojectdialog.h"
#include "ui_newprojectdialog.h"
#include "management/pmanagement.h"
#include "QRegExpValidator"
#include "QFileDialog"

newProjectDialog::newProjectDialog(QWidget *parent) :
        QDialog(parent),
        ui(new Ui::newProjectDialog)
{
    ui->setupUi(this);
    settings();
}

newProjectDialog::~newProjectDialog()
{
    delete ui;
}


void newProjectDialog::createProject()
{

    if(textControl())
    {
        pm->setProjectName(projectName);
        pm->setProjectPath(target);
        pm->setMainClass(mainClass);
        pm->createProject();
        newProjectDialog::close();
    }

}

bool newProjectDialog::textControl()
{
    bool stats;

    projectName = ui->txt_projectName->text();
    mainClass = ui->txt_mainClass->text();
    target = ui->txt_target->text();

    if(projectName.isEmpty())
    {
        stats = false;
        ui->lbl_warning->setVisible(true);
        ui->lbl_warning->setToolTip("Don't leave blank !");
    }else
    {
        stats = true;
    }
    if(mainClass.isEmpty())
    {
        stats = false;
        ui->lbl_warning_2->setVisible(true);
        ui->lbl_warning_2->setToolTip("Don't leave blank !");
    }else
    {
        stats=true;
    }
    if(target.isEmpty())
    {
        stats = false;
        ui->lbl_warning_3->setVisible(true);
        ui->lbl_warning_3->setToolTip("Don't leave blank !");
    }else
    {
        stats=true;
    }
    return stats;
}

void newProjectDialog::on_btn_finish_clicked()
{
    createProject();
}

void newProjectDialog::setPmanagement(pManagement *p)
{
    pm = p;
}

void newProjectDialog::settings()
{
    QRegExp regExp("^[a-zA-Z]+[0-9a-zA-Z-_]+");
    ui->txt_projectName->setValidator(new QRegExpValidator(regExp,this));
    ui->txt_mainClass->setValidator(new QRegExpValidator(regExp,this));
    QRegExp regExpPath("^[a-zA-Z\\/]+[0-9-_]+");
    ui->txt_target->setValidator(new QRegExpValidator(regExpPath,this));

    ui->lbl_warning->setVisible(false);
    ui->lbl_warning_2->setVisible(false);
    ui->lbl_warning_3->setVisible(false);
}

void newProjectDialog::on_txt_projectName_textChanged(QString )
{
    ui->lbl_warning->setVisible(false);
}

void newProjectDialog::on_txt_mainClass_textEdited(QString )
{
    ui->lbl_warning_2->setVisible(false);
}

void newProjectDialog::on_txt_target_textEdited(QString )
{
    ui->lbl_warning_3->setVisible(false);
}

void newProjectDialog::on_btn_browse_clicked()
{
    QString dir = QFileDialog::getExistingDirectory(this,tr("Open Directory"),
                                                    QDir::homePath(),
                                                    QFileDialog::ShowDirsOnly|QFileDialog::DontResolveSymlinks);
    ui->txt_target->setText(dir);
}

void newProjectDialog::on_btn_cancel_clicked()
{
    newProjectDialog::close();
}

void newProjectDialog::on_newProjectDialog_destroyed()
{
    delete pm;
}
