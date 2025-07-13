with source as (
    select * from {{ source('raw', 'raw_payments') }}
)

select
    payment_id,
    order_id,
    payment_method,
    cast(payment_date as date) as payment_date,
    cast(amount as numeric) as amount
from source
