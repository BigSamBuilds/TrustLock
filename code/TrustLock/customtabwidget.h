#ifndef CUSTOMTABWIDGET_H
#define CUSTOMTABWIDGET_H

#include <QObject>
#include <QTabWidget>
#include <QLabel>
#include <QToolButton>
#include <QTabBar>
#include "settings.h"
#include "algorithms.h"

class CustomTabWidget : public QTabWidget
{
    Q_OBJECT
public:
    explicit CustomTabWidget(QWidget *parent = nullptr);

    ~CustomTabWidget();

private:
    QToolButton *algorithmBtn;
    QToolButton *settingsBtn;
    Settings *settings;
    Algorithms *algorithms;

signals:


};

#endif // CUSTOMTABWIDGET_H
