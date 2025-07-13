with data as (
    select * from {{ ref('int_orders_enriched') }}
)

select
    category,
    sum(total_item_value) as total_revenue,
    count(distinct order_id) as total_orders,
    sum(quantity) as total_items_sold
from data
where status = 'delivered'
group by category
order by total_revenue desc