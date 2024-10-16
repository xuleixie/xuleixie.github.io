---
title: 网络代理导致npm install超时解决方案
date: 2023-12-11 17:48:35
tags:
---

## 问题描述
当主机设置了代理服务器时，npm install会出现超时的情况，导致安装包失败。

## 解决方案
1. 设置代理服务器
查看本机的代理服务器地址：
打开网络连接，点击代理服务器设置，查看代理服务器地址和端口号。
![代理服务器设置](微信截图_20231211175303.png)
![代理服务器设置](微信截图_20231211175345.png)
然后在命令行中设置代理服务器：
```bash
npm config set proxy http://127.0.0.1:52175
```
使用以下命令查看当前的设置：
```bash
npm config list
```
关于config的更多信息，可以查看npm的官方文档：[npm-config](https://docs.npmjs.com/cli/config)
