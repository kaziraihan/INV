	<?php include "includes/header.php"; ?>

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-4 text-gray-800"></h1>

          <div class="row">
          	<div class="col-md-12">

	      		<!-- Basic Card Example -->
	          	<div class="card shadow mb-4">
	                <div class="card-header py-3">
	                  <h6 class="m-0 font-weight-bold text-primary">Profile information</h6>
	                </div>
	                <div class="card-body">

	<?php

			if(isset($_GET['profile'])){
			    
			    $the_authors_id=$_GET['profile'];
			    
			        }

		

    
		$query = "SELECT * FROM users WHERE id = '$the_authors_id' ";

		$find_user_info = mysqli_query($connection, $query);

		while ( $row = mysqli_fetch_assoc($find_user_info) ) {
			$update_user_id 	= $row['id'];
			$username 			= $row['username'];
			$password 			= $row['password'];
			$fullname 			= $row['fname'];
			$email 				= $row['email'];
			$phone 				= $row['phone'];
			$address 			= $row['address'];
			$avater 			= $row['avater'];

			?>

			<form action="" method="POST" enctype="multipart/form-data">
		
		<div class="row">
			<div class="col-md-12 pb-5">
			<!-- start rofile pic -->
				<div class="form-group d-flex">
					<?php

						if(empty($avater)){
							echo '<div class="avater-not-found">No Profile Picture Found</div>';
						}
						else{ ?>
							<img class="img-profile rounded-circle" src="img/users/<?php echo $avater; ?>" width="150">
						<?php }

					?>
					<div>
						<label class="p-5" for="exampleFormControlFile1"><i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>Upload or change Your Profile Picture</label>
				   		<input class="pt-2" type="file" class="form-control-file" name="image">
					</div>
				    
				</div>
				<!-- end rofile pic-->
			</div>
			<div class="col-md-6 ">
				<div class="form-group">
    				<label>Username</label>
    				<input type="text" name="username" class="form-control" autocomplete="off" required="required" value="<?php echo $username; ?>">
				</div>

				<div class="form-group">
    				<label>Password</label>
    				<input type="password" name="password" class="form-control" autocomplete="off" required="required" value="<?php echo $password; ?>">
				</div>

				<div class="form-group">
    				<label>Confirm Password</label>
    				<input type="password" name="repeat-password" class="form-control" autocomplete="off" required="required" value="<?php echo $password; ?>">
				</div>

				<div class="form-group">
    				<label>Email Address</label>
    				<input type="email" name="email" class="form-control" autocomplete="off" required="required" value="<?php echo $email; ?>">
				</div>

			</div>

			<div class="col-md-6">
				<div class="form-group">
    				<label>Full Name</label>
    				<input type="text" name="fname" class="form-control" autocomplete="off" required="required" value="<?php echo $fullname; ?>">
				</div>

				<div class="form-group">
    				<label>Phone No.</label>
    				<input type="text" name="phone" class="form-control" autocomplete="off" required="required" value="<?php echo $phone; ?>">
				</div>

				<div class="form-group">
    				<label>Present Address</label>
    				<input type="text" name="address" class="form-control" autocomplete="off" required="required" value="<?php echo $address; ?>">
				</div>

			</div>

			<div class="col-md-12">
				 <input type="submit" name="update-user" value="Save changes" class="mt-5 mb-3 btn btn-primary btn-add-user">
			</div>


		</div>

	</form>


	<?php	}
	?>



	<?php

		if (isset($_POST['update-user'])){
			$the_id 			= $the_authors_id;
			$username 			= $_POST['username'];
			//$password 			= $_POST['password'];
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
				
				if ( empty($image) ){

					$query = "UPDATE users SET username='$username', fname='$fname', email='$email', phone='$phone', address='$address' WHERE id='$the_id' ";

					//echo $query;

					$update_the_user = mysqli_query($connection, $query);

					if (!$update_the_user){
						die("Query Faild" . mysqli_error($connection));
					}
					else{
						header("Location: users.php");
					}
				}
				else{
					$query = "UPDATE users SET username='$username', fname='$fname', email='$email', phone='$phone', address='$address', avater='$image' WHERE id='$the_id' ";

					//echo $query;

					$update_the_user = mysqli_query($connection, $query);

					if (!$update_the_user){
						die("Query Faild" . mysqli_error($connection));
					}
					else{
						header("Location: users.php");
					}
				}
				
			}

		}

	?>



	                </div>
	          	</div>
          	</div>
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

<?php include "includes/footer.php"; ?>

      