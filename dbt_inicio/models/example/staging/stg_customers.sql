with source as (
    select * from {{ source('raw', 'raw_customers') }}
)

select
    customer_id,
    initcap(full_name) as full_name,
    lower(email) as email,
    cast(signup_date as date) as signup_date
from source
