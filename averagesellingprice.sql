select p.product_id, ifnull((round(sum(us.units*p.price)/sum(us.units),2)),0) as average_price 
from Prices p
left join UnitsSold us on
p.product_id = us.product_id
and us.purchase_date between p.start_date and p.end_date
and (p.start_date <= us.purchase_date)
and (p.end_date >= us.purchase_date) 
group by p.product_id 
