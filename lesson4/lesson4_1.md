
## 更改日期型別和更新字串成為Date

```sql
ALTER TABLE world
ALTER COLUMN 日期 TYPE DATE
USING 日期::DATE;
```

## 問題:

1. 查詢亞洲總共有多少人死亡
2. 查詢全世界2020年的總確診數
3. 查國家名有"阿"字,總死亡數大於10000
4. 查詢哪個國家總確診數最多
5. 查詢亞洲台灣 2020-06-25 的總確診數
6. 總死亡數最高的國家
7. 台灣有多少人在2020確診?
8. 排序各國確診數
9. 查詢每百萬確診人數
10. 台灣哪個月死亡人數最多人
11. 台灣在哪個年度及月分，死亡數達到高峰
12. 多明尼加確診數有多少?
13. 查各國總死亡數佔確診數比例
14. 查詢哪個國家總確診數最少
15. 台灣每個月的死亡率
16. 查那個國家的死亡人數最低的前10名的國家
17. 哪一日死亡人數最多
18. 2021 年各州總死亡數
19. 查詢 歐洲 2020-06-15 的總死亡數
20. 查詢總確認數單日大於5筆
21. 查詢各洲死亡佔確診數佔比
