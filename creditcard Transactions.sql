use creditcardtransactions
go
--------------- to check the column names and data
select top 5 *
from dbo.credit_card_transcations
go
----------- to check the type of card available

select distinct card_type
from dbo.credit_card_transcations
go

------------------

select 
	sum(case when card_type='Gold' then amount   end) as 'Gold card transaction Total'
from dbo.credit_card_transcations
go

select  distinct city
		,sum(amount) as'tot'
from dbo.credit_card_transcations
group by city
having sum(amount) > 10000000
go

---------------
select sum( case when card_type='Gold' then amount end) as 'Goldcardtransactions Total',
	   sum( case when card_type='Platinum' then amount end) as 'Platinum cardtransactions Total',
	   sum( case when card_type='Silver' then amount end) as 'Silver cardtransactions Total',
	   sum( case when card_type='Signature' then amount end) as 'Signature cardtransactions Total'

from dbo.credit_card_transcations
go
