with orders as (
    select * from {{ ref('stg_orders') }}
),
order_items as (
    select * from {{ ref('stg_order_items') }}
),
products as (
    select * from {{ ref('stg_products') }}
),
payments as (
    select * from {{ ref('stg_payments') }}
)

select
    o.order_id,
    o.customer_id,
    o.order_date,
    o.status,
    i.product_id,
    p.product_name,
    p.category,
    i.quantity,
    p.price,
    (i.quantity * p.price) as total_item_value,
    pay.payment_method,
    pay.payment_date,
    pay.amount as payment_amount
from orders o
left join order_items i on o.order_id = i.order_id
left join products p on i.product_id = p.product_id
left join payments pay on o.order_id = pay.order_id
