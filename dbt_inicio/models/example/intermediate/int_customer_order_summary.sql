with customers as (
    select * from {{ ref('stg_customers') }}
),
orders as (
    select * from {{ ref('int_orders_enriched') }}
)

select
    c.customer_id,
    c.full_name,
    count(distinct o.order_id) as total_orders,
    sum(o.total_item_value) as total_spent,
    round(avg(o.total_item_value), 2) as avg_order_value
from customers c
left join orders o on c.customer_id = o.customer_id
group by 1, 2
