    <?php include "includes/header.php"; ?>

<div class="container-fluid">
    <div class="ml-.5 text-gray-800 alert alert-secondary">Emp / Manage Emp</div>

    <?php
// Check for GET parameter to load employee data for update
if (isset($_GET['update'])) {
    $cus_get_id = intval($_GET['update']); // Ensure ID is an integer

    // Prepare statement to fetch employee data
    $stmt = $connection->prepare("SELECT * FROM customer WHERE id = ?");
    $stmt->bind_param("i", $cus_get_id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        ?>
        <div class="row">
            <div class="col-md-12">
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Update Employee Information</h6>
                    </div>
                    <div class="card-body ml-4">
                        <form action="" method="POST" enctype="multipart/form-data">
                            <input type="hidden" name="cus_id" value="<?= htmlspecialchars($cus_get_id); ?>">
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label>Emp Name</label>
                                    <input type="text" name="cus_name" class="form-control" value="<?= htmlspecialchars($row['cus_name']); ?>" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label>Emp Code</label>
                                    <input type="text" name="emp_code" class="form-control" value="<?= htmlspecialchars($row['emp_code']); ?>" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label>Emp Dept</label>
                                    <input type="text" name="cus_address" class="form-control" value="<?= htmlspecialchars($row['cus_address']); ?>" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label>Emp Email</label>
                                    <input type="email" name="cus_email" class="form-control" value="<?= htmlspecialchars($row['cus_email']); ?>" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label>Emp Phone</label>
                                    <input type="text" name="cus_phone" class="form-control" value="<?= htmlspecialchars($row['cus_phone']); ?>" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label>Designation</label>
                                    <input type="text" name="cus_ref_no" class="form-control" value="<?= htmlspecialchars($row['cus_ref_no']); ?>" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label>Manager</label>
                                    <input type="text" name="cus_ref" class="form-control" value="<?= htmlspecialchars($row['cus_ref']); ?>" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label>Asset</label>
                                    <input type="text" name="asset" class="form-control" value="<?= htmlspecialchars($row['asset']); ?>">
                                </div>
                         
                                <div class="form-group col-md-6">
                                    <label>Status</label>
                                    <div class="form-check form-switch d-flex">
                                    <input class="form-control" type="checkbox" name="status" id="statusSwitch" value="1" <?= $row['status'] == '1' ? 'checked' : ''; ?>>
                                    <label class="form-control" for="statusSwitch">
                                        <?= $row['status'] == '1' ? 'Active' : 'Deactive'; ?>
                                    </label>
                                    </div>
                                </div>
                                <script>
                                document.getElementById("statusSwitch").addEventListener("change", function() {
                                    this.nextElementSibling.textContent = this.checked ? "Active" : "Deactive";
                                    this.value = this.checked ? "1" : "0"; // Ensure correct value is sent in the form
                                });
                                </script>

                            </div>
                            <div class="col-md-12 mt-3">
                                <button type="submit" name="update-customer" class="btn btn-primary btn-add-user">Update Employee Data</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <?php
    } else {
        echo "<div class='alert alert-danger'>No employee found with this ID.</div>";
    }
    $stmt->close();
}
?>

<?php
// Update Employee Data in Database
if (isset($_POST['update-customer'])) {
    $cus_id = intval($_POST['cus_id']); // Ensure ID is an integer
    $cus_name = trim($_POST['cus_name']);
    $emp_code = trim($_POST['emp_code']);
    $cus_address = trim($_POST['cus_address']);
    $cus_email = trim($_POST['cus_email']);
    $cus_phone = trim($_POST['cus_phone']);
    $cus_ref_no = trim($_POST['cus_ref_no']);
    $cus_ref = trim($_POST['cus_ref']);
    $asset = trim($_POST['asset']);
    $status = intval($_POST['status']); // Ensure status is numeric
    $date_updated = date("Y-m-d H:i:s"); // Get current timestamp

    // Validate required fields
    if (empty($cus_name) || empty($emp_code) || empty($cus_address) || empty($cus_email) || empty($cus_phone)) {
        echo "<div class='alert alert-danger'>All fields are required.</div>";
        exit;
    }

    // Use prepared statement to update data
    $stmt = $connection->prepare("UPDATE customer SET 
        cus_name = ?, 
        cus_address = ?, 
        emp_code = ?, 
        cus_email = ?, 
        cus_phone = ?, 
        cus_ref_no = ?, 
        cus_ref = ?, 
        asset = ?, 
        date_updated = ?,
        status = ? 
        WHERE id = ?");
    $stmt->bind_param("sssssssissi", 
        $cus_name, 
        $cus_address, 
        $emp_code, 
        $cus_email, 
        $cus_phone, 
        $cus_ref_no, 
        $cus_ref, 
        $asset, 
        $date_updated,
        $status, 
        $cus_id
    );

    if ($stmt->execute()) {
        header("Location: managecustomer.php?update_success=1");
        exit;
    } else {
        echo "<div class='alert alert-danger'>Failed to update employee information: " . $stmt->error . "</div>";
    }
    $stmt->close();
}
?>

<!-- update part is ends here -->




    
<!-- Display All Employees -->
<div class="row">
    <div class="col-md-12">
        <div class="card shadow mb-4">
            <div class="card-header py-3 d-flex">
                <h6 class="m-0 pl-3 font-weight-bold text-primary">
                    All Emp Information
                    <?php if ($_SESSION['user_role'] == '1'): ?>
                        <a href="add_customer.php" class="btn btn-dark btn-sm ml-3">Add Emp</a>
                    <?php endif; ?>
                </h6>
            </div>
            <div class="card-body">
                <table class="table table-responsive table-bordered">
                    <thead class="thead-dark">
                        <tr>
                            <th>#</th>
                            <th>EMP </th>
                            <th>Name</th>
                            <th>Dept</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Designation</th>
                            <th>Manager</th>
                            <!--th>Joining Date</th-->
                            <th>Asset(s)</th>
                            <th>Status</th>
                            <th>Created/by</th>
                            <th>Updated/by</th>
                            <!--th>Photo</th-->
                            <th></th>
                        </tr>
                    </thead>
                    <tbody style="font-size: 0.9rem;">
                        <?php
                        $stmt = $connection->prepare("SELECT * FROM customer WHERE status = '0'");
                        $stmt->execute();
                        $result = $stmt->get_result();
                        $i = 1;

                        while ($row = $result->fetch_assoc()) {
                            ?>
                            <tr>
                                <td><?= $i++; ?></td>
                                <td><?= htmlspecialchars($row['emp_code']); ?></td>
                                <td><?= htmlspecialchars($row['cus_name']); ?></td>
                                <td><?= htmlspecialchars($row['cus_address']); ?></td>
                                <td><?= htmlspecialchars($row['cus_email']); ?></td>
                                <td><?= htmlspecialchars($row['cus_phone']); ?></td>
                                <td><?= htmlspecialchars($row['cus_ref_no']); ?></td>
                                <td><?= htmlspecialchars($row['cus_ref']); ?></td>
                                <!--td><?= htmlspecialchars($row['cus_date']); ?></td-->
                                <td>
                                    <?php
                                    $asset_stmt = $connection->prepare("SELECT usedbyid,AssetCode FROM Asset_list WHERE usedbyid = ?");
                                    $asset_stmt->bind_param("i", $row['id']);
                                    $asset_stmt->execute();
                                    $asset_result = $asset_stmt->get_result();
                                    while ($asset_row = $asset_result->fetch_assoc()) { 
										
                                        // echo htmlspecialchars($asset_row['usedbyid']);?>
										<li  class="list-group-item"><?php	echo htmlspecialchars($asset_row['AssetCode']);  ?> </li>
										 								
									<?php }
                                    $asset_stmt->close();

                                    ?>
                                </td>
                                <td><?= $row['status'] == '1' ? 'Active' : 'deactivated'; ?></td>
                                <td><?= $row['cus_date'] . ' by ' . $the_user; ?></td>
                                <td><?= $row['date_updated'] . ' by ' . $the_user; ?></td>
                                <!--td><img src="img/customer/<?= htmlspecialchars($row['image']); ?>" width="40"></td-->
                                <td>
                                    <div class="btn-group">
                                        
                                         <?php if ($update_role == 1){ ?>                                            
                                        <a href="managecustomer.php?update=<?= $row['id']; ?>" class="btn btn-primary btn-sm">Update</a>
                                            <?php } ?>
                                           
                                            <?php if ($delete_role == 1){ ?>
                                                <a href="managecustomer.php?delete=<?= $row['id']; ?>" class="btn btn-danger btn-sm">Delete</a>
                                        <?php } ?>
                                    </div>
                                </td>
                            </tr>
                            <?php
                        }
                        $stmt->close();
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<?php
// Delete Employee
if (isset($_GET['delete'])) {
    $cus_id = $_GET['delete'];

    $stmt = $connection->prepare("DELETE FROM customer WHERE id = ?");
    $stmt->bind_param("i", $cus_id);

    if ($stmt->execute()) {
        header("Location: managecustomer.php");
        exit;
    } else {
        echo "<div class='alert alert-danger'>Failed to delete employee.</div>";
    }
    $stmt->close();
}
?>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<?php
// Delete Employee
if (isset($_GET['delete'])) {
    $cus_id = $_GET['delete'];

    $stmt = $connection->prepare("DELETE FROM customer WHERE id = ?");
    $stmt->bind_param("i", $cus_id);

    if ($stmt->execute()) {
        header("Location: managecustomer.php");
    } else {
        echo "<div class='alert alert-danger'>Failed to delete employee.</div>";
    }
    $stmt->close();
}
?>

<?php include "includes/footer.php"; ?>
