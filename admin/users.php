<?php 
include "includes/header.php"; ?>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="ml-.5 text-gray-800 alert alert-secondary">User / Manage Users</div>

    <div class="row">
        <div class="col-md-12">

            <!-- User List -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Manage All Users</h6>
                </div>
                <div class="card-body">
                    <table class="table">
                        <thead class="thead-dark">
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Avatar</th>
                                <th scope="col">Username</th>
                                <th scope="col">Fullname</th>
                                <th scope="col">Email</th>
                                <th scope="col">User Role</th>
                                <th scope="col">Join Date</th>
                                <th scope="col">Manage</th>
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
                                $avatar   = $row['avater'];
                                $join     = $row['join_date'];
                                $i++;
                            ?>
                                <tr>
                                    <th scope="row"><?php echo $i; ?></th>
                                    <td><img src="img/users/<?php echo $avatar; ?>" width="50"></td>
                                    <td><?php echo $username; ?></td>
                                    <td><?php echo $fullname; ?></td>
                                    <td><?php echo $email; ?></td>
                                    <td><?php echo $user_role; ?></td>
                                    <td><?php echo $join; ?></td>
                                    <td>
                                        <div class="btn-group">
                                            <a href="users.php?update=<?php echo $user_id; ?>" class="btn btn-primary btn-sm">
                                                <i class="fas fa-align-justify"></i> | Edit
                                            </a>
                                            <button type="button" class="btn btn-danger btn-sm delete-user" data-id="<?php echo $user_id; ?>" data-toggle="modal" data-target="#deleteModal">
                                                <i class="fas fa-trash-alt"></i> | Del
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- Update User Section -->
            <?php if (isset($_GET['update'])) {
                $the_update_user_id = $_GET['update'];

                $query = "SELECT * FROM users WHERE id = '$the_update_user_id' ";
                $find_user_info = mysqli_query($connection, $query);

                while ($row = mysqli_fetch_assoc($find_user_info)) {
                    $update_user_id = $row['id'];
                    $username = $row['username'];
                    $password = $row['password'];
                    $fullname = $row['fname'];
                    $email = $row['email'];
                    $phone = $row['phone'];
                    $address = $row['address'];
                    $avatar = $row['avater'];
            ?>
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Update User Information</h6>
                        </div>
                        <div class="card-body">
                            <form action="" method="POST" enctype="multipart/form-data">
                                <div class="row">
                                    <div class="col-md-6">
                                        <!-- Profile Picture -->
                                        <div class="form-group">
                                            <?php
                                            if (empty($avatar)) {
                                                echo '<div class="avatar-not-found">No Profile Picture Found</div>';
                                            } else {
                                                echo '<img class="img-profile rounded-circle" src="img/users/' . $avatar . '" width="150">';
                                            }
                                            ?>
                                        </div>
                                        <!-- User Role -->
                                        <div class="form-group">
                                            <label>Select User Role</label>
                                            <select class="form-control" name="user_role">
                                                <option value="<?php echo $row['user_role']; ?>">Selected: <?php echo $row['user_role']; ?></option>
                                                <option value="1">Super Admin</option>
                                                <option value="2">Admin</option>
                                                <option value="3">General User</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <!-- Update Fields -->
                                        <div class="form-group">
                                            <label>Username</label>
                                            <input type="text" name="username" class="form-control" value="<?php echo $username; ?>">
                                        </div>
                                        <div class="form-group">
                                            <label>Email</label>
                                            <input type="email" name="email" class="form-control" value="<?php echo $email; ?>">
                                        </div>
                                        <div class="form-group">
                                            <label>Full Name</label>
                                            <input type="text" name="fname" class="form-control" value="<?php echo $fullname; ?>">
                                        </div>
                                        <div class="form-group">
                                            <label>Phone</label>
                                            <input type="text" name="phone" class="form-control" value="<?php echo $phone; ?>">
                                        </div>
                                        <div class="form-group">
                                            <label>Address</label>
                                            <input type="text" name="address" class="form-control" value="<?php echo $address; ?>">
                                        </div>
                                    </div>

                                    <div class="col-md-12">
                                        <input type="submit" name="update_user" value="Save Changes" class="btn btn-primary">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
            <?php
                }
            }

            // Handle User Update
            if (isset($_POST['update_user'])) {
                $username = $_POST['username'];
                $email = $_POST['email'];
                $fname = $_POST['fname'];
                $phone = $_POST['phone'];
                $address = $_POST['address'];
                $user_role = $_POST['user_role'];

                $query = "UPDATE users SET username='$username', email='$email', fname='$fname', phone='$phone', address='$address', user_role='$user_role' WHERE id='$the_update_user_id'";
                $update_user = mysqli_query($connection, $query);

                if (!$update_user) {
                    die("Query Failed: " . mysqli_error($connection));
                } else {
                    header("Location: users.php");
                }
            }
            ?>
        </div>
    </div>
</div>

<!-- Delete Modal -->
<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form action="users.php" method="POST">
                <div class="modal-header">
                    <h5 class="modal-title" id="deleteModalLabel">Confirm Deletion</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    Are you sure you want to delete this user?
                    <input type="hidden" name="user_id" id="deleteUserId" value="">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    <button type="submit" name="delete_user" class="btn btn-danger">Delete</button>
                </div>
            </form>
        </div>
    </div>
</div>




