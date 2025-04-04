<?php include "includes/header.php"; ?>

<?php
// Add New department
if (isset($_POST['add_department'])) {
    $dap_name = mysqli_real_escape_string($connection, $_POST['department']);

    if (!empty($dap_name)) {
        $query = "INSERT INTO department (department) VALUES ('$dap_name')";
        $add_department = mysqli_query($connection, $query);

        if ($add_department) {
            header("Location: managedepartment.php");
        } else {
            die("Query Failed: " . mysqli_error($connection));
        }
    } else {
        echo "department name cannot be empty!";
    }
}

// Update department
if (isset($_GET['update_department'])) {
    $dap_id = $_GET['update_department'];
    $latest_department_name = $_POST['latest_department_name'];

    $query = "UPDATE department SET department = '$latest_department_name' WHERE id = '$dap_id'";
    $update_department = mysqli_query($connection, $query);

    if (!$update_department) {
        die("Query Failed: " . mysqli_error($connection));
    } else {
        header("Location: managedepartment.php");
    }
}

// Delete department
if (isset($_GET['delete'])) {
    $the_dep_id = $_GET['delete'];

    $query = "DELETE FROM department WHERE id = '$the_dep_id'";
    $delete_department = mysqli_query($connection, $query);

    if (!$delete_department) {
        die("Query Failed: " . mysqli_error($connection));
    } else {
        header("Location: managedepartment.php");
    }
}
?>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="ml-.5 text-gray-800 alert alert-secondary">department / Add department / Manage Categories</div>

    <div class="row">
        <div class="col-md-6">
            <!-- Manage All Categories -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">
                        Manage department
                        <button class="btn btn-primary" data-toggle="modal" data-target="#adddepartmentModal">Add New department</button>
                    </h6>
                </div>
                <div class="card-body">
                    <!-- Categories Table -->
                    <table class="table table-striped">
                        <thead class="thead-dark">
                            <tr>
                                <th>#</th>
                                <th>Name</th>
                                <th  class="text-right"> </th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $query = "SELECT * FROM department";
                            $select_all_department = mysqli_query($connection, query: $query);
                            $i = 0;

                            while ($row = mysqli_fetch_assoc($select_all_department)) {
                                $dep_id = $row['id'];
                                $dep_name = $row['department'];
                                $i++;
                                ?>
                                <tr>
                                    <td><?php echo $i; ?></td>
                                    <td width="60%"><?php echo $dep_name; ?></td>
                                    <td class="text-right">
                                        <div class="btn-group" >
                                        <?php if ($update_role == 1){ ?>
                                            <a href="#" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#updatedepartmentModal<?php echo $dep_id; ?>">Update</a>
                                            <?php } ?>
                                           
                                            <?php if ($delete_role == 1){ ?>
                                                <a href="managedepartment.php?delete=<?php echo $dep_id; ?>" class="btn btn-danger btn-sm">Delete</a>
                                        <?php } ?>
                                        </div>
                                    </td>
                                </tr>

                                <!-- Update department Modal -->
                                <div class="modal fade" id="updatedepartmentModal<?php echo $dep_id; ?>" tabindex="-1" role="dialog" aria-labelledby="updatedepartmentModalLabel<?php echo $cat_id; ?>" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="updatedepartmentModalLabel<?php echo $dep_id; ?>">Update department</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <form action="" method="POST">
                                                    <div class="form-group">
                                                        <input type="hidden" name="id" value="<?php echo $dep_name; ?>">
                                                        <label>department Name</label>
                                                        <input type="text" name="latest_department_name" class="form-control" value="<?php echo $dep_name; ?>" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="submit" name="update_department" value="Update department" class="btn btn-primary btn-sm">
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <?php } ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Add department Modal -->
<div class="modal fade" id="adddepartmentModal" tabindex="-1" role="dialog" aria-labelledby="adddepartmentModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="adddepartmentModalLabel">Add New department</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="" method="POST">
                    <div class="form-group">
                        <label>Department Name</label>
                        <input type="text" name="department" class="form-control" placeholder="Enter department name" required>
                    </div>
                    <div class="form-group">
                        <input type="submit" name="add_department" value="Add department" class="btn btn-primary btn-sm">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div></div>


<?php include "includes/footer.php"; ?>
