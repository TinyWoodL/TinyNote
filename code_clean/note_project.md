# 代码整洁之道笔记

[TOC]

## 系统

在系统层级上的整洁

### 系统的构造和使用分开

软件系统应该讲启动过程和运行时的逻辑分开。

```
public Service getService() {
    if (service == null) {
        service = new MyServiceImpl(...);
    }

    return service;
}
```
如上代码存在硬编码依赖。

#### 分解main

构造和使用分开的方法之一： 全部构造过程都在 main模块中。

#### 工厂模式

#### 依赖注入

#### 扩容

### Java代理

### 测试驱动系统架构