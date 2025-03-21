{% for a in range(10): %}
    select {{ a }} as foo, {{ a + 1 }} as bar {% if not loop.last %} union all {% endif %}
{% endfor %}
