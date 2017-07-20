# deamon

[TOC]

系统为某些功能提供的服务称为 service ,而实现这个 service 的程序称为deamon

### 分类

- stand_alone:自行单独启动服务
- super_deamon:由一个特殊的deamon来统一管理

### 服务与端口的对应

```
cat /etc/services
```

### 脚本与启动方式

- /etc/init.d/*:启动脚本放置处
- /etc/sysconfig/*:各个服务的初始化环境配置文件
- /etc/xinetd.conf,/etc/xinetd,d/*:super deamon配置文件
- /etc/*:各个服务各自的配置文件
- /var/lib/*:各个服务产生的数据库
- /var/run/*:各个服务的pid记录处

`启动：/etc/init.d/syslog {start|restart|stop|status|condrestart}`

`通过service进程启动：service [server name] {start|...}`
service是一个脚本，通过分析参数去/etc/init.d/中取得正确的服务来运行


