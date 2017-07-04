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
类并不简单的向外推变量，而是暴露抽象接口，从而使用户不用了解数据的实现就能操纵数据本体。

###数据、对象的反对称性

对象将数据隐藏起来，暴露操纵数据的方法。
数据结构是直接暴露其数据。

过程式代码：
```
public class Square {
    public Point topLeft;
    public double side;
}

public class Circle {
    public Point center;
    public double radis;
}

public class Geometry {
    public final double PI = 3.14159265;

    public double area(Object shape) throw NoSuchShapeException {
        if (shape instanceof Square) {

        } else if (shape instanceof Circle) {

        }

        throw new NoSuchShapeException();
    }
}
明显，当添加一个新的形状时，需要修改Geometry中的代码。 但是添加新的函数则不会影响现有的形状。
```
使用多态：
```
public class Square implements Shape {
    public Point topLeft;
    public double side;

    public double area() {

    }
}

public class Circle implements Shape {
    public Point center;
    public double radis;
    public final double PI = 3.14159265;

    public double area() {

    }
}
```

对象与数据结构的二分原理：
    过程式代码便于在不改动现有数据结构的前提下添加新的函数。
    面向对象代码便于在不改动既有函数的前提下添加新的数类。

###The Law of Demeter

对象不应该通过存取器暴露内部的数据结构。

火车失事型代码:
```
final String outputDir = ctxt.getOptions().getScratchDir().getAbsolutePath();
```

混杂：既有执行操作的函数，也有公共的变量

隐藏结构：
1. 了解失事代码的目的：得到临时目录的绝对路径是为了创建指定名称的临时文件。
2. 让ctxt对象自己来做这件事情：ctxt.createScrachFileSteam(classFileName)。

###数据传送对象

DTO:只有公共变量，没有函数的类。充当原始数据和数据库之间的胶水。
参见JavaBean.




    
