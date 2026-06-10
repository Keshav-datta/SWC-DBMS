select 7 as month ,
count(DISTINCT user_id) as monthly_active_users 
from user_actions
where event_date>='07/1/2022'
and event_date<='07/31/2022'
and user_id in(
  select user_id from user_actions
  where event_date>='06/1/2022'
  and event_date<='06/30/2022'
)
