# Top customers
create table top_customers AS
    select * from 
        (select 
            c.customerId AS customerId,
            c.name AS customer_name,
            SUM(b.Total) AS total_cost
        from customers AS c
        join bills AS b
        on c.customerID = b.customer_id
        group by 1, 2)
    where total_cost > 1000
    order by total_cost desc;

# Top sellers
create table top_sellers AS
    select 
        m.ManuId AS manu_id,
        m.Manu AS manu_name,
        COUNT(o.ManuId) AS total_sales
    from manu AS m 
    join orders AS o
    on m.ManuId = o.ManuId
    group by 1, 2
    order by count(o.ManuID) desc;

select * , max(Staff_salary) * 1.1 AS staff_bonus 
from
    (select 
            s.id AS Staff_id,
            s.name AS Staff_name,
            s.salary AS Staff_salary,
            count(o.received_by) AS Staff_working
        from staff AS s 
        join orders AS o 
        on s.id = o.received_by
        group by 1, 2, 3);
