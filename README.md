# 2025_06_29_create_postgres
建立_postgres

這是老師建立的

這是第2次建立

#建.evn
HOST=dpg-d2bvmoadbo4c73b86q30-a.singapore-postgres.render.com
DATABASE=chilee_sunday
USER=chilee_sunday_user
PASSWORD=LiUXF48xva6yz65yBWg208tsFvPxLMji
##帳號密碼資料庫設定

#建requirements.txt
psycopg2-binary
python-dotenv

#建.gitignore
##忽略不用上傳
.env
host=dpg-d2bvmoadbo4c73b86q30-a.singapore-postgres.render.com
database=chilee_sunday
user=chilee_sunday_user
password=LiUXF48xva6yz65yBWg208tsFvPxLMji

在pydev檔案右鍵選取在整合式終端機開啓
terminal 輸入conda activate pydev
terminal 輸入pip install -r requirements.txt
terminal 輸入streamlit run main.py