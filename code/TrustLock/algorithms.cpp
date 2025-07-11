#include "algorithms.h"
#include "ui_algorithms.h"

Algorithms::Algorithms(QWidget *parent)
    : QWidget(parent)
    , ui(new Ui::Algorithms)
{
    ui->setupUi(this);
}

Algorithms::~Algorithms()
{
    delete ui;
}
