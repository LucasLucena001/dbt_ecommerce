with source as (
    select * from {{ source('raw', 'raw_orders') }}
)

select
    order_id,
    customer_id,
    cast(order_date as date) as order_date,
    lower(status) as status
from source
