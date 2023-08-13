{%- set tabletype = 'orders' -%}

select 
orderid,
'{{tabletype}}' as tablesource
from {{ ref('stage_orders') }}
