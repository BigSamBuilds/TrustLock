#ifndef ALGORITHMS_H
#define ALGORITHMS_H

#include <QWidget>

namespace Ui {
class Algorithms;
}

class Algorithms : public QWidget
{
    Q_OBJECT

public:
    explicit Algorithms(QWidget *parent = nullptr);
    ~Algorithms();

private:
    Ui::Algorithms *ui;
};

#endif // ALGORITHMS_H
