    <?php include "includes/header.php"; ?>

<?php
// Add New Category
if (isset($_POST['add_Category'])) {
    $cat_name = mysqli_real_escape_string($connection, $_POST['category']);

    if (!empty($cat_name)) {
        $query = "INSERT INTO categories (category_name) VALUES ('$cat_name')";
        $add_category = mysqli_query($connection, $query);

        if ($add_category) {
            header("Location: managecategory.php");
        } else {
            die("Query Failed: " . mysqli_error($connection));
        }
    } else {
        echo "Category name cannot be empty!";
    }
}

// Update Category
if (isset($_POST['update_category'])) {
    $cat_id = $_POST['cat_id'];
    $latest_category_name = $_POST['latest_category_name'];

    $query = "UPDATE categories SET category_name = '$latest_category_name' WHERE category_id = '$cat_id'";
    $update_category = mysqli_query($connection, $query);

    if (!$update_category) {
        die("Query Failed: " . mysqli_error($connection));
    } else {
        header("Location: managecategory.php");
    }
}

// Delete Category
if (isset($_GET['delete'])) {
    $the_cat_id = $_GET['delete'];

    $query = "DELETE FROM categories WHERE category_id = '$the_cat_id'";
    $delete_category = mysqli_query($connection, $query);

    if (!$delete_category) {
        die("Query Failed: " . mysqli_error($connection));
    } else {
        header("Location: managecategory.php");
    }
}
?>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="ml-.5 text-gray-800 alert alert-secondary">Category / Add Category / Manage Categories</div>

    <div class="row">
        <div class="col-md-6">
            <!-- Manage All Categories -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">
                        Manage Categories
                        <button class="btn btn-primary" data-toggle="modal" data-target="#addCategoryModal">Add New Category</button>
                    </h6>
                </div>
                <div class="card-body">
                    <!-- Categories Table -->
                    <table class="table table-striped">
                        <thead class="thead-dark">
                            <tr>
                                <th>#</th>
                                <th>Name</th>
                                <th  class="text-right"></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $query = "SELECT * FROM categories";
                            $select_all_category = mysqli_query($connection, $query);
                            $i = 0;

                            while ($row = mysqli_fetch_assoc($select_all_category)) {
                                $cat_id = $row['category_id'];
                                $cat_name = $row['category_name'];
                                $i++;
                                ?>
                                <tr>
                                    <td><?php echo $i; ?></td>
                                    <td width="60%"><?php echo $cat_name; ?></td>
                                    <td class="text-right">
                                        <div class="btn-group" >
                                        <?php if ($update_role == 1){ ?>
                                            <a href="#" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#updateCategoryModal<?php echo $cat_id; ?>">Update</a>
                                            <?php } ?>
                                           
                                            <?php if ($delete_role == 1){ ?>
                                                <a href="managecategory.php?delete=<?php echo $cat_id; ?>" class="btn btn-danger btn-sm">Delete</a>
                                        <?php } ?>
                                        </div>
                                    </td>
                                </tr>

                                <!-- Update Category Modal -->
                                <div class="modal fade" id="updateCategoryModal<?php echo $cat_id; ?>" tabindex="-1" role="dialog" aria-labelledby="updateCategoryModalLabel<?php echo $cat_id; ?>" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="updateCategoryModalLabel<?php echo $cat_id; ?>">Update Category</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <form action="" method="POST">
                                                    <div class="form-group">
                                                        <input type="hidden" name="cat_id" value="<?php echo $cat_id; ?>">
                                                        <label>Category Name</label>
                                                        <input type="text" name="latest_category_name" class="form-control" value="<?php echo $cat_name; ?>" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="submit" name="update_category" value="Update Category" class="btn btn-primary btn-sm">
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

<!-- Add Category Modal -->
<div class="modal fade" id="addCategoryModal" tabindex="-1" role="dialog" aria-labelledby="addCategoryModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="addCategoryModalLabel">Add New Category</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="" method="POST">
                    <div class="form-group">
                        <label>Category Name</label>
                        <input type="text" name="category" class="form-control" placeholder="Enter category name" required>
                    </div>
                    <div class="form-group">
                        <input type="submit" name="add_Category" value="Add Category" class="btn btn-primary btn-sm">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div></div>


<?php include "includes/footer.php"; ?>
