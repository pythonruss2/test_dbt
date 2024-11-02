{% for i in range( int(env_var('DBT_START',1)) , int(env_var('DBT_END',10)),2): %}
    select {{ i }} as foo, {{ i + 1 }} as bar {% if not loop.last %} union all {% endif %}
{% endfor %}