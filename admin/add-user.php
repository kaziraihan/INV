<?php include "includes/header.php"; ?>

<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Page Heading -->
	
	<div class="ml-.5 text-gray-800 alert alert-secondary">User / Register New User</div>

	<div class="row">
		<div class="col-md-12">

			<!-- Basic Card Example -->
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary"> Fill-up the form with proper information</h6>
				</div>
				<div class="card-body">

					<?php
					
					$error_message = '';

					if (isset($_POST['add-user']))
					{
						$username 			= $_POST['username'];
						$password 			= $_POST['password'];
						$repeat_password 	= $_POST['repeat-password'];
						$email 				= $_POST['email'];
						$fname 				= $_POST['fname'];
						$phone 				= $_POST['phone'];
						$address 			= $_POST['address'];

						$hassedPassword 		= sha1($password);
						$hassedRepeatPassword 	= sha1($repeat_password);

						$image 				= $_FILES['image']['name'];
						$image_tmp 			= $_FILES['image']['tmp_name'];

						move_uploaded_file($image_tmp, "img/users/" .$image);

						
						if ( empty($username) || empty($email) || empty($fname) || empty($phone) || empty($address) ){
							$error_message = '<div class="alert alert-warning">Please Fill-up the From Perfectly</div>';
							echo $error_message;
						}
						else if ( $hassedPassword != $hassedRepeatPassword ){
							$error_message = '<div class="alert alert-warning">Password Doesn\'t Match. Please Check again your Password.</div>';
							echo $error_message;
						}
						else{

							$query = "INSERT INTO users (username, password, fname, email, user_role, phone, address, avater, join_date) VALUES ('$username', '$hassedPassword', '$fname', '$email', 'Admin', '$phone', '$address', '$image', now() ) ";

							$add_user = mysqli_query($connection, $query);

							if (!$add_user){
								die("Query Faild" . mysqli_error($connection));
							}
							else{
								header("Location: users.php");
							}



						}


					}


					?>



					
					<form action="" method="POST" enctype="multipart/form-data">
						
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Username</label>
									<input type="text" name="username" class="form-control" autocomplete="off" required="required">
								</div>

								<div class="form-group">
									<label>Password</label>
									<input type="password" name="password" class="form-control" autocomplete="off" required="required">
								</div>

								<div class="form-group">
									<label>Confirm Password</label>
									<input type="password" name="repeat-password" class="form-control" autocomplete="off" required="required">
								</div>

								<div class="form-group">
									<label>Email Address</label>
									<input type="email" name="email" class="form-control" autocomplete="off" required="required">
								</div>

							</div>

							<div class="col-md-6">
								<div class="form-group">
									<label>Full Name</label>
									<input type="text" name="fname" class="form-control" autocomplete="off" required="required">
								</div>

								<div class="form-group">
									<label>Phone No.</label>
									<input type="text" name="phone" class="form-control" autocomplete="off" required="required">
								</div>

								<div class="form-group">
									<label>Present Address</label>
									<input type="text" name="address" class="form-control" autocomplete="off" required="required">
								</div>

								<div class="form-group">
									<label for="exampleFormControlFile1">Profile Picture</label>
									<input type="file" class="form-control-file" name="image">
								</div>
							</div>

							<div class="col-md-12">
								<input type="submit" name="add-user" value="Register New User" class="btn btn-primary btn-add-user">
							</div>


						</div>

					</form>



				</div>
			</div>
		</div>
	</div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<?php include "includes/footer.php"; ?>

