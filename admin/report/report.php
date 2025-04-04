<?php
include "../../includes/db.php";

// Set default filter
$filter = isset($_GET['filter']) ? $_GET['filter'] : 'all';

// Define query based on filter
switch ($filter) {
    case 'desktop':
        $query = "SELECT * FROM asset_list WHERE Disposed = 0 AND assettype = 'Desktop'";
        break;
    case 'laptop':
        $query = "SELECT * FROM asset_list WHERE Disposed = 0 AND assettype = 'Laptop'";
        break;
    case 'mobile':
        $query = "SELECT * FROM asset_list WHERE Disposed = 0 AND assettype = 'Mobile'";
        break;
    case 'unused_desktop':
        $query = "SELECT * FROM asset_list WHERE Disposed = 0 AND assettype = 'Desktop' AND usedbyid = 0";
        break;
    case 'unused_laptop':
        $query = "SELECT * FROM asset_list WHERE Disposed = 0 AND assettype = 'Laptop' AND usedbyid = 0";
        break;
    default:
        $query = "SELECT * FROM asset_list WHERE Disposed = 0"; // Show all assets by default
}

$result = mysqli_query($connection, $query);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Asset Report</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-3">
        <div class="d-flex justify-content-between align-items-center">
            <div>
                <button onclick="filterData('all')" class="btn btn-primary btn-sm">All Assets</button>
                <button onclick="filterData('desktop')" class="btn btn-secondary btn-sm">Desktops</button>
                <button onclick="filterData('laptop')" class="btn btn-info btn-sm">Laptops</button>
                <button onclick="filterData('mobile')" class="btn btn-warning btn-sm">Mobiles</button>
                <button onclick="filterData('unused_desktop')" class="btn btn-success btn-sm">Unused Desktops</button>
                <button onclick="filterData('unused_laptop')" class="btn btn-danger btn-sm">Unused Laptops</button>
            </div>
        </div>

        <table class="table table-bordered mt-3">
            <thead class="thead-dark">
                <tr>
                    <th>#</th>
                    <th>AssetCode</th>
                    <th>Company</th>
                    <th>Qty</th>
                    <th>AssetType</th>
                    <th>AssetDscpn</th>
                    <th>PurchaseDate</th>
                    <th>DepnStartPeriod</th>
                    <th>DepnEndPeriod</th>
                    <th>Active?</th>
                    <th>S/N</th>
                    <th>Supplier</th>
                    <th>Remark</th>
                    <th>UsedBy</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $i = 1;
                while ($row = mysqli_fetch_assoc($result)) { ?>
                    <tr>
                        <td><?php echo $i++; ?></td>
                        <td><?php echo htmlspecialchars($row['AssetCode']); ?></td>
                        <td><?php echo htmlspecialchars($row['Company']); ?></td>
                        <td><?php echo htmlspecialchars($row['qty']); ?></td>
                        <td><?php echo htmlspecialchars($row['assettype']); ?></td>
                        <td><?php echo htmlspecialchars($row['AssetDescription']); ?></td>
                        <td><?php echo htmlspecialchars($row['PurchaseDate']); ?></td>
                        <td><?php echo htmlspecialchars($row['DepnStartPeriod']); ?></td>
                        <td><?php echo htmlspecialchars($row['DepnEndPeriod']); ?></td>
                        <td><?php echo ($row['Disposed'] == 0) ? 'Active' : 'Disposed'; ?></td>
                        <td><?php echo htmlspecialchars($row['SN']); ?></td>
                        <td><?php echo htmlspecialchars($row['Supplier']); ?></td>
                        <td><?php echo htmlspecialchars($row['Remark']); ?></td>
                        <td><?php echo empty($row['Usedby']) ? 'Unused' : htmlspecialchars($row['Usedby']); ?></td>
                        
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>

    <script>
        function filterData(filter) {
            window.location.href = "?filter=" + filter;
        }
    </script>

    
</body>
</html>
