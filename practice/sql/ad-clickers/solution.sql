select u.username, sum(a.revenue) as total_revenue
from users as u
join ad_impressions a
on u.user_id = a.user_id
where a.clicked = 1
group by u.username
order by total_revenue desc
