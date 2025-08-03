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

/*
* 全省各站點2022進站總人數
*/
select "name" as 站名, date_part('year',"日期") as 年份, count("name") as 筆數,AVG("進站人數") as "進站人數"
from "每日各站進出站人數" left join "台鐵車站資訊" on "車站代碼"="stationcode"
group by "name","年份"

select "name" as 站名, date_part('year',"日期") as 年份, count("name") as 筆數,AVG("進站人數") as "進站人數"
from "每日各站進出站人數" left join "台鐵車站資訊" on "車站代碼"="stationcode"
where "name" = '基隆'
group by "name","年份";


select "name" as 站名, date_part('year',"日期") as 年份, count("name") as 筆數,AVG("進站人數") as "進站人數"
from "每日各站進出站人數" left join "台鐵車站資訊" on "車站代碼"="stationcode"
where "name" = '基隆'
group by "name","年份"
order by "進站人數" DESC;



/*
 * 全省各站點2022年進站總人數大於5佰萬人的站點
 */

SELECT
    t."stationname" AS "車站名稱",
    SUM(p."進站人數") AS "2022年進站總人數"
FROM "每日各站進出站人數" p
LEFT JOIN "台鐵車站資訊" t ON p."車站代碼" = t."stationcode"
WHERE DATE_PART('year', p."日期") = 2022
GROUP BY t."stationcode", t."stationname"
HAVING SUM(p."進站人數") > 5000000
ORDER BY SUM(p."進站人數") DESC;

/*
*基隆火車站2020,2021,2022,每年進站人數
*/

SELECT 
  EXTRACT(YEAR FROM "每日各站進出站人數"."日期") AS 年份,
  SUM("每日各站進出站人數"."進站人數") AS 基隆進站人數
FROM "每日各站進出站人數"
LEFT JOIN "台鐵車站資訊"
  ON "每日各站進出站人數"."車站代碼" = "台鐵車站資訊"."stationcode"
WHERE "台鐵車站資訊"."stationaddrtw" LIKE '%基隆市%'
  AND EXTRACT(YEAR FROM "每日各站進出站人數"."日期") IN (2020, 2021, 2022)
GROUP BY 年份
ORDER BY 年份;

/*
*隆火車站,臺北火車站2020,2021,2022,每年進站人數
*/
SELECT 
  s."stationname" AS 車站名稱,
  EXTRACT(YEAR FROM d."日期") AS 年份,
  SUM(d."進站人數") AS 進站人數
FROM "每日各站進出站人數" d
LEFT JOIN "台鐵車站資訊" s
  ON d."車站代碼" = s."stationcode"
WHERE s."stationname" IN ('基隆', '臺北')
  AND EXTRACT(YEAR FROM d."日期") IN (2020, 2021, 2022)
GROUP BY 車站名稱, 年份
ORDER BY 車站名稱, 年份;

/*
*查詢 2022 年平均每日進站人數超過 2 萬人的站點
*/

SELECT 
  s."stationname" AS 車站名稱,
  ROUND(AVG(d."進站人數")) AS 平均每日進站人數
FROM "每日各站進出站人數" d
JOIN "台鐵車站資訊" s
  ON d."車站代碼" = s."stationcode"
WHERE EXTRACT(YEAR FROM d."日期") = 2022
GROUP BY s."stationname"
HAVING AVG(d."進站人數") > 20000
ORDER BY 平均每日進站人數 DESC;
