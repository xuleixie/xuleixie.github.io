---
title: 使用jekyll构建GitHub Pages站点过程总结
date: 2025-03-28 17:17 +0800
categories: [Jekyll, Tutorial]
tags: [jekyll, github-pages, ruby]
---

1. 查看github pages的帮助文档，地址：
[https://docs.github.com/zh/pages/setting-up-a-github-pages-site-with-jekyll/creating-a-github-pages-site-with-jekyll](https://docs.github.com/zh/pages/setting-up-a-github-pages-site-with-jekyll/creating-a-github-pages-site-with-jekyll)<br>
文档中提示需要安装Jekyll，Git，Ruby，bundler等工具
2. 安装ruby,下载地址为：
[https://rubyinstaller.org/downloads/](https://rubyinstaller.org/downloads/)

3. 首先需要安装bundler，命令为

```
gem install bundler
```
启动本地服务查看效果的命令为：
```
bundle exec jekyll serve
```
可能会报缺少某些依赖的错误，可以使用以下命令安装：
```
bundle install
```
如果启动本地服务的时候出现permission denied的错误，一般可能是默认端口4000被占用，可以尝试使用其他端口启动，例如：
```
bundle exec jekyll serve --port 4001
```




