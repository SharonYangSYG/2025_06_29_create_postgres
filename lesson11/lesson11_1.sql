SELECT d."日期" AS 日期,
       d."車站代碼" AS 車站代碼,
       COALESCE(s."stationname", s."name") AS 車站名稱,
       d."進站人數",
       d."出站人數"
FROM "每日各站進出站人數" d
LEFT JOIN "台鐵車站資訊" s ON d."車站代碼" = s."stationcode"
WHERE d."日期" = DATE '2023-02-01'
  AND (COALESCE(s."stationname", s."name") = '基隆站' OR COALESCE(s."stationname", s."name") ILIKE '%基隆%')
ORDER BY d."車站代碼";