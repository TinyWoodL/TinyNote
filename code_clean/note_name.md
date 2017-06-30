#代码整洁之道笔记

[TOC]

##命名

代码的整洁，从命名开始

###名副其实、准确

名称应该能够说明该（变量、类、函数）存在的意义:
```
int d;  //无法体现出该变量的用途
int daysSinceCreation;
int elapsedTimeInDays;
```

准确的命名能够清晰的说明代码的意图：
```
public List<int[]> getFlaggedCells() {
    List<int[]> list1 = new ArrayList<int[]>();
    for (int[] x: theList)
        if (x[0] == 4)
            list1.add(x);

    return list1;
}

public List<Cell> getFlaggedCells() {
    List<Cell> flaggedCells = new ArrayList<int[]>();
    for (Cell cell: gameBoard)
        if (Cell.isFlagged())
            flaggedCells.add(cell);

    return flaggedCells;
}
```

###避免误导

少用专有名词：
```
int accountLists | int accountGroup | int accounts;
显然List会让人想到List数据类型，需要改用另外两个更好的选择。
```


###有意义的区分

如用info、data这样的词修饰的命名意义含混。
动词不应该出现在变量名中。table不应该出现在表名中:
```
nameString     ===> name
CustomerObject ===> Customer
moneyAmount    ===> money
customerData   ===> customer
```


###可阅读的名字

简单来说就是别自己瞎造词，选通用一点的单词。

###类名

不应该是动词，不应该是语意含混词（data、info、manager、processor）

###方法名

应该是动词或者动词短语。
```
getXXX();
setXXX();
deletePage();
```

###概念单一对应

如插入数据方法用add或create，编辑用edit或update。
如控制不要同时出现controller、manager或

###添加有意义的语境

有时候命名的方法变量不能清晰的表明意图，这个时候可以将方法放在类中，提供更明确的语境：
```
public class GuessStatisticsMessage {
    private String number;
    private String verb;

    public String make() {

    }
}
```

###最关键的是

一定要学好英语啊~~~~~~~~ QAQ
