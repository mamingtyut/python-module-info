{% extends "base.tpl" %}
{% block page_content %}
<label>模块名称 : </label>
<input id=module_name name=module_name onkeypress="if(event.keyCode==13) {go();}">
<a href="#" onclick="go()">查询</a>
<script>
function go() {
    var module = document.getElementById("module_name");
    if (module.value != "") {
        window.location.href="/module/"+module.value; 
    }
}
</script>
{% endblock %}
