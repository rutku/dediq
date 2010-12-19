#ifndef PMANAGEMENT_H
#define PMANAGEMENT_H

#include <QObject>

class pManagement : public QObject
{
    Q_OBJECT
public:
    explicit pManagement(QObject *parent = 0);
    QString mainIndex();
    void createProject();
    void setProjectPath(QString p);
    void setMainClass(QString m);
    void setProjectName(QString n);
    QString getMainClass();
    QString getProjectPath();
    QString getProjectName();
    void addClass(QString p,QString n);
    void projectsHistory(QString p);
    QList<QString> getProjectHistory();

private:
    QString projectPath;
    QString mainClass;
    QString projectName;
    void projectContents();

signals:

public slots:

};

#endif // PMANAGEMENT_H
