{% macro get_season(A) %} 

CASE WHEN MONTH(TO_TIMESTAMP({{A}})) in (12,1,2)
    THEN 'WINTER'
    WHEN MONTH(TO_TIMESTAMP({{A}})) in (3,4,5)
    THEN 'SPRING'
    WHEN MONTH(TO_TIMESTAMP({{A}})) in (6,7,8)
    THEN 'SUMMER'
    ELSE 'AUTUMN' 
    END 

{% endmacro %}

{% macro day_type(A) %}

CASE 
WHEN DAYNAME(TO_TIMESTAMP({{A}})) in ('Sat','Sun')
THEN 'WEEKEND'
ELSE 'BUSINESSDAY'
END 

{% endmacro %}