---
title: 'Qt工程打包流程（保姆级）'
date: 2024-10-24 10:11:00
tags:
---

## 环境及工具准备
1. windows环境
2. 安装Qt开发环境，包含Qt Creator（过程略）；
3. 下载安装Inno setup compiler打包工具，下载地址：[Inno setup compiler](https://www.jrsoftware.org/isdl.php)（过程略）；
## 工程构建
1. 使用Qt Creator打开工程，选择Release或Minimum Size Release模式（具体差异不太清楚），构建工程：
![图1](build.png)
2. 找到构建后生成的文件夹，将里面产生的exe文件拷贝到另一个空文件夹：
![图2](release.png)
使用qt提供的deploy工具，在命令窗口中执行以下命令：
```bash
windeployqt release.exe
```
如果提示没有该工具，将该工具所在的路径添加到环境变量中，一般在构建套件的bin目录下：
![部署工具](windeployqt.png)
执行后会产生一些dll文件，如下图：
![图3](windeploy.png)

## 打包
1. 打开Inno setup compiler，根据脚本向导新建一个脚本文件，如下图：
![新建脚本文件](scriptWizard.png)
2. 填入安装包的基本信息：
![填写应用信息](scriptWizard2.png)
3. 选择exe文件的位置：
![选择exe文件位置](exeFileSelect.png)
4. 依次选择安装包的输出路径，安装包名称，选择安装包的图标文件，如下图：
![设置应用图标](setIcon.png)
一路下一步，直到脚本文件的创建，将其保存，然后编译脚本文件，如果有错误，修复错误直到编译通过，然后点击运行按钮，等待打包完成，会在输出路径下生成一个安装包。双击即可安装运行。
![编译脚本文件](compileAndRun.png)


