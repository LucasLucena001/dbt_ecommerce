with summary as (
    select * from {{ ref('int_customer_order_summary') }}
)

select
    customer_id,
    full_name,
    total_orders,
    total_spent,
    avg_order_value,
    rank() over (order by total_spent desc) as customer_rank
from summary
