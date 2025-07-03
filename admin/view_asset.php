<?php include "includes/header.php"; ?>
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
            if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['used_by'])) {
                $new_used_by = mysqli_real_escape_string($connection, $_POST['used_by']);

                // Shift previous Usedby values (from Usedby to Usedby10)
                for ($i = 10; $i > 1; $i--) {
                    $prev = ($i == 2) ? "Usedby" : "Usedby" . ($i - 1);
                    $asset["Usedby$i"] = $asset[$prev] ?? '';
                }
                $asset["Usedby"] = $new_used_by;

                // Build update query dynamically
                $updates = [];
                $updates[] = "Usedby = '" . mysqli_real_escape_string($connection, $asset["Usedby"]) . "'";
                for ($i = 2; $i <= 10; $i++) {
                    $val = mysqli_real_escape_string($connection, $asset["Usedby$i"] ?? '');
                    $updates[] = "Usedby$i = '$val'";
                }

                $update_query = "UPDATE asset_list SET " . implode(", ", $updates) . " WHERE id = '$asset_id'";
                if (mysqli_query($connection, $update_query)) {
                    echo "<div class='alert alert-success'>Updated 'Used By' successfully.</div>";
                    $result = mysqli_query($connection, $query);
                    $asset = mysqli_fetch_assoc($result);
                } else {
                    echo "<div class='alert alert-danger'>Error: " . mysqli_error($connection) . "</div>";
                }

                // Fetch employee details for metadata update
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

            // Fetch customers for dropdown
            $customer_result = mysqli_query($connection, "SELECT emp_code, cus_name, cus_ref_no FROM customer WHERE status = '1'");
    ?>
<div class="d-flex">
    <div class="col-md-6">
        <div class="card shadow mb-4">
            <div class="card-header py-3 d-flex justify-content-between">
                <?php if ($asset['Disposed'] == 0): ?>
                    <button type="button" class="btn btn-outline-success btn-sm" data-toggle="modal" data-target="#updateUsedByModal">Assign</button>
                <?php endif; ?>
                <?php if ($update_role == 1): ?>
                    <a href="add_asset_active.php?id=<?= $asset_id; ?>" class="btn btn-outline-primary btn-sm">Update</a>
                <?php endif; ?>
                <button onclick="window.print()" class="btn btn-outline-info btn-sm">Print</button>
            </div>
            <div class="card-body">
                <ul class="list-group">
                    <li class="list-group-item"><strong>Asset Code:</strong> <?= $asset['AssetCode']; ?></li>
                    <li class="list-group-item"><strong>Company:</strong> <?= $asset['Company']; ?></li>
                    <li class="list-group-item"><strong>Quantity:</strong> <?= $asset['qty']; ?></li>
                    <li class="list-group-item"><strong>Asset Type:</strong> <?= $asset['assettype']; ?></li>
                    <li class="list-group-item"><strong>Description:</strong> <?= $asset['AssetDescription']; ?></li>
                    <li class="list-group-item"><strong>SN:</strong> <?= $asset['SN']; ?></li>
                    <li class="list-group-item"><strong>Purchase Date:</strong> <?= (new DateTime($asset['PurchaseDate']))->format('d-m-Y'); ?></li>
                    <li class="list-group-item"><strong>Depn Start Period:</strong> <?= $asset['DepnStartPeriod']; ?> / <?= (new DateTime($asset['PurchaseDate']))->modify('+1 months')->format('Y-m-d'); ?></li>
                    <li class="list-group-item"><strong>Depn End Period:</strong> <?= $asset['DepnEndPeriod']; ?> / <?= (new DateTime($asset['PurchaseDate']))->modify('+3 years')->format('Y-m-d'); ?></li>
                    <li class="list-group-item"><strong>Supplier:</strong> <?= $asset['Supplier']; ?></li>
                    <li class="list-group-item"><strong>Used By:</strong> <?= $asset['Usedby'] ?? 'Unused'; ?></li>
                    <li class="list-group-item"><strong>Assigned Date:</strong> <?= $asset['assigndate']; ?></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <!-- Used By History -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Previous Users</h6>
            </div>
            <div class="card-body">
                <ul class="list-group">
                    <?php for ($i = 2; $i <= 10; $i++): ?>
                        <li class="list-group-item"><strong>Used By <?= $i; ?>:</strong> <?= htmlspecialchars($asset["Usedby$i"] ?? ''); ?></li>
                    <?php endfor; ?>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- Modal for Updating "Used By" -->
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
      
   
 <!-- Column 3: Update Usedby Form -->
    <div class="col-md-4">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Update Usedby History</h6>
            </div>
            <div class="card-body">
                <form method="post">
                    <?php
                    for ($i = 2; $i <= 10; $i++) {
                        $field = "Usedby$i";
                        $value = isset($asset[$field]) ? htmlspecialchars($asset[$field]) : '';
                        echo '<div class="form-group">';
                        echo "<label for='$field'>$field:</label>";
                        echo "<input type='text' name='$field' id='$field' class='form-control form-control-sm' value='$value'>";
                        echo '</div>';
                    }
                    ?>
                    <button type="submit" name="update" class="btn btn-primary btn-sm btn-block">Update</button>
                </form>

                <?php
                if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['update'])) {
                    $data = [];
                    for ($i = 2; $i <= 10; $i++) {
                        $key = "Usedby$i";
                        $data[$key] = isset($_POST[$key]) ? $connection->real_escape_string($_POST[$key]) : '';
                    }

                    $update_sql = "UPDATE asset_list SET ";
                    $update_parts = [];
                    foreach ($data as $key => $val) {
                        $update_parts[] = "$key = '$val'";
                    }
                    $update_sql .= implode(', ', $update_parts);
                    $update_sql .= " WHERE id = $asset_id";

                    if ($connection->query($update_sql) === TRUE) {
                        echo "<p class='text-success mt-2 text-center'>✅ Record updated successfully.</p>";
                    } else {
                        echo "<p class='text-danger mt-2 text-center'>❌ Error: " . $connection->error . "</p>";
                    }
                }
                ?>
            </div>
        </div>
       <?php endif; ?>
   <!-- Revoke Option -->
<div class="col-md-4 m-4">
    <?php if ($revoke_role == 1): ?>
        <a href="view_asset.php?delete=<?= $asset_id; ?>" class="btn btn-danger btn-sm">Revoke</a>
    <?php endif; ?>
</div>
<?php
        } else {
            echo "<div class='alert alert-danger'>No asset found with this ID.</div>";
        }
    } else {
        echo "<div class='alert alert-warning'>Asset ID not specified.</div>";
    }

    // Handle Revoke
    if (isset($_GET['delete'])) {
        $revoke_id = mysqli_real_escape_string($connection, $_GET['delete']);
        $revoke_query = "
            UPDATE asset_list SET 
                Usedby = NULL, 
                usedbyid = NULL, 
                usedbydept = NULL,
                assigndate = NULL
            WHERE id = '$revoke_id'
        ";
        if (mysqli_query($connection, $revoke_query)) {
            echo "<div class='alert alert-warning'>Asset revoked.</div>";
            echo "<script>window.location.href = 'view_asset.php?id=$revoke_id';</script>";
            exit;
        } else {
            echo "<div class='alert alert-danger'>Error revoking asset: " . mysqli_error($connection) . "</div>";
        }
    }
?>

</div>

</div>

<?php include "includes/footer.php"; ?>
