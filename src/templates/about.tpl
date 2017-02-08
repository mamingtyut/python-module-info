{% extends "base.tpl" %}
{% block page_content %}

[需求]<br>
在使用python模块的时候，我习惯先使用dir()查看模块有哪些属性，再使用__doc__查看函数的帮助<br>
为了方便做了这个简单的应用<br>
<br>
[说明]<br>
其原理是使用dir获取模块的所有属性, 然后使用__doc__获取函数的帮助(so easy...)<br>
然后尝试获取属性和函数的返回值, 当然执行结果是依据当前web应用所在的服务器环境决定<br>
如果执行失败, 获取不到值(一般是函数调用的时候, 参数错误), 会在'test value'列将显示'test faild'<br>

<br>
[源码]<br>
该应用使用python-flask + nginx-uwsgi驱动, 源码在<a href="https://github.com/mamingtyut/python-module-info" target="_blank">这里</a><br>
<br>
欢迎拍砖...

<!-- 多说评论框 start -->
<div class="ds-thread" data-thread-key="about" data-title="关于" data-url="http://pym.maming.org/about"></div>
<!-- 多说评论框 end -->
<!-- 多说公共JS代码 start (一个网页只需插入一次) -->
<script type="text/javascript">
    var duoshuoQuery = {short_name:"pymmamingorg"};
    (function() {
        var ds = document.createElement('script');
        ds.type = 'text/javascript';ds.async = true;
        ds.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//static.duoshuo.com/embed.js';
        ds.charset = 'UTF-8';
        (document.getElementsByTagName('head')[0] 
        || document.getElementsByTagName('body')[0]).appendChild(ds);
    })();
</script>
<!-- 多说公共JS代码 end -->
{% endblock %}
