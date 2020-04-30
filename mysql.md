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

# Get timezone of the mysql
```sh
$ SELECT timediff(now(),convert_tz(now(),@@session.time_zone,'+00:00'));
$ SELECT TIMEDIFF(NOW(), UTC_TIMESTAMP);
```

# Convert -ve timestampot to date string
```sh
$ DATE_FORMAT(DATE_ADD(FROM_UNIXTIME(0), interval `ks`.`user_dob` second), '%Y-%m-%d') as user_dob,
$ TIMESTAMPDIFF(YEAR, DATE_FORMAT(DATE_ADD(FROM_UNIXTIME(0), interval `ks`.`user_dob` second), '%Y-%m-%d'), CURDATE()) as user_age,
```

# REG EX REPLACE
```sh
$ REGEXP_REPLACE(SUBSTRING(
    image_dump,
    POSITION("valid_score" IN `image_dump`) + 13,
    5
), '[^0-9]', '') as valid_score,

```

# Set timezone
```sh
SET time_zone = 'Europe/Helsinki';
SET time_zone = "+00:00";
SET @@session.time_zone = "+00:00";
```

# Order By preference
```sh
$this->db->order_by('FIELD(ksc.document_type, "passport", "national_id", "other")');
```

# Select this or that
```sh
$ COALESCE(
    ksc.document_name,
    mid.display_name
) AS document_name

$ SELECT coalesce(NULLIF(email, ''), 'user@domain.com') FROM users WHERE id=1000000;
```