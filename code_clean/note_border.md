# 代码整洁之道笔记

[TOC]

## 边界

### 使用第三方代码

- 接口提供者和使用者间的区别：
    接口提供者追求普适性，能在多个工作环境中工作而吸引用户。
    接口使用者追求满足自己的特定需求。


如对于Map使用的不同方式：
```
一：
Map<Sensor> sensor = new HashMap<Sensor>();
Sensor s = sensor.get(sensorId);

二：
public class Sensors {
    private Map sensors = new HashMap();

    public Sensor getById(String id) {
        return (Sensor)sensors.get(id);
    }
}
```

代码一的Map提供了太多的可操作空间，不受限制地传递Map实体。
代码二将接口隐藏，避免了误用。

