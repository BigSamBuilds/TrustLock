#include "trustlock.h"
// #include "login.h"
// #include "minilogin.h"
// #include "registration.h"

#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    TrustLock w;
    w.show();
    return a.exec();
}
