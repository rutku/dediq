#include "mainform.h"
#include "ui_mainform.h"
#include "settings/newprojectdialog.h"

MainForm::MainForm(QWidget *parent) :
        QMainWindow(parent),
        ui(new Ui::MainForm)
{
    ui->setupUi(this);
    loadProjects();
    setupEditor();
}

MainForm::~MainForm()
{
    delete ui;
}

void MainForm::setupEditor(){
    QFont font;
    font.setFamily("Courier");
    font.setFixedPitch(true);
    font.setPointSize(10);
    font.setBold(true);



    ui->editor->setFont(font);
    highlighter = new Highlighter(ui->editor->document());
}


void MainForm::on_openFile_activated()
{
    QString fileName;

    if (fileName.isNull())
        fileName = QFileDialog::getOpenFileName(this,
                                                tr("Open File"), "", "D Files (*.d)");

    if (!fileName.isEmpty()) {
        QFile file(fileName);
        if (file.open(QFile::ReadOnly | QFile::Text))
        {
            ui->editor->setPlainText(file.readAll());
            ui->tabWidget->setTabText(ui->tabWidget->currentIndex(),file.fileName());
        }
    }
}

void MainForm::loadProjects()
{
    ui->treeWidget->setContextMenuPolicy(Qt::CustomContextMenu);
    QFile file("projectHistory.did");
    QList<QString> projectHistoryList;
    if(file.exists())
    {
        if (!file.open(QIODevice::ReadOnly | QIODevice::Text))
            return;

        QTextStream in(&file);
        while (!in.atEnd()) {
            QString line = in.readLine();
            projectHistoryList.append(line);

        }
        file.close();

        for(int i=0; i < projectHistoryList.size();i++)
        {
            rootDir = new QTreeWidgetItem(ui->treeWidget);
            QDir projectName(projectHistoryList.at(i));
            rootDir->setText(0,projectName.dirName());
            QString psindex = projectHistoryList.at(i)+QDir::separator()+"index.did";
            QFile pindex(""+psindex);
            QList<QString> pClass;
            if (!pindex.open(QIODevice::ReadOnly | QIODevice::Text))
                return;
            QTextStream in(&pindex);
            while(!in.atEnd())
            {
                pClass.append(in.readLine());
            }
            pindex.close();
            for(int j =0;j<pClass.size();j++)
            {
                child = new QTreeWidgetItem(rootDir);

                if(pClass.at(j).startsWith("RUNCLASS="))
                {
                    QString klme = pClass.at(j);
                    klme.remove(0,9);
                    child->setText(0,klme);
                    QString tooltip = projectHistoryList.at(i)+QDir::separator()+klme;
                    child->setToolTip(0,tooltip);
                }
                if(pClass.at(j).startsWith("CLASS="))
                {
                    QString klme = pClass.at(j);
                    klme.remove(0,6);
                    child->setText(0,klme);
                    QString tooltip = projectHistoryList.at(i)+QDir::separator()+klme;
                    child->setToolTip(0,tooltip);

                }

            }
        }
    }


}


void MainForm::on_btn_newProject_clicked()
{
    newProject();
}

void MainForm::newProject()
{
    newProjectDialog n;
    n.setPmanagement(p);
    n.exec();
}

void MainForm::on_btn_save_clicked()
{
    ui->textEdit->setText(p->getProjectPath());
}


void MainForm::on_MainForm_destroyed()
{
    delete model;
    delete highlighter;
    delete rootDir;
    delete child;
    delete p;
}

void MainForm::on_treeWidget_itemClicked(QTreeWidgetItem* item, int column)
{

}

void MainForm::on_treeWidget_itemDoubleClicked(QTreeWidgetItem* item, int column)
{
    QFile file(item->toolTip(column));
    if(file.exists())
    {
        if (file.open(QFile::ReadOnly | QFile::Text))
            ui->editor->setPlainText(file.readAll());
    }
}

void MainForm::on_treeWidget_customContextMenuRequested(QPoint pos)
{
    rootDir = ui->treeWidget->itemAt(pos);
    if(!rootDir)
        return;

    QMenu *menu = new QMenu(this);
    menu->addAction("File Add");
    menu->addAction("Copy");
    menu->addAction("Cut");
    menu->addAction("Delete");
    menu->addAction("Reflactor");
    menu->exec(ui->treeWidget->viewport()->mapToGlobal(pos));
    delete menu;
}

