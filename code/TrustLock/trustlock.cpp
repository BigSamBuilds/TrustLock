#include "trustlock.h"
#include "./ui_trustlock.h"

TrustLock::TrustLock(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::TrustLock)
    , pageMap(new std::map<QHBoxLayout*, CustomTableView*>)
{
    ui->setupUi(this);
    ui->passwordLengthEditLine->setValidator(new QIntValidator(8, 256, this));

    // Connect the custom horizontal scrollbar to the scroll area
    connect(ui->horizontalScrollBar, &QScrollBar::valueChanged,
            ui->scrollArea->horizontalScrollBar(), &QScrollBar::setValue);

    // Connect the scroll area horizontal scrollbar to the custom scrollbar
    connect(ui->scrollArea->horizontalScrollBar(), &QScrollBar::valueChanged,
            ui->horizontalScrollBar, &QScrollBar::setValue);

    QPushButton *btn = new QPushButton(this);
    btn->setText("＋");
    btn->setStyleSheet(QString(
        "QPushButton {"
        "   background-color: #728aa2;"
        "   font-size: 16px;"
        "   font-weight: bold;"
        "   border: 1px solid white;" // Border with 2px solid gray
        "   border-radius: 5px;" // Rounded corners with 5px radius
        "   padding: 0 4px;" // Padding of 4px on left and right
        "}"
        "QPushButton:hover {"
        "   background-color: #2d5985;"
        "}"
        ));
    btn->setMinimumWidth(40);
    btn->setMaximumWidth(40);
    btn->setMinimumHeight(40);
    ui->HlayoutforButtons->insertWidget(0, btn, 1, Qt::AlignLeft);
    connect(btn, &QPushButton::clicked, this, &TrustLock::addpage);

    ui->horizontalScrollBar->setStyleSheet(
        "QScrollBar:horizontal { "
        "   border: none; " // No border for the scrollbar
        "   background: #0090ff; " // No background for the scrollbar
        "   height: 15px; " // Height of the scrollbar
        "   margin: 0 22px; " // Margin on the sides
        "} "
        "QScrollBar::handle:horizontal { "
        "   background: white; " // Color of the scrollbar handle
        "   min-width: 20px; " // Minimum width of the handle
        "   border-radius: 7px; " // Rounded corners for the handle
        "} "
        "QScrollBar::add-line:horizontal, QScrollBar::sub-line:horizontal { "
        "   background: none; " // No background for the add/sub lines
        "   border: none; " // No border for the add/sub lines
        "} "
        "QScrollBar::left-arrow:horizontal, QScrollBar::right-arrow:horizontal { "
        "   background: none; " // No background for the arrows
        "   border: none; " // No border for the arrows
        "} "
        "QScrollBar::add-page:horizontal, QScrollBar::sub-page:horizontal { "
        "   background: none; " // No background for the add/sub pages
        "}"
        );


}

TrustLock::~TrustLock()
{
    delete ui;
    delete pageMap;
}

void TrustLock::addpage(){
    count++;

    QHBoxLayout *pageLayout = new QHBoxLayout();

    QPushButton *pageDelete = new QPushButton(this);
    connect(pageDelete, &QPushButton::clicked, this, [this, pageLayout](){deletePage(pageLayout);});


    pageDelete->setText("X");
    pageDelete->setStyleSheet(QString(
        "QPushButton {"
        "   background-color: #728aa2;"
        "   font-size: 16px;"
        "   font-weight: bold;"
        "   border-top: 1px solid white;" // Border with 2px solid gray
        "   border-right: 1px solid white;"
        "   border-bottom: 1px solid white;"
        "   border-top-right-radius: 5px;" // Rounded corners with 5px radius
        "   border-bottom-right-radius: 5px;"
        "   padding: 4px;" // Padding of 4px on left and right
        "}"
        "QPushButton:hover {"
        "   background-color: red;"
        "}"
        ));

    pageDelete->setMinimumWidth(40);
    pageDelete->setMinimumWidth(40);
    pageDelete->setMinimumHeight(40);

    QPushButton *pageBtn = new QPushButton(this);
    connect(pageBtn, &QPushButton::clicked, this, [this, pageLayout](){changePage(pageLayout);});

    QString title("Uknown : " + QString::number(count));

    pageBtn->setText(title);
    pageBtn->setStyleSheet(QString(
        "QPushButton {"
        "   background-color: #728aa2;"
        "   font-size: 16px;"
        "   font-weight: bold;"
        "   border-top: 1px solid white;" // Border with 2px solid gray
        "   border-left: 1px solid white;"
        "   border-bottom: 1px solid white;"
        "   border-top-left-radius: 5px;" // Rounded corners with 5px radius
        "   border-bottom-left-radius: 5px;"
        "   padding: 0 4px;" // Padding of 4px on left and right
        "}"
        "QPushButton:hover {"
        "   background-color: #2d5985;"
        "}"
        ));
    pageBtn->setMinimumWidth(40);
    pageBtn->setMinimumWidth(120);
    pageBtn->setMinimumHeight(40);

    pageLayout->insertWidget(0, pageBtn, 0, Qt::AlignLeft);
    pageLayout->insertWidget(1, pageDelete, 0, Qt::AlignLeft);
    pageLayout->setSpacing(0);

    ui->HlayoutforButtons->insertLayout(0, pageLayout, 0);

    CustomTableView *pageTableView = new CustomTableView(this, title, pageBtn);

    ui->stackedWidget->addWidget(pageTableView);
    ui->stackedWidget->setCurrentWidget(pageTableView);

    // Update the horizontal scrollbar range
    int contentWidth = ui->scrollArea->widget()->sizeHint().width(); // Total width of the content
    int viewportWidth = 140; // Width of the viewport

    // Set the range of the custom scrollbar
    ui->horizontalScrollBar->setRange(0, contentWidth - viewportWidth);
    ui->scrollArea->horizontalScrollBar()->setValue(ui->scrollArea->horizontalScrollBar()->value()+300 );
    ui->horizontalScrollBar->setValue(ui->scrollArea->horizontalScrollBar()->value()+300);

    (*pageMap)[pageLayout] = pageTableView;

    // qDebug() << (*pageMap).size();

}



void TrustLock::changePage(QHBoxLayout *layout){
    ui->stackedWidget->setCurrentWidget((*pageMap)[layout]);
    // qDebug() << btn->text();

}

void TrustLock::deletePage(QHBoxLayout *pageLayout){
    QPushButton* btntitle = qobject_cast<QPushButton*>(pageLayout->itemAt(0)->widget());
    QMessageBox::StandardButton reply = QMessageBox::question(this,
                                                              "Remove Page",
                                                              "Are you sure you want to delete the page titled \"" + btntitle->text() + "\"?",
                                                              QMessageBox::Yes | QMessageBox::No,
                                                              QMessageBox::No);
    if(reply == QMessageBox::Yes){
        ui->stackedWidget->removeWidget((*pageMap)[pageLayout]);
        // Remove all widgets from the pageLayout
        QLayoutItem* item;
        while ((item = pageLayout->takeAt(0)) != nullptr) {
            QWidget* widget = item->widget();
            if (widget) {
                widget->setParent(nullptr); // Detach the widget from its parent
                delete widget; // Optionally delete the widget
            }
            delete item; // Delete the layout item
        }

        // Remove the layout from the parent layout
        ui->HlayoutforButtons->removeItem(pageLayout);

        // Now delete the layout itself
        delete pageLayout;
    }
}



void TrustLock::on_algorithmsBtn_clicked()
{
    ui->stackedWidget->setCurrentWidget(ui->AlgorithmsPage);
}


void TrustLock::on_settingsBtn_clicked()
{
    ui->stackedWidget->setCurrentWidget(ui->settingsPage);
}

