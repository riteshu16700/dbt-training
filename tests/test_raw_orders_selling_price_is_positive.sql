with 
orders as (
select * from 
{{ ref('RAW_ORDERS') }}

)

select orderid,
sum(ORDERSELLINGPRICE) as total_sp
from orders
group by orderid
having total_sp < 0
