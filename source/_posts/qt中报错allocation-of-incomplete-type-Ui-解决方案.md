---
title: qt中报错allocation of incomplete type Ui::解决方案
date: 2023-08-22 11:17:33
tags:
---
## 背景
在qt中创建ui的时候，一般有以下几步：
以sendFrameBox为例
1. 直接创建一个qt设计器界面类：
![](new_ui.png)
2. 填写类名：
![](newclass.png)
3. 选择界面模板：
![](choose_groupbox.png)
4. 完成
![](success.png)
## 报错现象
此时会提示找不到ui_sendframebox.h文件，因为只有build后才会产生该文件，但此时执行build，仍然会报错：
![](error.png)
## 解决方法
可以将ui初始化的代码先注释掉，
![](note.png)
然后build，build完成后再放开注释，此时就正常了：
![](solved.png)