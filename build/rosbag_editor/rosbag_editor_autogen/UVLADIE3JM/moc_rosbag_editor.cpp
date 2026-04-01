/****************************************************************************
** Meta object code from reading C++ file 'rosbag_editor.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "src/rosbag_editor.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'rosbag_editor.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_RosbagEditor_t {
    QByteArrayData data[17];
    char stringdata0[384];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_RosbagEditor_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_RosbagEditor_t qt_meta_stringdata_RosbagEditor = {
    {
QT_MOC_LITERAL(0, 0, 12), // "RosbagEditor"
QT_MOC_LITERAL(1, 13, 10), // "closeEvent"
QT_MOC_LITERAL(2, 24, 0), // ""
QT_MOC_LITERAL(3, 25, 12), // "QCloseEvent*"
QT_MOC_LITERAL(4, 38, 5), // "event"
QT_MOC_LITERAL(5, 44, 25), // "on_pushButtonLoad_pressed"
QT_MOC_LITERAL(6, 70, 25), // "on_pushButtonMove_pressed"
QT_MOC_LITERAL(7, 96, 40), // "on_tableWidgetInput_itemSelec..."
QT_MOC_LITERAL(8, 137, 41), // "on_tableWidgetOutput_itemSele..."
QT_MOC_LITERAL(9, 179, 27), // "on_pushButtonRemove_pressed"
QT_MOC_LITERAL(10, 207, 25), // "on_pushButtonSave_pressed"
QT_MOC_LITERAL(11, 233, 36), // "on_dateTimeOutputEnd_dateTime..."
QT_MOC_LITERAL(12, 270, 8), // "dateTime"
QT_MOC_LITERAL(13, 279, 38), // "on_dateTimeOutputBegin_dateTi..."
QT_MOC_LITERAL(14, 318, 27), // "on_checkBoxFilterTF_toggled"
QT_MOC_LITERAL(15, 346, 7), // "checked"
QT_MOC_LITERAL(16, 354, 29) // "on_pushButtonFilterTF_pressed"

    },
    "RosbagEditor\0closeEvent\0\0QCloseEvent*\0"
    "event\0on_pushButtonLoad_pressed\0"
    "on_pushButtonMove_pressed\0"
    "on_tableWidgetInput_itemSelectionChanged\0"
    "on_tableWidgetOutput_itemSelectionChanged\0"
    "on_pushButtonRemove_pressed\0"
    "on_pushButtonSave_pressed\0"
    "on_dateTimeOutputEnd_dateTimeChanged\0"
    "dateTime\0on_dateTimeOutputBegin_dateTimeChanged\0"
    "on_checkBoxFilterTF_toggled\0checked\0"
    "on_pushButtonFilterTF_pressed"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_RosbagEditor[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
      11,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   69,    2, 0x08 /* Private */,
       5,    0,   72,    2, 0x08 /* Private */,
       6,    0,   73,    2, 0x08 /* Private */,
       7,    0,   74,    2, 0x08 /* Private */,
       8,    0,   75,    2, 0x08 /* Private */,
       9,    0,   76,    2, 0x08 /* Private */,
      10,    0,   77,    2, 0x08 /* Private */,
      11,    1,   78,    2, 0x08 /* Private */,
      13,    1,   81,    2, 0x08 /* Private */,
      14,    1,   84,    2, 0x08 /* Private */,
      16,    0,   87,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 3,    4,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QDateTime,   12,
    QMetaType::Void, QMetaType::QDateTime,   12,
    QMetaType::Void, QMetaType::Bool,   15,
    QMetaType::Void,

       0        // eod
};

void RosbagEditor::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<RosbagEditor *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->closeEvent((*reinterpret_cast< QCloseEvent*(*)>(_a[1]))); break;
        case 1: _t->on_pushButtonLoad_pressed(); break;
        case 2: _t->on_pushButtonMove_pressed(); break;
        case 3: _t->on_tableWidgetInput_itemSelectionChanged(); break;
        case 4: _t->on_tableWidgetOutput_itemSelectionChanged(); break;
        case 5: _t->on_pushButtonRemove_pressed(); break;
        case 6: _t->on_pushButtonSave_pressed(); break;
        case 7: _t->on_dateTimeOutputEnd_dateTimeChanged((*reinterpret_cast< const QDateTime(*)>(_a[1]))); break;
        case 8: _t->on_dateTimeOutputBegin_dateTimeChanged((*reinterpret_cast< const QDateTime(*)>(_a[1]))); break;
        case 9: _t->on_checkBoxFilterTF_toggled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 10: _t->on_pushButtonFilterTF_pressed(); break;
        default: ;
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject RosbagEditor::staticMetaObject = { {
    &QMainWindow::staticMetaObject,
    qt_meta_stringdata_RosbagEditor.data,
    qt_meta_data_RosbagEditor,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *RosbagEditor::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *RosbagEditor::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_RosbagEditor.stringdata0))
        return static_cast<void*>(this);
    return QMainWindow::qt_metacast(_clname);
}

int RosbagEditor::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QMainWindow::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 11)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 11;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 11)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 11;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
