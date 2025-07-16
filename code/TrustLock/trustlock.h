#ifndef TRUSTLOCK_H
#define TRUSTLOCK_H

#include <QMainWindow>
#include <QPushButton>
#include <QLabel>
#include <QScrollBar>
#include <QScrollArea>
#include <QHBoxLayout>
#include "customtableview.h"
#include <iostream>
#include <map>
#include <QMessageBox>

QT_BEGIN_NAMESPACE
namespace Ui {
class TrustLock;
}
QT_END_NAMESPACE

class TrustLock : public QMainWindow
{
    Q_OBJECT

public:
    TrustLock(QWidget *parent = nullptr);
    ~TrustLock();
    void changePage(QHBoxLayout *btnLayout);

private:
    Ui::TrustLock *ui;

    void addpage();

    std::map<QHBoxLayout*, CustomTableView*> *pageMap;

    int count = 0;

    void deletePage(QHBoxLayout *btnLayout);

protected:

private slots:
    void on_algorithmsBtn_clicked();
    void on_settingsBtn_clicked();
};
#endif // TRUSTLOCK_H
