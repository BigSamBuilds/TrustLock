#ifndef TRUSTLOCK_H
#define TRUSTLOCK_H

#include <QMainWindow>

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

private:
    Ui::TrustLock *ui;

protected:

};
#endif // TRUSTLOCK_H
