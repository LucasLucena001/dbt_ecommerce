with source as (
    select * from {{ source('raw', 'raw_order_items') }}
)

select
    order_item_id,
    order_id,
    product_id,
    cast(quantity as integer) as quantity
from source
