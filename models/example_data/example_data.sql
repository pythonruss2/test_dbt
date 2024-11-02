{% for i in range( int(var("START",1)) , int(var("END",10)), 2): %}
    select {{ i }} as foo, {{ i + 1 }} as bar {% if not loop.last %} union all {% endif %}
{% endfor %}