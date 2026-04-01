/********************************************************************************
** Form generated from reading UI file 'rosbag_editor.ui'
**
** Created by: Qt User Interface Compiler version 5.12.8
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_ROSBAG_EDITOR_H
#define UI_ROSBAG_EDITOR_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QCheckBox>
#include <QtWidgets/QDateTimeEdit>
#include <QtWidgets/QFormLayout>
#include <QtWidgets/QFrame>
#include <QtWidgets/QGroupBox>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QRadioButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QTableWidget>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_RosbagEditor
{
public:
    QWidget *centralwidget;
    QVBoxLayout *verticalLayout_4;
    QHBoxLayout *horizontalLayout_3;
    QVBoxLayout *verticalLayout;
    QHBoxLayout *horizontalLayout;
    QPushButton *pushButtonLoad;
    QSpacerItem *horizontalSpacer;
    QLabel *label;
    QTableWidget *tableWidgetInput;
    QFormLayout *formLayout;
    QLabel *label_3;
    QLabel *label_4;
    QDateTimeEdit *dateTimeInputBegin;
    QDateTimeEdit *dateTimeInputEnd;
    QVBoxLayout *verticalLayout_3;
    QSpacerItem *verticalSpacer;
    QPushButton *pushButtonMove;
    QPushButton *pushButtonRemove;
    QSpacerItem *verticalSpacer_2;
    QVBoxLayout *verticalLayout_2;
    QHBoxLayout *horizontalLayout_2;
    QSpacerItem *horizontalSpacer_2;
    QPushButton *pushButtonSave;
    QLabel *label_2;
    QTableWidget *tableWidgetOutput;
    QFormLayout *formLayout_2;
    QLabel *label_5;
    QLabel *label_6;
    QDateTimeEdit *dateTimeOutputBegin;
    QDateTimeEdit *dateTimeOutputEnd;
    QFrame *line;
    QGroupBox *groupBox;
    QHBoxLayout *horizontalLayout_4;
    QFrame *frame_2;
    QVBoxLayout *verticalLayout_6;
    QLabel *label_7;
    QRadioButton *radioNoCompression;
    QRadioButton *radioLZ4;
    QRadioButton *radioBZ2;
    QFrame *frame;
    QVBoxLayout *verticalLayout_5;
    QCheckBox *checkBoxFilterTF;
    QPushButton *pushButtonFilterTF;
    QSpacerItem *verticalSpacer_3;
    QSpacerItem *horizontalSpacer_3;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *RosbagEditor)
    {
        if (RosbagEditor->objectName().isEmpty())
            RosbagEditor->setObjectName(QString::fromUtf8("RosbagEditor"));
        RosbagEditor->resize(791, 613);
        centralwidget = new QWidget(RosbagEditor);
        centralwidget->setObjectName(QString::fromUtf8("centralwidget"));
        verticalLayout_4 = new QVBoxLayout(centralwidget);
        verticalLayout_4->setObjectName(QString::fromUtf8("verticalLayout_4"));
        horizontalLayout_3 = new QHBoxLayout();
        horizontalLayout_3->setObjectName(QString::fromUtf8("horizontalLayout_3"));
        verticalLayout = new QVBoxLayout();
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        pushButtonLoad = new QPushButton(centralwidget);
        pushButtonLoad->setObjectName(QString::fromUtf8("pushButtonLoad"));

        horizontalLayout->addWidget(pushButtonLoad);

        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout->addItem(horizontalSpacer);


        verticalLayout->addLayout(horizontalLayout);

        label = new QLabel(centralwidget);
        label->setObjectName(QString::fromUtf8("label"));

        verticalLayout->addWidget(label);

        tableWidgetInput = new QTableWidget(centralwidget);
        if (tableWidgetInput->columnCount() < 2)
            tableWidgetInput->setColumnCount(2);
        QTableWidgetItem *__qtablewidgetitem = new QTableWidgetItem();
        tableWidgetInput->setHorizontalHeaderItem(0, __qtablewidgetitem);
        QTableWidgetItem *__qtablewidgetitem1 = new QTableWidgetItem();
        tableWidgetInput->setHorizontalHeaderItem(1, __qtablewidgetitem1);
        tableWidgetInput->setObjectName(QString::fromUtf8("tableWidgetInput"));
        tableWidgetInput->setEnabled(false);
        tableWidgetInput->setEditTriggers(QAbstractItemView::NoEditTriggers);
        tableWidgetInput->setSelectionBehavior(QAbstractItemView::SelectRows);
        tableWidgetInput->setGridStyle(Qt::NoPen);
        tableWidgetInput->setSortingEnabled(true);
        tableWidgetInput->setRowCount(0);
        tableWidgetInput->setColumnCount(2);
        tableWidgetInput->horizontalHeader()->setVisible(true);
        tableWidgetInput->horizontalHeader()->setMinimumSectionSize(150);
        tableWidgetInput->horizontalHeader()->setDefaultSectionSize(200);
        tableWidgetInput->horizontalHeader()->setProperty("showSortIndicator", QVariant(true));
        tableWidgetInput->horizontalHeader()->setStretchLastSection(true);
        tableWidgetInput->verticalHeader()->setVisible(false);

        verticalLayout->addWidget(tableWidgetInput);

        formLayout = new QFormLayout();
        formLayout->setObjectName(QString::fromUtf8("formLayout"));
        label_3 = new QLabel(centralwidget);
        label_3->setObjectName(QString::fromUtf8("label_3"));

        formLayout->setWidget(0, QFormLayout::LabelRole, label_3);

        label_4 = new QLabel(centralwidget);
        label_4->setObjectName(QString::fromUtf8("label_4"));

        formLayout->setWidget(1, QFormLayout::LabelRole, label_4);

        dateTimeInputBegin = new QDateTimeEdit(centralwidget);
        dateTimeInputBegin->setObjectName(QString::fromUtf8("dateTimeInputBegin"));
        dateTimeInputBegin->setEnabled(false);
        dateTimeInputBegin->setReadOnly(true);
        dateTimeInputBegin->setButtonSymbols(QAbstractSpinBox::NoButtons);

        formLayout->setWidget(0, QFormLayout::FieldRole, dateTimeInputBegin);

        dateTimeInputEnd = new QDateTimeEdit(centralwidget);
        dateTimeInputEnd->setObjectName(QString::fromUtf8("dateTimeInputEnd"));
        dateTimeInputEnd->setEnabled(false);
        dateTimeInputEnd->setReadOnly(true);
        dateTimeInputEnd->setButtonSymbols(QAbstractSpinBox::NoButtons);

        formLayout->setWidget(1, QFormLayout::FieldRole, dateTimeInputEnd);


        verticalLayout->addLayout(formLayout);


        horizontalLayout_3->addLayout(verticalLayout);

        verticalLayout_3 = new QVBoxLayout();
        verticalLayout_3->setObjectName(QString::fromUtf8("verticalLayout_3"));
        verticalSpacer = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout_3->addItem(verticalSpacer);

        pushButtonMove = new QPushButton(centralwidget);
        pushButtonMove->setObjectName(QString::fromUtf8("pushButtonMove"));
        pushButtonMove->setEnabled(false);
        pushButtonMove->setMinimumSize(QSize(32, 32));
        pushButtonMove->setMaximumSize(QSize(32, 32));

        verticalLayout_3->addWidget(pushButtonMove);

        pushButtonRemove = new QPushButton(centralwidget);
        pushButtonRemove->setObjectName(QString::fromUtf8("pushButtonRemove"));
        pushButtonRemove->setEnabled(false);
        pushButtonRemove->setMinimumSize(QSize(32, 32));
        pushButtonRemove->setMaximumSize(QSize(32, 32));

        verticalLayout_3->addWidget(pushButtonRemove);

        verticalSpacer_2 = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout_3->addItem(verticalSpacer_2);


        horizontalLayout_3->addLayout(verticalLayout_3);

        verticalLayout_2 = new QVBoxLayout();
        verticalLayout_2->setObjectName(QString::fromUtf8("verticalLayout_2"));
        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName(QString::fromUtf8("horizontalLayout_2"));
        horizontalSpacer_2 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_2->addItem(horizontalSpacer_2);

        pushButtonSave = new QPushButton(centralwidget);
        pushButtonSave->setObjectName(QString::fromUtf8("pushButtonSave"));
        pushButtonSave->setEnabled(false);

        horizontalLayout_2->addWidget(pushButtonSave);


        verticalLayout_2->addLayout(horizontalLayout_2);

        label_2 = new QLabel(centralwidget);
        label_2->setObjectName(QString::fromUtf8("label_2"));

        verticalLayout_2->addWidget(label_2);

        tableWidgetOutput = new QTableWidget(centralwidget);
        if (tableWidgetOutput->columnCount() < 2)
            tableWidgetOutput->setColumnCount(2);
        QTableWidgetItem *__qtablewidgetitem2 = new QTableWidgetItem();
        tableWidgetOutput->setHorizontalHeaderItem(0, __qtablewidgetitem2);
        QTableWidgetItem *__qtablewidgetitem3 = new QTableWidgetItem();
        tableWidgetOutput->setHorizontalHeaderItem(1, __qtablewidgetitem3);
        tableWidgetOutput->setObjectName(QString::fromUtf8("tableWidgetOutput"));
        tableWidgetOutput->setEnabled(false);
        tableWidgetOutput->setEditTriggers(QAbstractItemView::NoEditTriggers);
        tableWidgetOutput->setSelectionMode(QAbstractItemView::ExtendedSelection);
        tableWidgetOutput->horizontalHeader()->setMinimumSectionSize(150);
        tableWidgetOutput->horizontalHeader()->setDefaultSectionSize(200);
        tableWidgetOutput->horizontalHeader()->setStretchLastSection(true);
        tableWidgetOutput->verticalHeader()->setVisible(false);

        verticalLayout_2->addWidget(tableWidgetOutput);

        formLayout_2 = new QFormLayout();
        formLayout_2->setObjectName(QString::fromUtf8("formLayout_2"));
        label_5 = new QLabel(centralwidget);
        label_5->setObjectName(QString::fromUtf8("label_5"));

        formLayout_2->setWidget(0, QFormLayout::LabelRole, label_5);

        label_6 = new QLabel(centralwidget);
        label_6->setObjectName(QString::fromUtf8("label_6"));

        formLayout_2->setWidget(1, QFormLayout::LabelRole, label_6);

        dateTimeOutputBegin = new QDateTimeEdit(centralwidget);
        dateTimeOutputBegin->setObjectName(QString::fromUtf8("dateTimeOutputBegin"));
        dateTimeOutputBegin->setEnabled(false);
        dateTimeOutputBegin->setReadOnly(false);
        dateTimeOutputBegin->setButtonSymbols(QAbstractSpinBox::PlusMinus);
        dateTimeOutputBegin->setCalendarPopup(true);

        formLayout_2->setWidget(0, QFormLayout::FieldRole, dateTimeOutputBegin);

        dateTimeOutputEnd = new QDateTimeEdit(centralwidget);
        dateTimeOutputEnd->setObjectName(QString::fromUtf8("dateTimeOutputEnd"));
        dateTimeOutputEnd->setEnabled(false);
        dateTimeOutputEnd->setReadOnly(false);
        dateTimeOutputEnd->setButtonSymbols(QAbstractSpinBox::PlusMinus);
        dateTimeOutputEnd->setCalendarPopup(true);

        formLayout_2->setWidget(1, QFormLayout::FieldRole, dateTimeOutputEnd);


        verticalLayout_2->addLayout(formLayout_2);


        horizontalLayout_3->addLayout(verticalLayout_2);


        verticalLayout_4->addLayout(horizontalLayout_3);

        line = new QFrame(centralwidget);
        line->setObjectName(QString::fromUtf8("line"));
        line->setFrameShape(QFrame::HLine);
        line->setFrameShadow(QFrame::Sunken);

        verticalLayout_4->addWidget(line);

        groupBox = new QGroupBox(centralwidget);
        groupBox->setObjectName(QString::fromUtf8("groupBox"));
        horizontalLayout_4 = new QHBoxLayout(groupBox);
        horizontalLayout_4->setObjectName(QString::fromUtf8("horizontalLayout_4"));
        frame_2 = new QFrame(groupBox);
        frame_2->setObjectName(QString::fromUtf8("frame_2"));
        frame_2->setFrameShape(QFrame::Box);
        verticalLayout_6 = new QVBoxLayout(frame_2);
        verticalLayout_6->setObjectName(QString::fromUtf8("verticalLayout_6"));
        label_7 = new QLabel(frame_2);
        label_7->setObjectName(QString::fromUtf8("label_7"));

        verticalLayout_6->addWidget(label_7);

        radioNoCompression = new QRadioButton(frame_2);
        radioNoCompression->setObjectName(QString::fromUtf8("radioNoCompression"));
        radioNoCompression->setFocusPolicy(Qt::NoFocus);

        verticalLayout_6->addWidget(radioNoCompression);

        radioLZ4 = new QRadioButton(frame_2);
        radioLZ4->setObjectName(QString::fromUtf8("radioLZ4"));
        radioLZ4->setFocusPolicy(Qt::NoFocus);

        verticalLayout_6->addWidget(radioLZ4);

        radioBZ2 = new QRadioButton(frame_2);
        radioBZ2->setObjectName(QString::fromUtf8("radioBZ2"));
        radioBZ2->setFocusPolicy(Qt::NoFocus);

        verticalLayout_6->addWidget(radioBZ2);


        horizontalLayout_4->addWidget(frame_2);

        frame = new QFrame(groupBox);
        frame->setObjectName(QString::fromUtf8("frame"));
        frame->setFrameShape(QFrame::Box);
        frame->setFrameShadow(QFrame::Plain);
        verticalLayout_5 = new QVBoxLayout(frame);
        verticalLayout_5->setObjectName(QString::fromUtf8("verticalLayout_5"));
        checkBoxFilterTF = new QCheckBox(frame);
        checkBoxFilterTF->setObjectName(QString::fromUtf8("checkBoxFilterTF"));
        checkBoxFilterTF->setFocusPolicy(Qt::NoFocus);

        verticalLayout_5->addWidget(checkBoxFilterTF);

        pushButtonFilterTF = new QPushButton(frame);
        pushButtonFilterTF->setObjectName(QString::fromUtf8("pushButtonFilterTF"));
        pushButtonFilterTF->setEnabled(false);
        pushButtonFilterTF->setFocusPolicy(Qt::NoFocus);

        verticalLayout_5->addWidget(pushButtonFilterTF);

        verticalSpacer_3 = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout_5->addItem(verticalSpacer_3);


        horizontalLayout_4->addWidget(frame);

        horizontalSpacer_3 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_4->addItem(horizontalSpacer_3);


        verticalLayout_4->addWidget(groupBox);

        verticalLayout_4->setStretch(0, 1);
        RosbagEditor->setCentralWidget(centralwidget);
        statusbar = new QStatusBar(RosbagEditor);
        statusbar->setObjectName(QString::fromUtf8("statusbar"));
        RosbagEditor->setStatusBar(statusbar);

        retranslateUi(RosbagEditor);

        QMetaObject::connectSlotsByName(RosbagEditor);
    } // setupUi

    void retranslateUi(QMainWindow *RosbagEditor)
    {
        RosbagEditor->setWindowTitle(QApplication::translate("RosbagEditor", "Rosbag Editor", nullptr));
        pushButtonLoad->setText(QApplication::translate("RosbagEditor", "Load Rosbag", nullptr));
        label->setText(QApplication::translate("RosbagEditor", "Topics in the Input File", nullptr));
        QTableWidgetItem *___qtablewidgetitem = tableWidgetInput->horizontalHeaderItem(0);
        ___qtablewidgetitem->setText(QApplication::translate("RosbagEditor", "Topic name", nullptr));
        QTableWidgetItem *___qtablewidgetitem1 = tableWidgetInput->horizontalHeaderItem(1);
        ___qtablewidgetitem1->setText(QApplication::translate("RosbagEditor", "Data type", nullptr));
        label_3->setText(QApplication::translate("RosbagEditor", "Begin time", nullptr));
        label_4->setText(QApplication::translate("RosbagEditor", "End Time", nullptr));
        dateTimeInputBegin->setDisplayFormat(QApplication::translate("RosbagEditor", "[yy/M/d] H:mm:ss.z", nullptr));
        dateTimeInputEnd->setDisplayFormat(QApplication::translate("RosbagEditor", "[yy/M/d] H:mm:ss.z", nullptr));
#ifndef QT_NO_TOOLTIP
        pushButtonMove->setToolTip(QApplication::translate("RosbagEditor", "<html><head/><body><p>Add selected topics (left) to the table on the right</p></body></html>", nullptr));
#endif // QT_NO_TOOLTIP
        pushButtonMove->setText(QApplication::translate("RosbagEditor", ">>", nullptr));
#ifndef QT_NO_TOOLTIP
        pushButtonRemove->setToolTip(QApplication::translate("RosbagEditor", "<html><head/><body><p>Remove the topics selected on the right side </p></body></html>", nullptr));
#endif // QT_NO_TOOLTIP
        pushButtonRemove->setText(QApplication::translate("RosbagEditor", "X", nullptr));
        pushButtonSave->setText(QApplication::translate("RosbagEditor", "Save", nullptr));
        label_2->setText(QApplication::translate("RosbagEditor", "Topics in the Output File", nullptr));
        QTableWidgetItem *___qtablewidgetitem2 = tableWidgetOutput->horizontalHeaderItem(0);
        ___qtablewidgetitem2->setText(QApplication::translate("RosbagEditor", "Topic Name", nullptr));
        QTableWidgetItem *___qtablewidgetitem3 = tableWidgetOutput->horizontalHeaderItem(1);
        ___qtablewidgetitem3->setText(QApplication::translate("RosbagEditor", "Renamed topic (optional)", nullptr));
        label_5->setText(QApplication::translate("RosbagEditor", "Begin time", nullptr));
        label_6->setText(QApplication::translate("RosbagEditor", "End Time", nullptr));
        dateTimeOutputBegin->setDisplayFormat(QApplication::translate("RosbagEditor", "[yy/M/d] H:mm:ss.z", nullptr));
        dateTimeOutputEnd->setDisplayFormat(QApplication::translate("RosbagEditor", "[yy/M/d] H:mm:ss.z", nullptr));
        groupBox->setTitle(QApplication::translate("RosbagEditor", "Advanced Options", nullptr));
        label_7->setText(QApplication::translate("RosbagEditor", "Compression", nullptr));
        radioNoCompression->setText(QApplication::translate("RosbagEditor", "No Compression", nullptr));
        radioLZ4->setText(QApplication::translate("RosbagEditor", "LZ4 (fast)", nullptr));
        radioBZ2->setText(QApplication::translate("RosbagEditor", "BZ2 (sloooow)", nullptr));
        checkBoxFilterTF->setText(QApplication::translate("RosbagEditor", "Filter /tf frames", nullptr));
        pushButtonFilterTF->setText(QApplication::translate("RosbagEditor", "Edit filter", nullptr));
    } // retranslateUi

};

namespace Ui {
    class RosbagEditor: public Ui_RosbagEditor {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_ROSBAG_EDITOR_H
