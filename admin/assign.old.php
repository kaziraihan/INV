\<?php include "includes/header.php"; ?>

<div class="container-fluid">
    <div class="col-md-12">
        <div class="card shadow mb-4">
            <?php
            // Fetch the latest row by ID
            $query = "SELECT * FROM temp ORDER BY id DESC LIMIT 1";
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
                                    <th>ID</th>
                                    <th>Employee ID</th>
                                    <th>Employee code</th>
                                    <th>Employee Name</th>
                                    <th>Employee Department</th>
                                    <th>Asset ID</th>
                                    <th>Asset Code</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><?php echo htmlspecialchars($i); ?></td>
                                    <td><?php echo htmlspecialchars($temp_id = $row['id']); ?></td>
                                    <td><?php echo htmlspecialchars($temp_usedbyid = $row['emp_id']); ?></td>
                                    <td><?php echo htmlspecialchars($temp_code = $row['emp_code']); ?></td>
                                    <td><?php echo htmlspecialchars($temp_usedby = $row['emp_name']); ?></td>
                                    <td><?php echo htmlspecialchars($temp_usedbydept = $row['emp_dept']); ?></td>
                                    <td><?php echo htmlspecialchars($row['asset_id']); ?></td>
                                    <td><?php echo htmlspecialchars($row['asset_code']); ?></td>
                                    <td><?php echo htmlspecialchars($row['status']); ?></td>
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
                        <th>UsedBy</th>
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

                    $select_customer = mysqli_query($connection, $query);

                    if (mysqli_num_rows($select_customer) > 0) {
                        while ($row = mysqli_fetch_assoc($select_customer)): ?>
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
</div>

<!-- Assign Logic -->
<div>
    <?php
    if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['Assign'])) {
        $asset_id = $_POST['Assign'];
        if (!empty($asset_id) && isset($temp_usedby, $temp_usedbyid, $temp_usedbydept)) {
            // Update Queries
            $update_query0 = "UPDATE asset_list SET Usedby = '$temp_usedby' WHERE id = '$asset_id'";
            $update_query1 = "UPDATE asset_list SET assigndate = NOW() WHERE id = '$asset_id'";
            $update_query2 = "UPDATE asset_list SET usedbyid = '$temp_usedbyid' WHERE id = '$asset_id'";
            $update_query3 = "UPDATE asset_list SET usedbydept = '$temp_usedbydept' WHERE id = '$asset_id'";

            foreach ([$update_query0, $update_query1, $update_query2, $update_query3] as $query) {
                if (!mysqli_query($connection, $query)) {
                    echo "<div class='alert alert-danger'>Error updating asset: " . mysqli_error($connection) . "</div>";
                }
            }
            echo "<div class='alert alert-success'>Asset details updated successfully!</div>";
        } else {
            echo "<div class='alert alert-warning'>Error: Asset ID or required details are missing.</div>";
        }
    }
    ?>



        </div>
    </div>
</div>
</div>
</div>

<?php include "includes/footer.php"; ?>
