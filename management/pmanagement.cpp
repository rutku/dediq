#include "pmanagement.h"
#include "QDir"
#include "QTextStream"
#include "QFile"

pManagement::pManagement(QObject *parent) :
        QObject(parent)
{
}


QString pManagement::mainIndex()
{
    QString mi = QDir::homePath();
    return mi;
}

void pManagement::createProject()
{
    //Görsel arayüzden alacağımız proje ismi ve yoluna dizin eklenecek
    //İçerisine sınıf ve index.txt atılacak.

    QTextStream cout(stdout);


    QDir pPath(getProjectPath()+QDir::separator()+getProjectName());
    bool stats = pPath.exists();
    if(!stats)
    {
        QDir dir(getProjectPath());
        dir.mkdir(getProjectName());
        projectContents();
    }else
    {
        cout << "Dizin var" << endl;
    }
}

void pManagement::projectContents()
{
    /*
     *Todo: Hazır şablonlar sınıfı oluşturulacak.
     *Bu method hazır şablon sınıfına devredilecek.
    */
    //Ana dosya oluşuturuluyor.
    QString path = getProjectPath()+QDir::separator()+getProjectName()+
                   QDir::separator()+getMainClass();
    QFile mclass(path+".d");
    if (!mclass.open(QIODevice::WriteOnly | QIODevice::Text))
        return;
    QTextStream out(&mclass);
    out << "import std.stdio;" << endl
            << "void main(){" << endl
            << " writefln(\"Merhaba\");" << endl
            << "}" << endl;
    mclass.close();

    QFile mindex(getProjectPath()+QDir::separator()+getProjectName()+QDir::separator()+"index.did");
    if (!mindex.open(QIODevice::WriteOnly | QIODevice::Text))
        return;
    QTextStream out2(&mindex);
    out2 << "RUNCLASS=" << getMainClass() <<".d\n";
    mindex.close();
    projectsHistory(getProjectPath()+QDir::separator()+getProjectName());
}

void pManagement::addClass(QString p, QString n)
{

}
void pManagement::projectsHistory(QString p)
{
    QList<QString> list;
    list.append(p);
    QFile file("projectHistory.did");
    if(file.exists())
    {
        if (!file.open(QIODevice::ReadOnly | QIODevice::Text))
            return;

        QTextStream in(&file);
        while (!in.atEnd()) {
            QString line = in.readLine();
            list.append(line);
        }
        file.close();
    }else
    {
        if (!file.open(QIODevice::WriteOnly | QIODevice::Text))
            return;
        QTextStream out(&file);
        foreach(QString word,list)
        {
            out << word << endl;
        }
        file.close();
    }

}
QList<QString> pManagement::getProjectHistory()
{
    QList<QString> list;

    QFile file("projectHistory.did");
    if(file.exists())
    {
        if (!file.open(QIODevice::ReadOnly | QIODevice::Text))
            return list;

        QTextStream in(&file);
        while (!in.atEnd()) {
            QString line = in.readLine();
            list.append(line);
        }
        file.close();
    }

    return list;
}

void pManagement::setProjectName(QString n)
{
    projectName=n;
}

void pManagement::setProjectPath(QString p)
{
    projectPath = p;
}

void pManagement::setMainClass(QString m)
{
    mainClass = m;
}

QString pManagement::getMainClass()
{
    return mainClass;
}

QString pManagement::getProjectPath()
{
    return projectPath;
}
QString pManagement::getProjectName()
{
    return projectName;
}
