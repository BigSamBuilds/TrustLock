#ifndef MINILOGIN_H
#define MINILOGIN_H

#include <QWidget>
#include <QEvent>
#include <QMouseEvent>
#include <QDebug>

namespace Ui {
class MiniLogin;
}

class MiniLogin : public QWidget
{
    Q_OBJECT

public:
    explicit MiniLogin(QWidget *parent = nullptr);
    ~MiniLogin();

private:
    bool clickPressed = false;
    QPoint offset;

signals:
    protected:
        bool event(QEvent *even) override;
        void mouseMoveEvent(QMouseEvent *event) override;

private slots:
    void on_closeBtn_clicked();




private:
    Ui::MiniLogin *ui;
};

#endif // MINILOGIN_H
