-- implict inner join
----------------------
select
    *
from
    cutomers,
    orders
where
    customers.id = orders.customer_id;

----------------------
-- explicit inner join
----------------------
select
    *
from
    customers
    join orders on customers.id = orders.customer_id;

----------------------
-- explicit inner join
-- adding in other pieces
----------------------
select
    first_name,
    last_name,
    order_date,
    amount
from
    customers
    join orders on customers.id = orders.customer_id
order by
    order_date;

----------------------
select
    *
from
    customers
    join orders on customers.id = orders.customer_id
group by
    orders.customer_id;

----------------------
select
    first_name,
    last_name,
    order_date,
    sum(amount) as total_spent
from
    customers
    join orders on customers.id = orders.customer_id
group by
    orders.customer_id
order by
    total_spent desc;

----------------------
-- explicit outer join
-- left joins
----------------------
select
    first_name,
    last_name,
    sum(amount)
from
    customers
    left join orders on customers.id = orders.customer_id
group by
    customers.id;

----------------------
-- Replacing null sum with 0
select
    first_name,
    last_name,
    ifnull(sum(amount), 0) as total_spent
from
    customers
    left join orders on customers.id = orders.customer_id
group by
    customers.id
order by
    total_spent;