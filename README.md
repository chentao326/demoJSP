# demoJSP
# 2022/4/24
## UserBean
需要将UserBean中的 sql 语句修改成自己数据库的内容
可以先在数据库中操作一边后再复制上去
## UserServlet
UserServlet中有login、logout和register
通过if判断method选择以上模式
### login
这边调用了userBean中valid()方法判断登入数据是否在数据库中

