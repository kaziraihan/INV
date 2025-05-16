<?php include "includes/header.php"; ?>

<div class="container-fluid">
    <div class="col-md-12">
        <div class="card shadow mb-4">

            <?php
            // Fetch the latest row by ID
            $query = "SELECT * FROM asset_assigned ORDER BY id DESC LIMIT 1";
            $result = mysqli_query($connection, $query);

            if ($result) {
                if (mysqli_num_rows($result) > 0) {
                    $row = mysqli_fetch_assoc($result);
                    $i = 1;

                    // Display fetched data in a Bootstrap table
                    ?>
                    <div class="container mt-4 col-md-12">
                        <table class="table table-bordered table-hover">
                            <thead class="thead-dark">
                                <tr>
                                    <th>#</th>
                                    <th>Employee code</th>
                                    <th>Employee Name</th>
                                    <th>Employee Department</th>
                                    <th>ID</th>
                                    <th>Employee ID</th>
                                    <th>Asset ID</th>
                                    <th>Asset Code</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><?php echo htmlspecialchars($i); ?></td>
                                    <td><?php echo htmlspecialchars($temp_code = $row['emp_code']); ?></td>
                                    <td><?php echo htmlspecialchars($temp_usedby = $row['emp_name']); ?></td>
                                    <td><?php echo htmlspecialchars($temp_usedbydept = $row['emp_dept']); ?></td>
                                    <td><?php echo htmlspecialchars($temp_id = $row['id']); ?></td>
                                   <!--td><?php echo htmlspecialchars($temp_usedbyid = $row['emp_id']); ?></td-->
                                    <!--td><?php echo htmlspecialchars($row['asset_id']); ?></td-->
                                   <!--td><?php echo htmlspecialchars($row['date_created']); ?></td-->
                                    <!--td><?php echo htmlspecialchars($row['status']); ?></td-->
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <?php
                } else {
                    echo "<div class='alert alert-warning'>No records found.</div>";
                }
            } else {
                echo "<div class='alert alert-danger'>Error: " . mysqli_error($connection) . "</div>";
            }
            ?>

          <!-- Search Form -->
<div class="card-body">
    <form action="" method="GET">
        <div class="input-group">
            <input type="text" name="search" class="form-control" placeholder="Search by Asset Code, SN, or UsedBy" 
            value="<?php echo isset($_GET['search']) ? htmlspecialchars($_GET['search']) : ''; ?>">
            <div class="input-group-append">
                <button class="btn btn-primary" name="Search" type="submit">Search</button>
            </div>
        </div>
    </form>
   <?php if (isset($_GET['search']) && !empty($_GET['search'])): ?>
    <div class="table-responsive">
        <table class="mt-4 col-md-12 table table-bordered" id="dataTable" width="100%" cellspacing="0">
            <thead class="thead-dark">
                <tr>
                    <th>#</th>
                    <th>AssetCode</th>
                    <th>Company</th>
                    <th>Qty</th>
                    <th>Type</th>
                    <th>Asset Description</th>
                    <th>Purchase Date</th>
                    <th>Depreciation Start Period</th>
                    <th>Depreciation End Period</th>
                    <th>Disposed</th>
                    <th>S/N</th>
                    <th>Supplier</th>
                    <th>Remark</th>
                    <th>Currently using </th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $i = 1;
                $search = mysqli_real_escape_string($connection, $_GET['search']);
                $query = "SELECT * FROM asset_list 
                          WHERE (AssetCode LIKE '%$search%' 
                             OR assettype LIKE '%$search%' 
                             OR SN LIKE '%$search%' 
                             OR UsedBy LIKE '%$search%') 
                          AND Disposed = 0 
                          ORDER BY Disposed ASC";

                $result = mysqli_query($connection, $query);

                if (mysqli_num_rows($result) > 0) {
                    while ($row = mysqli_fetch_assoc($result)): ?>
                        <tr>
                            <td><?php echo $i++; ?></td>
                            <td>
                                <a class="btn btn-primary btn-sm" href="view_asset.php?id=<?php echo $row['id']; ?>">
                                    <?php echo htmlspecialchars($row['AssetCode']); ?>
                                </a>
                            </td>
                            <td><?php echo htmlspecialchars($row['Company']); ?></td>
                            <td><?php echo htmlspecialchars($row['qty']); ?></td>
                            <td><?php echo htmlspecialchars($row['assettype']); ?></td>
                            <td><?php echo htmlspecialchars($row['AssetDescription']); ?></td>
                            <td><?php echo htmlspecialchars($row['PurchaseDate']); ?></td>
                            <td><?php echo htmlspecialchars($row['DepnStartPeriod']); ?></td>
                            <td><?php echo htmlspecialchars($row['DepnEndPeriod']); ?></td>
                            <td><?php echo htmlspecialchars($row['Disposed']); ?></td>
                            <td><?php echo htmlspecialchars($row['SN']); ?></td>
                            <td><?php echo htmlspecialchars($row['Supplier']); ?></td>
                            <td><?php echo htmlspecialchars($row['Remark']); ?></td>
                            <td><?php echo htmlspecialchars(empty($row['Usedby']) ? 'Unused' : $row['Usedby']); ?></td>
                            <td>
                                <!-- Assign Form -->
                                <form method="POST" action="">
                                    <input type="hidden" name="Assign" value="<?php echo htmlspecialchars($row['id']); ?>">
                                    <button type="submit" class="btn btn-primary btn-sm">Assign</button>
                                </form>
                            </td>
                        </tr>
                    <?php endwhile;
                } else {
                    echo "<tr><td colspan='16' class='text-center'>No results found for \"$search\".</td></tr>";
                }
                ?>
            </tbody>
        </table>
    </div>
    <?php endif; ?>


<!-- Assign Logic -->
<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['Assign'])) {
    $asset_id = intval($_POST['Assign']); // Sanitize asset ID


    // Fetch asset details
    $query = "SELECT * FROM asset_list WHERE id = '$asset_id'";
    $result = mysqli_query($connection, $query);
    
    if ($result && mysqli_num_rows($result) > 0) {
        $asset = mysqli_fetch_assoc($result);
        
        // Simulate "UsedBy" update with cascading values
        $usedby2 = $asset['Usedby'];
        $usedby3 = $asset['Usedby2'];
        $usedby4 = $asset['Usedby3'];
        $usedby5 = $asset['Usedby4'];
        $usedby6 = $asset['Usedby5'];
        $usedby7 = $asset['Usedby6'];
        $usedby8 = $asset['Usedby7'];
        $usedby9 = $asset['Usedby8'];
        $usedby10 = $asset['Usedby9'];

        $new_used_by = "$temp_usedby"; // Replace with actual input
        $temp_usedbyid = "$temp_usedbyid"; // Replace with actual ID
        $temp_usedbydept = "$temp_usedbydept"; // Replace with actual department

        // Update asset table
        $update_query = "
            UPDATE asset_list 
            SET 
                Usedby = '$new_used_by', 
                Usedby2 = '$usedby2', 
                Usedby3 = '$usedby3', 
                Usedby4 = '$usedby4', 
                Usedby5 = '$usedby5', 
                Usedby6 = '$usedby6', 
                Usedby7 = '$usedby7', 
                Usedby8 = '$usedby8', 
                Usedby9 = '$usedby9', 
                Usedby10 = '$usedby10', 
                assigndate = NOW(), 
                usedbyid = '$temp_usedbyid', 
                usedbydept = '$temp_usedbydept'
            WHERE id = '$asset_id'
        ";
        
        if (mysqli_query($connection, $update_query)) {
            echo "<div class='alert alert-success'>Asset has asseined and Asset assigning history updated successfully!</div>";

            // get temp datatable update with Asset ID - Starts here
             $asset_id;
             $temp_id;
            
            $query = "UPDATE asset_assigned SET asset_id = '$asset_id', date_created = NOW() WHERE id = '$temp_id'";
            $Stat = mysqli_query($connection, $query);

            if ($Stat) {
                echo " <div class='alert alert-success'>Record of who using this asset before is updated.</div>";
            } else {
                echo "Update failed: " . mysqli_error($connection);
            }
            
            // get temp datatable update with Asset ID - Ends here

        } else {
            echo "<div class='alert alert-danger'>Error updating asset: " . mysqli_error($connection) . "</div>";
        }
    } else {
        echo "<div class='alert alert-warning'>No asset found with the provided ID.</div>";
    }
}
?>

        </div>
    </div>
</div>
</div>
</div>


<?php include "includes/footer.php"; ?>
