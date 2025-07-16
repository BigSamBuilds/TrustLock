#ifndef CUSTOMTABLEVIEW_H
#define CUSTOMTABLEVIEW_H

#include <QWidget>
#include <QPushButton>

namespace Ui {
class CustomTableView;
}

class CustomTableView : public QWidget
{
    Q_OBJECT

public:
    explicit CustomTableView(QWidget *parent = nullptr, QString title="empty", QPushButton *btn = nullptr);
    ~CustomTableView();

private slots:
    void on_pageTitleEditLine_textChanged(const QString &arg1);

private:
    Ui::CustomTableView *ui;

    QString title;
    QPushButton *pageBtn;
};

#endif // CUSTOMTABLEVIEW_H
