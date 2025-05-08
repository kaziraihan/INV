<?php 
include "includes/header.php";  ?>
<div class="container-fluid">
    <div class="ml-.5 text-gray-800 alert alert-secondary">View Asset Details</div>
    <?php
    if (isset($_GET['id'])) {
        $asset_id = mysqli_real_escape_string($connection, $_GET['id']);
        $query = "SELECT * FROM asset_list WHERE id = '$asset_id'";
        $result = mysqli_query($connection, $query);
        if ($result && mysqli_num_rows($result) > 0) {
            $asset = mysqli_fetch_assoc($result);
            // Handle assignment form submission
            if ($_SERVER['REQUEST_METHOD'] === 'POST') {
                $new_used_by = mysqli_real_escape_string($connection, $_POST['used_by']);
                // Shift usedby values
                for ($i = 10; $i > 1; $i--) {
                    $asset["Usedby$i"] = $asset["Usedby" . ($i - 1)];
                }
                $asset['Usedby'] = $new_used_by;
                // Build update query dynamically
                $updates = [];
                for ($i = 1; $i <= 10; $i++) {
                    $col = $i === 1 ? "Usedby" : "Usedby$i";
                    $val = mysqli_real_escape_string($connection, $asset[$col]);
                    $updates[] = "$col = '$val'";
                }
                $update_query = "UPDATE asset_list SET " . implode(", ", $updates) . " WHERE id = '$asset_id'";
                
                if (mysqli_query($connection, $update_query)) {
                    echo "<div class='alert alert-success'>Updated 'Used By' successfully.</div>";
                    $result = mysqli_query($connection, $query);
                    $asset = mysqli_fetch_assoc($result);
                } else {
                    echo "<div class='alert alert-danger'>Error: " . mysqli_error($connection) . "</div>";
                }
                // Fetch extra customer data
                $customer_q = "SELECT * FROM customer WHERE cus_name = '$new_used_by' LIMIT 1";
                $customer_r = mysqli_query($connection, $customer_q);
                if ($customer = mysqli_fetch_assoc($customer_r)) {
                    $current_emp_id = mysqli_real_escape_string($connection, $customer['id']);
                    $current_dept = mysqli_real_escape_string($connection, $customer['cus_address']);
                    $current_date = (new DateTime('now', new DateTimeZone('Asia/Dhaka')))->format('Y-m-d');
                    $meta_updates = [
                        "usedbyid = '$current_emp_id'",
                        "usedbydept = '$current_dept'",
                        "assigndate = '$current_date'"
                    ];
                    mysqli_query($connection, "UPDATE asset_list SET " . implode(", ", $meta_updates) . " WHERE id = '$asset_id'");
                }
            }
            // Fetch customer names for the dropdown
            $customer_result = mysqli_query($connection, "SELECT emp_code, cus_name, cus_ref_no FROM customer WHERE status = '1'");
    ?>
    <!-- Asset Details Card -->
    <div class="card shadow mb-4">
        <div class="card-header py-3 d-flex justify-content-between align-items-center">
            <h6 class="m-0 font-weight-bold text-primary col-md-10">Asset Details</h6>
            <?php if ($asset['Disposed'] == 0): ?>
                <button type="button" class="btn btn-outline-success btn-sm" data-toggle="modal" data-target="#updateUsedByModal">Assign</button>
            <?php endif; ?>
            <?php if ($update_role == 1): ?>
                <a href="add_asset_active.php?id=<?= $asset_id; ?>" class="btn btn-outline-primary btn-sm">Update</a>
            <?php endif; ?>
            <button onclick="window.print()" class="btn btn-outline-info btn-sm mr-2">Print</button>
        </div>
        <div class="card-body">
            <ul class="list-group">
                <li class="list-group-item"><strong>Asset Code:</strong> <?= $asset['AssetCode']; ?></li>
                <li class="list-group-item"><strong>Company:</strong> <?= $asset['Company']; ?></li>
                <li class="list-group-item"><strong>Quantity:</strong> <?= $asset['qty']; ?></li>
                <li class="list-group-item"><strong>Asset Type:</strong> <?= $asset['assettype']; ?></li>
                <li class="list-group-item"><strong>Description:</strong> <?= $asset['AssetDescription']; ?></li>
                <li class="list-group-item"><strong>SN:</strong> <?= $asset['SN']; ?></li>
                <li class="list-group-item"><strong>Purchase Date:</strong> <?= (new DateTime($asset['PurchaseDate']))->format('d-m-Y'); ?> </li>
                <li class="list-group-item"><strong>Depn Start Period:</strong> <?= $asset['DepnStartPeriod']; ?> / <?= (new DateTime($asset['PurchaseDate']))->modify('+1 months')->format('Y-m-d'); ?></li>
                <li class="list-group-item"><strong>Depn End Period:</strong> <?= $asset['DepnEndPeriod']; ?> /   <?= (new DateTime($asset['PurchaseDate']))->modify('+3 years')->format('Y-m-d'); ?></li>
                <li class="list-group-item"><strong>Supplier:</strong> <?= $asset['Supplier']; ?></li>
                <li class="list-group-item"><strong>Used By:</strong> <?= $asset['Usedby'] ?? 'Unused'; ?></li>
                <li class="list-group-item"><strong>Assigned Date:</strong> <?= $asset['assigndate']; ?></li>
            </ul>

    
          
            
    

          
          Expand Down
    
    
  
        </div>
    </div>
    <!-- Additional Used By History -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Previous Users</h6>
        </div>
        <div class="card-body">
            <ul class="list-group">
                <?php
                for ($i = 2; $i <= 10; $i++) {
                    $val = htmlspecialchars($asset["Usedby$i"] ?? '');
                    echo "<li class='list-group-item'><strong>Used By $i:</strong> $val</li>";
                }
                ?>
            </ul>
        </div>
    </div>
    <!-- Assign Modal -->
    <div class="modal fade" id="updateUsedByModal" tabindex="-1" aria-labelledby="updateUsedByModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <form method="POST" action="" class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Update "Used By"</h5>
                    <button type="button" class="close" data-dismiss="modal"><span>&times;</span></button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="used_by">Select User:</label>
                        <select id="used_by" name="used_by" class="form-control" required>
                            <option value="">-- Select User --</option>
                            <?php while ($row = mysqli_fetch_assoc($customer_result)): ?>
                                <option value="<?= htmlspecialchars($row['cus_name']); ?>">
                                    <?= "{$row['emp_code']} - {$row['cus_name']} - {$row['cus_ref_no']}" ?>
                                </option>
                            <?php endwhile; ?>
                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Update</button>
                </div>
            </form>
        </div>
    </div>
    <?php if ($revoke_role == 1): ?>
        <a href="view_asset.php?delete=<?= $asset_id; ?>" class="btn btn-danger btn-sm">Revoke</a>
    <?php endif; ?>
    <?php
        } else {
            echo "<div class='alert alert-danger'>No asset found with this ID.</div>";
        }
    } else {
        echo "<div class='alert alert-warning'>Asset ID not specified.</div>";
    }
    // Revoke logic
    if (isset($_GET['delete'])) {
        $revoke_id = mysqli_real_escape_string($connection, $_GET['delete']);
        $revoke_query = "
            UPDATE asset_list SET 
                Usedby = NULL, 
                usedbyid = NULL, 
                usedbydept = NULL 
            WHERE id = '$revoke_id'
        ";
        if (mysqli_query($connection, $revoke_query)) {
            echo "<div class='alert alert-warning'>Asset revoked.</div>";
            header("Location: view_asset.php?id=$revoke_id");
            exit;
        } else {
            echo "<div class='alert alert-danger'>Error revoking asset: " . mysqli_error($connection) . "</div>";
        }
    }
    ?>
</div>
<?php include "includes/footer.php"; ?>