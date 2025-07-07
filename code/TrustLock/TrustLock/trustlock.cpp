#include "trustlock.h"
#include "./ui_trustlock.h"

TrustLock::TrustLock(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::TrustLock)
{
    ui->setupUi(this);
}

TrustLock::~TrustLock()
{
    delete ui;
}
