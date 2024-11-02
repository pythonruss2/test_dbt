{% for i in range( 1 , 10, 2): %}
    select {{ i }} as foo, {{ i + 1 }} as bar {% if not loop.last %} union all {% endif %}
{% endfor %}