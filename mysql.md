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

# Search from JSON data
```sh
$this->db->where('kasd.document_asset_type REGEXP REPLACE ("' . $asset_id . '", ",", "(\,|$)|")', NULL, FALSE);
```

# Generate Queries for adding auto-increment
```sh
SELECT     
    CONCAT('ALTER TABLE `', t.table_name, '` CHANGE `id` `id` INT(11) NOT NULL AUTO_INCREMENT;')
FROM
    INFORMATION_SCHEMA.TABLES t
WHERE
    t.table_schema = 'db_name';
```