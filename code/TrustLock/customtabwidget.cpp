#include "customtabwidget.h"



CustomTabWidget::CustomTabWidget(QWidget *parent)
    : QTabWidget{parent}, algorithmBtn(new QToolButton(this))
    , settingsBtn(new QToolButton(this))
    , settings(new Settings(this))
    , algorithms(new Algorithms(this))
{

}

CustomTabWidget:: ~CustomTabWidget(){
    delete settings;
    delete algorithms;
    delete algorithmBtn;
    delete settingsBtn;
}
