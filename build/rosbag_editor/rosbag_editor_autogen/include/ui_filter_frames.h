/********************************************************************************
** Form generated from reading UI file 'filter_frames.ui'
**
** Created by: Qt User Interface Compiler version 5.12.8
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_FILTER_FRAMES_H
#define UI_FILTER_FRAMES_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QDialog>
#include <QtWidgets/QDialogButtonBox>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QTableWidget>
#include <QtWidgets/QVBoxLayout>

QT_BEGIN_NAMESPACE

class Ui_FilterFrames
{
public:
    QVBoxLayout *verticalLayout;
    QLabel *label;
    QTableWidget *tableWidget;
    QDialogButtonBox *buttonBox;

    void setupUi(QDialog *FilterFrames)
    {
        if (FilterFrames->objectName().isEmpty())
            FilterFrames->setObjectName(QString::fromUtf8("FilterFrames"));
        FilterFrames->resize(424, 302);
        verticalLayout = new QVBoxLayout(FilterFrames);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        label = new QLabel(FilterFrames);
        label->setObjectName(QString::fromUtf8("label"));

        verticalLayout->addWidget(label);

        tableWidget = new QTableWidget(FilterFrames);
        if (tableWidget->columnCount() < 3)
            tableWidget->setColumnCount(3);
        QTableWidgetItem *__qtablewidgetitem = new QTableWidgetItem();
        tableWidget->setHorizontalHeaderItem(0, __qtablewidgetitem);
        QTableWidgetItem *__qtablewidgetitem1 = new QTableWidgetItem();
        tableWidget->setHorizontalHeaderItem(1, __qtablewidgetitem1);
        QTableWidgetItem *__qtablewidgetitem2 = new QTableWidgetItem();
        tableWidget->setHorizontalHeaderItem(2, __qtablewidgetitem2);
        tableWidget->setObjectName(QString::fromUtf8("tableWidget"));
        tableWidget->setSelectionMode(QAbstractItemView::NoSelection);
        tableWidget->horizontalHeader()->setMinimumSectionSize(50);
        tableWidget->horizontalHeader()->setDefaultSectionSize(100);
        tableWidget->horizontalHeader()->setHighlightSections(true);
        tableWidget->horizontalHeader()->setStretchLastSection(true);
        tableWidget->verticalHeader()->setVisible(false);

        verticalLayout->addWidget(tableWidget);

        buttonBox = new QDialogButtonBox(FilterFrames);
        buttonBox->setObjectName(QString::fromUtf8("buttonBox"));
        buttonBox->setOrientation(Qt::Horizontal);
        buttonBox->setStandardButtons(QDialogButtonBox::Cancel|QDialogButtonBox::Ok);

        verticalLayout->addWidget(buttonBox);


        retranslateUi(FilterFrames);
        QObject::connect(buttonBox, SIGNAL(accepted()), FilterFrames, SLOT(accept()));
        QObject::connect(buttonBox, SIGNAL(rejected()), FilterFrames, SLOT(reject()));

        QMetaObject::connectSlotsByName(FilterFrames);
    } // setupUi

    void retranslateUi(QDialog *FilterFrames)
    {
        FilterFrames->setWindowTitle(QApplication::translate("FilterFrames", "Remove specific transforms from TF", nullptr));
        label->setText(QApplication::translate("FilterFrames", "Remove a transform using checkbox of the first column.", nullptr));
        QTableWidgetItem *___qtablewidgetitem = tableWidget->horizontalHeaderItem(0);
        ___qtablewidgetitem->setText(QApplication::translate("FilterFrames", "Keep", nullptr));
        QTableWidgetItem *___qtablewidgetitem1 = tableWidget->horizontalHeaderItem(1);
        ___qtablewidgetitem1->setText(QApplication::translate("FilterFrames", "Parent Frame", nullptr));
        QTableWidgetItem *___qtablewidgetitem2 = tableWidget->horizontalHeaderItem(2);
        ___qtablewidgetitem2->setText(QApplication::translate("FilterFrames", "Child frame", nullptr));
    } // retranslateUi

};

namespace Ui {
    class FilterFrames: public Ui_FilterFrames {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_FILTER_FRAMES_H
