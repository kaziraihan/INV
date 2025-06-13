<?php
$DB_HOST = 'localhost';
$DB_USER = 'root';
$DB_PASS = '';
$DB_NAME = 'rootsystem';
$BACKUP_DIR = 'C:/xampp/htdocs/db_backups/';
$DATE = date('Y-m-d');
$FILENAME = "{$DB_NAME}_backup_{$DATE}.sql";
$FILEPATH = $BACKUP_DIR . $FILENAME;

// Ensure backup directory exists
if (!is_dir($BACKUP_DIR)) {
    mkdir($BACKUP_DIR, 0777, true);
}

$command = "C:\\xampp\\mysql\\bin\\mysqldump.exe -h $DB_HOST -u $DB_USER $DB_NAME > \"$FILEPATH\"";
system($command, $output);

echo "Backup created: $FILENAME";
?>
