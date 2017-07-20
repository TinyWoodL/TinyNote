# 软件安装

[TOC]

## 源码安装

建议将源码下载到 /usr/local
- ./configure 生成Makefile
- make clean 清除临时文件
- make 进行软件编译
- make install 完成软件安装

## 可执行程序

- dpkg:
    + 安装：dpkg -i 软件包名
    + 卸载：dpkg -e 软件名
- rpm:
    + 安装：rpm -ivh 软件包名
    + 卸载：rpm -e 软件名

### 通过apt-get/yum/homebrew


