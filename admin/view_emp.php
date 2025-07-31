<?php include "includes/header.php"; ?>

<div class="container-fluid">
<?php
if (isset($_GET['update'])) {
    $cus_get_id = intval($_GET['update']);

    $stmt = $connection->prepare("SELECT * FROM customer WHERE id = ?");
    $stmt->bind_param("i", $cus_get_id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $image = htmlspecialchars($row['image']);
        ?>
        <div class="row">
            <div class="col-md-12">
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">View Employee Information</h6>
                    </div>
                    <div class="card-body ml-4">
                        <div class="row">

                            <div class="form-group col-md-4">
                                <strong>Emp Name:</strong> <?= htmlspecialchars($row['cus_name']); ?>
                            </div>
                            <div class="form-group col-md-4">
                                <strong>Emp Code:</strong> <?= htmlspecialchars($row['emp_code']); ?>
                            </div>
                            <div class="form-group col-md-4">
                                <strong>Emp Email:</strong> <?= htmlspecialchars($row['cus_email']); ?>
                            </div>
                            <div class="form-group col-md-4">
                                <strong>Emp Phone:</strong> <?= htmlspecialchars($row['cus_phone']); ?>
                            </div>
                            <div class="form-group col-md-4">
                                <strong>Designation:</strong> <?= htmlspecialchars($row['cus_ref_no']); ?>
                            </div>
                            <div class="form-group col-md-4">
                                <strong>Manager:</strong>
                                <?= ($row['cus_ref'] == '1') ? 'Manager' : (($row['cus_ref'] == '0') ? 'Not a manager' : htmlspecialchars($row['cus_ref'])); ?>
                            </div>
                            <div class="form-group col-md-4">
                                <strong>Status:</strong>
                                <?= ($row['status'] == '1') ? 'Active' : (($row['status'] == '0') ? 'Deactive' : 'Archived'); ?>
                            </div>
                            <div class="form-group col-md-4">
                                <strong>Emp type (NHC or Repl):</strong>
                                <?php 
                                $emp_type = $row['emp_type'];
                                if ($emp_type == "0") {
                                    echo "New HC";
                                } else {
                                    $query = "SELECT emp_code, cus_name FROM customer WHERE id = '$emp_type'";
                                    $result = mysqli_query($connection, $query);
                                    if ($result && mysqli_num_rows($result) > 0) {
                                        $customer = mysqli_fetch_assoc($result);
                                        echo htmlspecialchars($customer['emp_code']) . " - " . htmlspecialchars($customer['cus_name']);
                                    } else {
                                        echo "Unknown ID ($emp_type)";
                                    }
                                }
                                ?>
                            </div>
                            <div class="form-group col-md-4">
                                <strong>Emp Dept:</strong> <?= htmlspecialchars($row['cus_address']); ?>
                            </div>
                            <div class="form-group col-md-4">
                                <strong>Acknowledgments:</strong><br>
                                <a href="view_gallery.php?customer_id=<?= $cus_get_id; ?>" class="btn btn-primary btn-sm mt-1">
                                    <i class="fa fa-eye"></i> View uploaded files
                                </a>
                            </div>

                            <div class="form-group col-md-12">
                                <strong>Now Using:</strong><br>
                                <?php
                                $query = "SELECT * FROM asset_list WHERE usedbyid = '$cus_get_id'";
                                $stmt = mysqli_prepare($connection, $query);
                                mysqli_stmt_execute($stmt);
                                $result = mysqli_stmt_get_result($stmt);

                                while ($row = mysqli_fetch_assoc($result)) {
                                    $asset_code = $row['AssetCode'];
                                    $asset_type = $row['assettype'];
                                    $assigndate = $row['assigndate'];
                                    ?>
                                    <a class="btn btn-primary btn-sm m-1" href="view_asset.php?id=<?= $row['id']; ?>">
                                        <?= htmlspecialchars($asset_code) ?>
                                    </a>
                                    <?= htmlspecialchars($asset_type) ?>, Assigned on <?= htmlspecialchars($assigndate) ?><br>
                                <?php } ?>
                            </div>


                        </div> <!-- End row -->
                        <hr>
                        <div class="text-right">
                            <a href="managecustomer_active.php" class="btn btn-secondary">Back</a>
                        </div>
                    </div> <!-- End card-body -->
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
</div>
</div>

<?php include "includes/footer.php"; ?>
