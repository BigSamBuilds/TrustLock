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
            // qDebug() <<  "clicked";
            clickPressed = true;
            offset = m_ev->pos();
            return true;
        }else
            return QWidget::event(event);

    }

    if(event->type() == QEvent::MouseButtonRelease){
        QMouseEvent *m_ev = static_cast<QMouseEvent *>(event);
        if(m_ev->button() == Qt::LeftButton){
            // qDebug() << "released";
            clickPressed = false;
            return true;
        }
    }
    return QWidget::event(event);
}

void MiniLogin::mouseMoveEvent(QMouseEvent *event){
    if (clickPressed) {

        QPoint globalMousePos =  event->globalPosition().toPoint();

        QPoint newPos = globalMousePos - offset;

        this->move(newPos);
    }
}
