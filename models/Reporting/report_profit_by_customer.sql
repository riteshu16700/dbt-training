select 
    customerid,
    segment,
    country,
 SUM(ORDERPROFIT) as profit
from {{ ref('stage_orders') }}
group by
    customerid,
    segment,
    country