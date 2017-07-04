#linux笔记

[TOC]

##磁盘划分

###硬件在Linux中的文件名

各个组件和设备在linux下都是文件
设备文件一般都在/dev/目录下

###磁盘的组成

由扇区和柱面组成，同时第一个扇区特别重要，其主要记录了以下两个信息：
1. 主引导分区（MBR）：安装加载引导程序的地方
2. 分区表：记录整块磁盘的分区状态

###磁盘分区表

64Byte的分区表有4组记录区，被成为主（扩展）分区。用额外的扇区记录分区表被称为逻辑分区。

###主引导区和开机流程

1. 开机流程：  BIOS --》 MBR中的引导加载程序（boot  loader） --》 内核文件 --》 操作系统
2. boot loader的作用： 提供开机选项，载入内核文件，转交其他loader
3. 可以有多个引导加载程序。

###Linux磁盘分区的选择

linux内部的目录树结构，从跟目录 / 开始。

文件系统与目录树的关系：挂载

将磁盘分区放在相应的目录下。