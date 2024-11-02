{% for i in range( env_var("DBT_START",1) , env_var("DBT_END",10), 2): %}
    select {{ i }} as foo, {{ i + 1 }} as bar {% if not loop.last %} union all {% endif %}
{% endfor %}