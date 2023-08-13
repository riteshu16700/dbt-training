{%- set category = 'Furniture' -%}

select orderid,
case when catergoty = '{{category}}' then orderprofit end as '{{category}}'_orderprofit
from {{ ref('stage_orders') }}
