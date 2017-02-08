{% extends "base.tpl" %}
{% block page_content %}
<table border="1" cellpadding="0" cellspacing="0" class=attr>
    <tr>
        <th>name</th>
        <th>type</th>
        <th>test value</th>
        <th>__doc__</th>
    </tr>
    {% for attr in module_info%}
    <tr>
        <td>
        {% if attr.is_func %}
            {{module_name}}.{{attr.name}}()
        {%else%}
            {% if attr.is_module %}
                <a href="/module/{{module_name}}.{{attr.name}}">{{module_name}}.{{attr.name}}</a>
            {%else%}
                {{module_name}}.{{attr.name}}
            {%endif%}
        {%endif%}
        </td>
        <td>{{attr.type|safe}}</td>
        <td>{{attr.value}}</td>
        <td>{{attr.doc}}</td>
    </tr>
    {% endfor %}
</table>
{% endblock %}
