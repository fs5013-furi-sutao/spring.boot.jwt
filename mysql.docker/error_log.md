/var/log/mysql マウントした data フォルダを空にしておかないと、以下のエラーが発生する
data フォルダを空にするとエラーは解決する 

mysql-db-container | 2020-09-11T13:51:31.892939Z 0 [ERROR] [MY-010457] [Server] --initialize specified but the data directory has files in it. Aborting.
mysql-db-container | 2020-09-11T13:51:31.892949Z 0 [ERROR] [MY-013236] [Server] The designated data directory /var/lib/mysql/ is unusable. You can remove all files that the server added to it.
mysql-db-container | 2020-09-11T13:51:31.893539Z 0 [ERROR] [MY-010119] [Server] Aborting