<?php
require '../vendor/PhpSpreadsheet-master'; // Ensure PhpSpreadsheet is installed

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

// Database connection
$connection = mysqli_connect('localhost', 'root', '', 'rootsystem');
if (!$connection) {
    die('Database connection failed: ' . mysqli_connect_error());
}

// Query the database
$query = "SELECT * FROM asset_list";
$result = mysqli_query($connection, $query);

if (!$result) {
    die('Query failed: ' . mysqli_error($connection));
}

// Create a new Spreadsheet object
$spreadsheet = new Spreadsheet();
$sheet = $spreadsheet->getActiveSheet();

// Set the header row
$headers = [
    '#', 'id', 'AssetCode', 'Company', 'Qty', 'AssetType', 'AssetDepn',
    'PurchaseDate', 'DepnStartPeriod', 'DepnEndPeriod', 'Disposed', 'S/N',
    'Supplier', 'Remark', 'UsedBy'
];
$sheet->fromArray($headers, NULL, 'A1');

// Populate data rows
$rowNumber = 2;
$index = 1;

while ($row = mysqli_fetch_assoc($result)) {
    $sheet->fromArray([
        $index++,
        $row['id'], $row['AssetCode'], $row['Company'], $row['qty'], $row['assettype'],
        $row['AssetDescription'], $row['PurchaseDate'], $row['DepnStartPeriod'],
        $row['DepnEndPeriod'], $row['Disposed'], $row['SN'],
        $row['Supplier'], $row['Remark'], empty($row['Usedby']) ? 'Unused' : $row['Usedby']
    ], NULL, "A{$rowNumber}");
    $rowNumber++;
}

// Set the file for download
$filename = 'Asset_List_' . date('Y-m-d') . '.xlsx';
header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
header("Content-Disposition: attachment; filename=\"$filename\"");

$writer = new Xlsx($spreadsheet);
$writer->save('php://output');

// Close the database connection
mysqli_close($connection);
exit;
?>
