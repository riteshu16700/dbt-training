select 
--from raw_orders
O.orderid,
O.orderdate,
O.shipdate,
O.shipmode, 
O.ORDERSELLINGPRICE - O.ODERCOSTPRICE as orderprofit,
O.ODERCOSTPRICE,
O.ORDERSELLINGPRICE,
-- from raw_customer
c.customerid,
c.customername,
c.segment,
c.country,
-- from raw_product
p.category,
p.productid,
p.productname,
p.subcategory
from {{ ref('RAW_ORDERS') }}  as O
left join {{ ref('RAW_CUSTOMER') }} as c
on O.CUSTOMERID = c.CUSTOMERID
left join {{ ref('RAW_PRODUCT') }} as P
on O.PRODUCTID = p.PRODUCTID
