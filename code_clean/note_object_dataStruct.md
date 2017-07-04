#代码整洁之道笔记

[TOC]

##对象和数据结构

###数据抽象

具象和抽象的区别，坐标点：
```
代码一
public class Point {
    public double x;
    public double y;
}
代码二
public interface Point {
    double getX();
    double getY();
    void setCartesian(double x, double y);
    double getR();
    double getTheta();
    void setPolar(double r, double theta);
}
```
代码二 不仅呈现出一种数据结构，而且还固定了一套存取策略