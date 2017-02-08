# python-module-info

[需求]

在使用python模块的时候, 我习惯先使用dir()查看模块有哪些属性, 再使用__doc__查看函数的帮助, 为了方便做了这个简单的应用

[说明]

其原理是使用dir获取模块的所有属性, 然后使用__doc__获取函数的帮助(so easy...)

然后尝试获取属性和函数的返回值, 当然执行结果是依据当前web应用所在的服务器环境决定

如果执行失败, 获取不到值(一般是函数调用的时候, 参数错误), 会在'test value'列将显示'test faild'

[源码]

该应用使用python-flask + nginx-uwsgi驱动, 源码在这里

欢迎拍砖...

[演示]

在线演示 [http://pym.maming.org/](http://pym.maming.org/)
