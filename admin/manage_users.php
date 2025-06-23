<?php 
include "includes/header.php";

// Role-Based Access Control: get current user's role permissions
$current_user_id = $_SESSION['id'];
$role_query = "SELECT user_role, update_role, assign_role, revoke_role, delete_role FROM users WHERE id='$current_user_id'";
$role_result = mysqli_query($connection, $role_query);
$role_data = mysqli_fetch_assoc($role_result);
?>

<div class="container-fluid">
    

    <div class="row">
        <div class="col-md-12">
            <div class="card shadow mb-4">
                <div class="card-header py-3 d-flex justify-content-between align-items-center">
                    <h6 class="m-0 font-weight-bold text-primary">Manage All Users</h6>
                </div>
                <div class="card-body">
                    <table class="table table-bordered table-hover">
                        <thead class="thead-dark">
                            <tr>
                                <th>#</th>
                                <th>Avatar</th>
                                <th>Username</th>
                                <th>Full Name</th>
                                <th>Email</th>
                                <th>Login_role</th>
                                <th>Update_role </th>
                                <th>Assign_role</th>
                                <th>Revoke_role</th>
                                <th>Delete_role</th>                                
                                <th>Join Date</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
<?php
$query = "SELECT * FROM users";
$all_users = mysqli_query($connection, $query);
$i = 0;
while ($row = mysqli_fetch_assoc($all_users)) {
    $user_id  = $row['id'];
    $username = $row['username'];
    $fullname = $row['fname'];
    $email    = $row['email'];
    $user_role = $row['user_role'];
    $update_role = $row['update_role'];
    $assign_role = $row['assign_role'];
    $revoke_role = $row['revoke_role'];
    $delete_role = $row['delete_role'];
    $avatar   = $row['avater'];
    $join     = $row['join_date'];
    $i++;
?>
    <tr>
        <form action="users.php" method="POST">
            <input type="hidden" name="user_id" value="<?= $user_id ?>">
            <td><?= $i; ?></td>
            <td><img src="img/users/<?= !empty($avatar) ? $avatar : 'default.png'; ?>" width="50" class="rounded-circle"></td>
            <td><?= $username; ?></td>
            <td><?= $fullname; ?></td>
            <td><?= $email; ?></td>
            <td>
                <?php
                switch ($user_role) {
                    case '1': echo '<span class="badge badge-danger">Super Admin</span>'; break;
                    case '2': echo '<span class="badge badge-primary">Admin</span>'; break;
                    case '3': echo '<span class="badge badge-secondary">General</span>'; break;
                }
                ?>
            </td>
            <!-- update_role -->
            <td>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="update_role" value="1" <?= $update_role ? 'checked' : ''; ?>> 
                    <label class="form-check-label">Yes</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="update_role" value="0" <?= !$update_role ? 'checked' : ''; ?>> 
                    <label class="form-check-label">No</label>
                </div>
            </td>
            <!-- assign_role -->
            <td>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="assign_role" value="1" <?= $assign_role ? 'checked' : ''; ?>> 
                    <label class="form-check-label">Yes</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="assign_role" value="0" <?= !$assign_role ? 'checked' : ''; ?>> 
                    <label class="form-check-label">No</label>
                </div>
            </td>
            <!-- revoke_role -->
            <td>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="revoke_role" value="1" <?= $revoke_role ? 'checked' : ''; ?>> 
                    <label class="form-check-label">Yes</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="revoke_role" value="0" <?= !$revoke_role ? 'checked' : ''; ?>> 
                    <label class="form-check-label">No</label>
                </div>
            </td>
            <!-- delete_role -->
            <td>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="delete_role" value="1" <?= $delete_role ? 'checked' : ''; ?>> 
                    <label class="form-check-label">Yes</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="delete_role" value="0" <?= !$delete_role ? 'checked' : ''; ?>> 
                    <label class="form-check-label">No</label>
                </div>
            </td>
            <td><?= $join; ?></td>
            <td>
                <div class="btn-group">
                    <?php if ($role_data['update_role']): ?>
                        <a href="users.php?update=<?= $user_id; ?>" class="btn btn-outline-primary btn-sm" title="Edit User">
                            <i class="fas fa-edit"></i>
                        </a>
                    <?php endif; ?>
                    <?php if ($role_data['delete_role']): ?>
                        <button type="button" class="btn btn-outline-danger btn-sm delete-user" title="Delete User" data-id="<?= $user_id; ?>" data-toggle="modal" data-target="#deleteModal">
                            <i class="fas fa-trash-alt"></i>
                        </button>
                    <?php endif; ?>
                </div>
                <button type="submit" name="save_roles" class="btn btn-sm btn-success mt-1">Save</button>
            </td>
        </form>
    </tr>
<?php } ?>
</tbody>

                    </table>
                </div>
            </div>
      <?php       if (isset($_POST['save_roles'])) {
    $user_id = $_POST['user_id'];
    $update_role = $_POST['update_role'];
    $assign_role = $_POST['assign_role'];
    $revoke_role = $_POST['revoke_role'];
    $delete_role = $_POST['delete_role'];

    $query = "UPDATE users SET 
                update_role = '$update_role', 
                assign_role = '$assign_role', 
                revoke_role = '$revoke_role', 
                delete_role = '$delete_role' 
              WHERE id = '$user_id'";
    $result = mysqli_query($connection, $query);

    if ($result) {
        echo "<script>window.location='users.php';</script>";
    } else {
        echo "<div class='alert alert-danger'>Role update failed!</div>";
    }
}
 ?>
            <?php if (isset($_GET['update'])): 
                $the_update_user_id = $_GET['update'];
                $query = "SELECT * FROM users WHERE id = '$the_update_user_id'";
                $find_user_info = mysqli_query($connection, $query);
                $row = mysqli_fetch_assoc($find_user_info);
            ?>
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Update User Information</h6>
                </div>
                <div class="card-body">
                    <form action="" method="POST">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <img class="img-profile rounded-circle" src="img/users/<?= !empty($row['avater']) ? $row['avater'] : 'default.png'; ?>" width="150">
                                </div>
                                <div class="form-group">
                                    <label>User Role</label>
                                    <select name="user_role" class="form-control">
                                        <option value="1" <?= $row['user_role'] == 1 ? 'selected' : ''; ?>>Super Admin ( Full-access )</option>
                                        <option value="2" <?= $row['user_role'] == 2 ? 'selected' : ''; ?>>Admin ( Admin-access )</option>
                                        <option value="3" <?= $row['user_role'] == 3 ? 'selected' : ''; ?>>General ( Read-only )</option>
                                        <option value="4" <?= $row['user_role'] == 3 ? 'selected' : ''; ?>>Suspend</option>
                                    </select>
                                </div>
                            </div>
                            
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Username</label>
                                    <input type="text" name="username" class="form-control" value="<?= $row['username']; ?>">
                                </div>
                                <div class="form-group">
                                    <label>Email</label>
                                    <input type="email" name="email" class="form-control" value="<?= $row['email']; ?>">
                                </div>
                                <div class="form-group">
                                    <label>Full Name</label>
                                    <input type="text" name="fname" class="form-control" value="<?= $row['fname']; ?>">
                                </div>
                                <div class="form-group">
                                    <label>Phone</label>
                                    <input type="text" name="phone" class="form-control" value="<?= $row['phone']; ?>">
                                </div>
                                <div class="form-group">
                                    <label>Address</label>
                                    <input type="text" name="address" class="form-control" value="<?= $row['address']; ?>">
                                </div>
                            </div>
                        </div>
                        <input type="submit" name="update_user" value="Save Changes" class="btn btn-primary">
                    </form>
                </div>
            </div>
            <?php endif; ?>

            <?php
            if (isset($_POST['update_user'])) {
                $username = $_POST['username'];
                $email = $_POST['email'];
                $fname = $_POST['fname'];
                $phone = $_POST['phone'];
                $address = $_POST['address'];
                $user_role = $_POST['user_role'];

                $query = "UPDATE users SET username='$username', email='$email', fname='$fname', phone='$phone', address='$address', user_role='$user_role' WHERE id='$the_update_user_id'";
                mysqli_query($connection, $query);
                header("Location: users.php");
            }
            ?>
        </div>
    </div>
</div>

<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form action="users.php" method="POST">
                <div class="modal-header">
                    <h5 class="modal-title">Confirm Deletion</h5>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    Are you sure you want to delete this user?
                    <input type="hidden" name="user_id" id="deleteUserId">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    <button type="submit" name="delete_user" class="btn btn-danger">Delete</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    $(document).on('click', '.delete-user', function () {
        var userId = $(this).data('id');
        $('#deleteUserId').val(userId);
    });
</script>



