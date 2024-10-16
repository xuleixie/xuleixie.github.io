---
title: autosar基础知识
date: 2023-12-13 11:25:20
tags:
---

## 什么是PDU Router？
PDU路由模块是autosar基础软件的一部分，每一个autosar ECU都必须实现；PDU路由模块的主要功能是将一个PDU从一个I-PDU端口路由到另一个I-PDU端口，路由的规则由配置文件决定，配置文件中定义了每一个I-PDU端口的路由规则。

## 什么是I-PDU？

Interaction Layer Protocol Data Unit (I-PDU)是一个数据单元，它包含数据（buffer）、长度和I-PDU ID，PDU路由器主要路由多个I-PDU。

## 什么是L-PDU？
Data Link Layer PDU，一个或多个I-PDU被打包成1个L-PDU。L-PDU是针对特定总线的，如CAN帧；
## 什么是N-PDU？
网络层pdu，传输协议模块用来对I-PDU进行分片；
根据下图可知，L-PDU在最下面，然后是N-PDU，最上面是I-PDU，I-PDU是最原始的数据，N-PDU是对I-PDU的分片，L-PDU是对N-PDU的打包。
![图1](Snipaste_2023-12-13_14-09-13.png)

## 详细的PDU路由结构
![图2](Snipaste_2023-12-13_15-07-24.png)
PDU路由模块包含两部分：静态路由表和路由引擎；
路由引擎的作用：将I-PDU从源头路由到目的地；
将源头的I-PDU ID转换为目的地的I-PDU ID；
