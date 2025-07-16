#include "customtableview.h"
#include "ui_customtableview.h"

CustomTableView::CustomTableView(QWidget *parent, QString title, QPushButton *pagebtn)
    : QWidget(parent)
    , ui(new Ui::CustomTableView)
    , title(title)
    , pageBtn(pagebtn)
{
    ui->setupUi(this);
    ui->pageTitleEditLine->setText(title);
}

CustomTableView::~CustomTableView()
{
    delete ui;
}

void CustomTableView::on_pageTitleEditLine_textChanged(const QString &arg1)
{
    pageBtn->setText(arg1);
}

