#!/bin/bash

# STEPS to RUN the script
# 0. ACI databases needs to be created before excuting this cript otherwise
# 1. Take backup of ACI tables for all KYC databases
# 2. Drop & Create respective ACI databases
# 3. Import the exported ACI tables into ACI databases
# 4. Dump the "sql_script_1.sql" databases into ACI databases to make required changes in ACI databases

# REquired variables to hold values
MYSQL_USER="root"
MYSQL_PASSWORD=""

# KYC Databases that needs to be exported
declare -a KYC_DATABASES=("verify_kyc_acme")

# To dump each database in a separate file
for kyc_db in ${KYC_DATABASES[@]}; do
    #  Creating ACI database name
    aci_db=${kyc_db//kyc/aci}

    echo "Migration \"${aci_db}\" =====> \"${aci_db}\" .....";

    # mysqldump --set-gtid-purged=off 
    # 1. Take backup of ACI tables for $kyc_db database
    mysqldump --add-drop-database --set-gtid-purged=OFF --add-drop-table --force --opt --skip-lock-tables --user=$MYSQL_USER -p$MYSQL_PASSWORD $kyc_db context_a_document_details kyc_ai_credit_report_liabilities kyc_ai_has_assets kyc_ai_has_liabilities kyc_ai_details kyc_ai_document_types kyc_ai_meta_assets kyc_ai_meta_liabilitites kyc_ai_screenshots kyc_ai_supported_documents kyc_submissions kyc_logs > "$aci_db.sql"
    echo "The \"${aci_db}\" database is exported";

    # 2. Drop & Create KYC's ACI databases
    mysql -u $MYSQL_USER -p$MYSQL_PASSWORD -e "DROP DATABASE IF EXISTS $aci_db; CREATE DATABASE $aci_db;"
    echo "The \"${aci_db}\" database is Droped & Created";

    # 3. Import the exported ACI tables into ACI database
    mysql -u $MYSQL_USER -p$MYSQL_PASSWORD $aci_db < "$aci_db.sql"
    echo "The \"${aci_db}\" database is Imported";

    # 4. Dump the "sql_script_1.sql" SQL script into ACI database to make required changes in ACI database
    mysql -u $MYSQL_USER -p$MYSQL_PASSWORD $aci_db < "sql_script_1.sql"
done