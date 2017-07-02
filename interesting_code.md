#

[TOC]

##0-100求和

```
PHP
array_sum(range(0,100));
```


##显示页面元素边框

```
[].forEach.call($$("*"),function(a){a.style.outline="1px solid #"+(~~(Math.random()*(1<<24))).toString(16)})
```
