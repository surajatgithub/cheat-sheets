# Import DB
```sh

$ mysql -u root -p < db_name < "<file_path>"

$ mysql -u root -p < db_name < "<file_path>"

$ mysql -u root -p prod_verify_live_1 < "<file_path>"

$ mysql -u root -p verify_kyc_acme < "C:\Users\Codebox\Downloads\verify_kyc_acme.sql"

$ mysql -u root -p verify_kyc_acme_dev < "C:\Users\Codebox\Downloads\verify_kyc_acme.sql"

$ mysqldump --add-drop-database --add-drop-table --triggers --routines --events --set-gtid-purged=off --ssl-ca=/var/lib/mysql/10.0.0.16ca.pem --ssl-cert=/var/lib/mysql/10.0.0.16-client-cert.pem --ssl-key=/var/lib/mysql/10.0.0.16-client-key.pem --user=$MYSQL_USER -p$MYSQL_PASSWORD $kyc_db context_a_document_details kyc_ai_credit_report_liabilities kyc_ai_has_assets kyc_ai_has_liabilities kyc_ai_details kyc_ai_document_types kyc_ai_meta_assets kyc_ai_meta_liabilitites kyc_ai_screenshots kyc_ai_supported_documents kyc_submissions kyc_logs kyc_webhook_hit_logs kyc_activity_logs > "$aci_db.sql"

$ mysql --user=chad --password=password -e "DROP DATABASE IF EXISTS verify_aci_westernunion; CREATE DATABASE verify_aci_westernunion;"

$ mysql --user=chad --password=password --ssl-ca=/var/lib/mysql/10.0.0.16ca.pem --ssl-cert=/var/lib/mysql/10.0.0.16-client-cert.pem --ssl-key=/var/lib/mysql/10.0.0.16-client-key.pem verify_aci_westernunion < "verify_aci_westernunion.sql"

$ mysql --user=chad --password=password --ssl-ca=/var/lib/mysql/10.0.0.16ca.pem --ssl-cert=/var/lib/mysql/10.0.0.16-client-cert.pem --ssl-key=/var/lib/mysql/10.0.0.16-client-key.pem verify_aci_westernunion < "3.1.sql_script_1.sql"
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

# Search from JSON data (JSON)
```sh
$this->db->where('kasd.document_asset_type REGEXP REPLACE ("' . $asset_id . '", ",", "(\,|$)|")', NULL, FALSE);
```

# Select from JSON data (JSON)
```sh
SELECT JSON_UNQUOTE(JSON_EXTRACT(csv_data, '$.firstName')) AS name FROM kyc_bulk_upload_record;
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

$ SELECT REGEXP_REPLACE("ABCDEFG", "A|B", "*");
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

# Find and Replace
```sh
$ SELECT    
    `red_status_feedback_text`,
    replace(red_status_feedback_text, 'user_full_name', 'user_full_name_user_full_name')
FROM 
    kyc_companies;
```

# Few IMP import flags
```sh
SET INNODB_STRICT_MODE = 0;
SET FOREIGN_KEY_CHECKS = 0;
```

# Search from SCHEMA
```sh
SELECT
	SCHEMA_NAME,
    TABLE_NAME,
    COLUMN_NAME
FROM
    information_schema.schemata,
    information_schema.columns
WHERE
	COLUMN_NAME LIKE '%template%'
    AND SCHEMA_NAME IN(
        'verify_kyc_demo'
    )
    AND TABLE_NAME NOT IN('pma__export_templates');
```

# Copy table from ONE DB to Another
```sh
CREATE TABLE verify_kyc_demo3.keys LIKE verify_kyc_demo2.keys;
INSER INTO verify_kyc_demo3.kyc_countries SELECT * FROM verify_kyc_demo2.kyc_countries;
mysqldump -u... -p... mydb t1 t2 t3 > mydb_tables.sql
```

# Dates
```sh
DATE_FORMAT(DATE_ADD(FROM_UNIXTIME(0), interval `ks`.`user_dob` second), '%Y-%m-%d') as user_dob,
TIMESTAMPDIFF(YEAR, DATE_FORMAT(DATE_ADD(FROM_UNIXTIME(0), interval `ks`.`user_dob` second), '%Y-%m-%d'), CURDATE()) as user_age,
```