#include "minilogin.h"
#include "ui_minilogin.h"

MiniLogin::MiniLogin(QWidget *parent)
    : QWidget(parent)
    , ui(new Ui::MiniLogin)
{
    ui->setupUi(this);
    setWindowFlags(Qt::FramelessWindowHint);
    setAttribute(Qt::WA_TranslucentBackground);
}

MiniLogin::~MiniLogin()
{
    delete ui;
}

void MiniLogin::on_closeBtn_clicked()
{
    this->close();
}

bool MiniLogin::event(QEvent *event){
    if(event->type() == QEvent::MouseButtonPress)
    {
        QMouseEvent *m_ev = static_cast<QMouseEvent *>(event);
        if(m_ev ->button() == Qt::LeftButton){
            qDebug() <<  "clicked";
            clickPressed = true;
            return true;
        }else
            return QWidget::event(event);

    }

    if(event->type() == QEvent::MouseButtonRelease){
        QMouseEvent *m_ev = static_cast<QMouseEvent *>(event);
        if(m_ev->button() == Qt::LeftButton){
            qDebug() << "released";
            clickPressed = false;
            return true;
        }
    }
    return QWidget::event(event);
}

void MiniLogin::mouseMoveEvent(QMouseEvent *event){
    if(clickPressed){
        qDebug() << event->pos().x() << " : " << event->pos().y();
        int x = event->pos().x();
        int y = event->pos().y();
        int wind_x = (x+pos().x());
        int wind_y = (y+pos().y());
        this->move(wind_x, wind_y);
    }
}
