    <?php include "includes/header.php"; ?>

<?php
// Update Supplier Query
if (isset($_POST['update_tag'])) {
    $the_tag_id = $_POST['tag_id'];
    $the_tag_name = $_POST['tag_name'];

    $query = "UPDATE tag SET tag_name = '$the_tag_name' WHERE tag_id = '$the_tag_id'";
    $update_tag = mysqli_query($connection, $query);

    if (!$update_tag) {
        die("Query Failed: " . mysqli_error($connection));
    } else {
        header("Location: managetag.php");
    }
}

// Delete Supplier Query
if (isset($_GET['delete'])) {
    $the_tag_id = $_GET['delete'];

    $query = "DELETE FROM tag WHERE tag_id = '$the_tag_id'";
    $delete_tag = mysqli_query($connection, $query);

    if (!$delete_tag) {
        die("Query Failed: " . mysqli_error($connection));
    } else {
        header("Location: managetag.php");
    }
}

// Add New Supplier Query
if (isset($_POST['add_tag'])) {
    $tag_name = mysqli_real_escape_string($connection, $_POST['tag']);

    if (!empty($tag_name)) {
        $query = "INSERT INTO tag (tag_name) VALUES ('$tag_name')";
        $add_tag = mysqli_query($connection, $query);

        if ($add_tag) {
            header("Location: managetag.php");
        }
    } else {
        echo "Supplier Name cannot be empty.";
    }
}
?>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="ml-.5 text-gray-800 alert alert-secondary">Tag / Manage Supplier</div>

    <div class="row">
        <!-- Add New Supplier Modal -->
        <div class="modal fade" id="addTagModal" tabindex="-1" role="dialog" aria-labelledby="addTagModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="addTagModalLabel">Add New Supplier</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="" method="POST">
                            <div class="form-group">
                                <label for="Category_Name">Supplier Name</label>
                                <input type="text" name="tag" class="form-control" autocomplete="off" required>
                            </div>
                            <div class="form-group">
                                <input type="submit" name="add_tag" value="Add Supplier" class="btn btn-primary btn-sm">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- Manage All Suppliers -->
        <div class="col-md-6">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">
                        Manage All Suppliers
                        <button class="btn btn-primary" data-toggle="modal" data-target="#addTagModal">Add New Supplier</button>
                    </h6>
                </div>
                <div class="card-body">
                    <!-- Supplier List Table -->
                    <table class="table table-striped">
                        <thead class="thead-dark">
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Supplier Name</th>
                              
                                <th class="text-right"scope="col"> </th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            // Fetch all suppliers (tags)
                            $query = "SELECT * FROM tag";
                            $select_all_tag = mysqli_query($connection, $query);
                            $i = 0;

                            while ($row = mysqli_fetch_assoc($select_all_tag)) {
                                $tag_id = $row['tag_id'];
                                $tag_name = $row['tag_name'];
                                $i++;
                            ?>
                                <tr>
                                    <th scope="row"><?php echo $i; ?></th>
                                    <td><?php echo $tag_name; ?></td>
                                    <td class="text-right">
                                        <div class="btn-group">


                                            <!-- Update Button Trigger -->
                                            <?php if ($update_role == 1){ ?>
                                        
                                            <button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#updateTagModal<?php echo $tag_id; ?>">Update</button>
                                            <?php } ?>
                                            <!-- Delete Button -->
                                            <?php if ($delete_role == 1){ ?>
                                                <a href="managetag.php?delete=<?php echo $tag_id; ?>" class="btn btn-danger btn-sm">Delete</a>
                                            <?php } ?>

                                           
                                        </div>
                                    </td>
                                </tr>

                                <!-- Update Supplier Modal -->
                                <div class="modal fade" id="updateTagModal<?php echo $tag_id; ?>" tabindex="-1" role="dialog" aria-labelledby="updateTagModalLabel<?php echo $tag_id; ?>" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="updateTagModalLabel<?php echo $tag_id; ?>">Update Supplier Name</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <form action="" method="POST">
                                                    <div class="form-group">
                                                        <label for="Category_Name">Supplier Name</label>
                                                        <input type="text" name="tag_name" class="form-control" value="<?php echo $tag_name; ?>" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="hidden" name="tag_id" value="<?php echo $tag_id; ?>">
                                                        <input type="submit" name="update_tag" value="Update Supplier" class="btn btn-primary btn-sm">
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
</div>

<?php include "includes/footer.php"; ?>
