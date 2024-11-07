---
title: 利用qt的上下文属性将C++对象嵌入到QML中
date: 2024-10-25 14:45:40
tags:
---
## 目的
当我们在C++应用中加载QML的时候，直接嵌入一些C++数据到QML代码中是非常有用的，这使得调用嵌入对象中的C++方法或者使用C++对象实例作为数据模型成为可能。
使用QQmlContext类即可将C++对象注入到QML中，这个类将数据暴露到QML的上下文中，以便于在QML范围内能被直接引用。

## 设置简单的上下文属性

有如下代码，在QML范围内引用了一个不存在的值currentDateTime：
```QML
// MyItem.qml
import QtQuick 2.0

Text {text: currentDateTime}
```
这个值可在加载QML的C++中直接设置，使用QQmlContext::setContextProperty():
```QML
QQuickView view;
view.rootContext()->setContextProperty("currentDateTime", QDateTime::currentDateTime());
view.setSource(QUrl::fromLocalFile("MyItem.qml"));
view.show();
```

## 将对象设置为上下文属性

