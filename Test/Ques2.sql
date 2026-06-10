select count(distinct t2.transaction_id) as payment_count
from transactions t1
inner join transactions t2
on t1.merchant_id = t2.merchant_id
and t1.amount = t2.amount
and t1.credit_card_id = t2.credit_card_id

where t2.transaction_id > t1.transaction_id
and t2.transaction_timestamp - t1.transaction_timestamp <=INTERVAL '10 minutes'
