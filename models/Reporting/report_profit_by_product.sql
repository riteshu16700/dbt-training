select 
    PRODUCTID,
    PRODUCTNAME,
    CATEGORY,
    SUBCATEGORY,
    SUM(ORDERPROFIT) as profit
from {{ ref('stage_orders') }}
group by 
    PRODUCTID,
    PRODUCTNAME,
    CATEGORY,
    SUBCATEGORY