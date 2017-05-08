#ifndef _BOARD_GPIO_H_
#define _BOARD_GPIO_H_

{% for d, v in defines %}
#define {{ d }} {{ v }}
{%- endfor %}

{% for p, v in ports %}
/* PORT {{p}} */
#define VAL_GPIO{{p}}_MODER ( \
    {%- for i in v.MODER %}
    {{ i }} | \
    {%- endfor %}
    0)

#define VAL_GPIO{{p}}_OTYPER ( \
    {%- for i in v.OTYPER %}
    {{ i }} | \
    {%- endfor %}
    0)

#define VAL_GPIO{{p}}_OSPEEDR ( \
    {%- for i in v.OSPEEDR %}
    {{ i }} | \
    {%- endfor %}
    0)

#define VAL_GPIO{{p}}_PUPDR ( \
    {%- for i in v.PUPDR %}
    {{ i }} | \
    {%- endfor %}
    0)

#define VAL_GPIO{{p}}_ODR ( \
    {%- for i in v.ODR %}
    {{ i }} | \
    {%- endfor %}
    0)

#define VAL_GPIO{{p}}_AFRL ( \
    {%- for i in v.AFRL %}
    {{ i }} | \
    {%- endfor %}
    0)

#define VAL_GPIO{{p}}_AFRH ( \
    {%- for i in v.AFRH %}
    {{ i }} | \
    {%- endfor %}
    0)
{% endfor %}

#endif