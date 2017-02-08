{% extends "base.tpl" %}
{% block page_content %}
这个小web应用用来查询python模块的基本属性, 比如查看模块os有哪些方法和属性<br>
其原理是使用dir获取模块的所有属性, 然后使用__doc__获取函数的帮助<br>
同时尝试执行获取属性和函数的返回值, 当然执行结果是依据当前web应用所在的服务器环境决定<br>
如果执行失败, 获取不到值(一般是函数调用的时候, 参数错误), 会在'test value'列将显示'test faild'
{% endblock %}
