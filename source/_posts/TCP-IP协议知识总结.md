---
title: CAN总线基础
date: 2023-12-12 14:33:10
tags:
---

## CAN总线介绍
CAN总线由博世公司开发，用于消息广播，最大速率达到1M bit/s，不像传统的USB或以太网，CAN不会从一个节点发送大量数据到另一个节点，在CAN网络中，许多短消息（温度或转速）被广播到整个网络，在系统的每个节点上提供了数据的连续性。

## 常用概念

CSMA: Carrier Sense Multiple Access (载波监听多路访问)。
CSMA/CD: Carrier Sense Multiple Access with Collision Detection (带冲突检测的载波监听多路访问)。
CSMA/CA: Carrier Sense Multiple Access with Collision Avoidance (带冲突避免的载波监听多路访问)。
AMP：Arbitration on Message Priority (消息优先仲裁)。
BMP：Bit-wise Arbitration on Message Priority (消息优先位仲裁)。
BAM：Broadcast Arbitration on Message Priority (消息优先广播仲裁)。
CAN总线是一个多主机网络，在发送消息到CAN节点之前，会检测总线是否繁忙，也使用碰撞检测，在这一点上和以太网有些相似，然而当以太网检测到碰撞时，两个发送节点都会停止传输，再次尝试发送之前，他们会等待一个随机的时间。这使得以太网在高总线负载时非常敏感，CAN使用非常清晰的仲裁原则解决了这个问题。

## 数据链路层任务
将网络层数据包封装成帧；

logic link control (LLC)：逻辑链路控制，负责处理数据链路层的错误和流控制。
Media Access Control (MAC)：媒体访问控制，负责处理数据链路层的物理层访问。
Physical Coding Sublayer (PCS)：物理编码子层，负责处理数据链路层的物理层编码。
