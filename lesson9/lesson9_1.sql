select count(*) as"筆數" 
from "台鐵車站資訊" 


SELECT count(name) AS "台北車站數"
FROM "台鐵車站資訊"
WHERE "stationaddrtw" LIKE '%臺北%';

select *
from "每日各站進出站人數" left join "台鐵車站資訊" on "車站代碼"="stationcode"
where "stationname" = '基隆'

select count(*)
from "每日各站進出站人數" left join "台鐵車站資訊" on "車站代碼"="stationcode"
where "stationname" = '基隆'

select count(*)
from "每日各站進出站人數" left join "台鐵車站資訊" on "車站代碼"="stationcode"
where "stationname" = '基隆'

/*
* 全省各站點2022進站總人數
*/

select "name" as 站名, count("name") as 筆數
from "每日各站進出站人數" left join "台鐵車站資訊" on "車站代碼"="stationcode"
group by "name"


select "name" as 站名, count("name") as 筆數,AVG("進站人數") as "進站人數"
from "每日各站進出站人數" left join "台鐵車站資訊" on "車站代碼"="stationcode"
group by "name"

select "name" as 站名, count("name") as 筆數,AVG("進站人數") as "進站人數"
from "每日各站進出站人數" left join "台鐵車站資訊" on "車站代碼"="stationcode"
where 日期 between '2022-01-01'and '2022-12-31'
group by "name"