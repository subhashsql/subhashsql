use kaggel
go
select *
from [dbo].[customer_shopping_data]
select gender,price,round(price,2)
from dbo.customer_shopping_data

select sum(round(price,2)) over (partition by payment_method) as sum_total
from dbo.cucustomer_shopping_data

with cte1 as (
			select   payment_method,sum (price) over (partition by payment_method) as tot
			from dbo.customer_shopping_data
			)
	select distinct payment_method,cast(tot as int) as casted,convert(int,tot) as cnvt,
			round(tot,3) as rnd

	from cte1
		