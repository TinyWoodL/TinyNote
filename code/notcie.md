## 修改

1. 表加biz 

字段下划线
没用的字段先去掉。
mailAddress => address
invoice 表 orderIds去掉，订单表增加字段发票号。
后台审核要填写发票号、邮寄号，备注。



2.

order 表修改的sql移到order模块 (ok.)

updateorderinvoicesnbyorderId() (ok)

接口中把try applyInvoice 去掉 (ok)

submitApply => applyInvoice() (ok)

createInvoice 不应该在接口中公开。  实现类中不应该public。 (ok)

finishinvoice 申请不通过的时候要判断invoice是否已经通了。

cancel是自己发起的 (ok)

自己包里面的业务主要是要管理自己包中的业务逻辑，不是自己包中的，应该扔给上层去做。

3.

setDefalutTemplate (userId在id中获取的template已经存在，所以不用传)；
将这个设置为默认之后，还要将其他的修改为不是默认。

