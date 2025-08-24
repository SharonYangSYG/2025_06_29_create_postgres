# Copilot Instructions for This Codebase

## 專案架構與資料流
- 本專案以 VS Code MCP (Model Context Protocol) 為基礎，主要與 Render Postgres 雲端資料庫進行互動。
- 主要資料流為：AI agent 透過 MCP query tools 發送 SQL 指令，取得資料庫資料。
- 所有與資料庫互動的 query tools（如 render_postgres）都必須明確提供 SQL 語法，並附上語法說明。

## 關鍵檔案與目錄
- `.vscode/mcp.json`：定義 MCP 伺服器與 render_postgres 連線資訊。
- `.github/instructions/注意事項.instructions.md`：規範 AI agent 必須提供 SQL 及說明的專案規則。

## 專案慣例
- 查詢資料庫時，務必：
  1. 明確列出 SQL 語法（如 SELECT ... FROM ...）。
  2. 附上該 SQL 的用途說明（例如：查詢所有車站站名）。
- SQL 欄位、表名需與資料庫實際結構一致（可先用 `information_schema.tables` 或 `LIMIT 1` 查詢欄位）。
- 若查詢失敗，需回報原因並建議修正方式。

## 常用 SQL 查詢範例
- 查詢所有資料表：
  ```sql
  SELECT table_name FROM information_schema.tables WHERE table_schema='public';
  ```
- 查詢特定表欄位：
  ```sql
  SELECT name FROM 台鐵車站資訊;
  ```

## 外部依賴
- 依賴 Render Postgres 雲端資料庫，連線資訊見 `.vscode/mcp.json`。
- 無本地端程式碼（無 JS、Python、SQL 檔），所有邏輯皆透過 SQL 查詢與 MCP 工具實現。

## 其他
- 若需新增規則，請參考 `.github/instructions/注意事項.instructions.md` 格式。
- 若遇到資料庫結構不明，可先查詢 `information_schema.columns`。

---
如有不清楚之處，請回報以便補充！
