#代码整洁之道笔记

[TOC]

##函数

###短小

每个函数都应该行数越少越好，同时缩进层级也不能太多，尽量局限于一级。

###只做一件事

函数只做一件事情，起码在抽象层级上只做一件事情。
```
public static String RenderPageWithSetupsAndTeardowns(
    PageDate pageData, boolean isSuite) throws Exception {
    if (isTestPage(pageData)) {
        includeSetupAndTeardownPages(pageData, isSuite);

        return pageData.getHtml();
    }
}
```
该函数有三个步骤：
1. 判断是否为测试页面
2. 如果是则 XXXXXX
3. 渲染HTML页面
但是这是在该函数名下的同一个抽象层的动作。

###函数的抽象层级

向下规则：每个函数后面都跟着下一抽象层的函数，逐步向底层调用

###函数命名

testTableHtml 比 RenderPageWithSetupsAndTeardowns 的命名好的多。
使用描述性的名称。
使用动名词对
```
writeField(name)  比 write(name) 更加清楚的说明要写入的是Field
```


###函数参数

当然是越少越好，参数越少，写测试用例也越轻松。

###无副作用

```
public boolean checkPassword(String userName, String password) {
    //user auth
    //init session
}
```
上面的方法在验证用户信息成功之后初始化会话，存在时序耦合性。当别人想调用这个方法检查用户的时候就会有其他风险。所以改成下面的命名会好点
```
public boolean checkPasswordAndInitSession(String userName, String password) 
```

###使用异常替代返回错误码

###一个入口和一个出口