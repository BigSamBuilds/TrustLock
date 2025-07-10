#ifndef LOGIN_H
#define LOGIN_H

#include <QWidget>

namespace Ui {
class login;
}

class login : public QWidget
{
    Q_OBJECT

public:
    explicit login(QWidget *parent = nullptr);
    ~login();

    bool changeFrame = false;

    void changeView();

private slots:
    void on_MinimizeBtn_clicked();

private:
    Ui::login *ui;
};

#endif // LOGIN_H
