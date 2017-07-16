# 代码整洁之道笔记

[TOC]

## 类

### 类的组织形式

依照java约定：
- 从一组变量列表开始
- 变量顺序：公共静态变量->私有静态->私有实体变量
- 公共函数
- 被调用的私有函数紧随其后

### 类要求：短小

对类的衡量方式：权责。

``` 
代码一
public class SuperDashboard extends JFrame implements MetaDataUser {
    public Component getLastFocusedComponent;
    public void setLastFouced(Component lastFocused);
    public int getMajorVersionNumber();
    public int getMinorVersionNumber();
    public int getBuildNumber();
}
```
该类有两条加以修改的理由：
- 跟踪更新的版本信息
- 管理Java Swing组件

#### 单一权责

类应该只有一个权责---一个修改的理由

对代码一可以抽出管理版本信息的方法：
```
public int Version {
    public int getMajorVersionNumber();
    public int getMinorVersionNumber();
    public int getBuildNumber();
}
```

#### 内聚

类中的成员变量被成员函数使用的越多，就越内聚。   保持函数使用的参数短小->成员变量增多->可以抽取出其他类

保持内聚性能得到许多短小的类。

### 为修改而组织

