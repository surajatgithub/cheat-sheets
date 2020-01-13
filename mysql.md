# Import DB
```sh
$ mysql -u root -p < db_name < "<file_path>"
$ mysql -u root -p < db_name < "<file_path>"
$ mysql -u root -p prod_verify_live_1 < "<file_path>"
```

# Export
```sh
$ mysqldump -u root -p <db_name> > <db_path>
$ mysqldump --set-gtid-purged=OFF -u chad -p <db_name> > <db_path>
```

# Select and Insert
```sh
INSERT INTO tbl_temp2 (fld_id)
  SELECT tbl_temp1.fld_order_id
  FROM tbl_temp1 WHERE tbl_temp1.fld_order_id > 100;
```