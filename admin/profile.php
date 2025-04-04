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
				    <label class="p-5" for="exampleFormControlFile1"><i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>Edit your profile</label>
				    <a class="mt-5" href="profile.edit.php?profile=<?php echo $_SESSION['id']; ?>">
                  <i class="fas fa-pencil-alt"></i> | Edit
                </a>
				</div>
				<!-- end rofile pic-->
			</div>
			<div class="col-md-6 ">
				<div class="form-group">
    				<label>Username</label><br>
    				<saction class="form-control"> <?php echo $username;?> </saction>

				</div>

				

				<div class="form-group">
    				<label>Email Address</label>
    				<saction class="form-control"><?php echo $email; ?></saction>
				</div>
				<div class="form-group">
    				<label>Full Name</label>
    				<saction class="form-control"><?php echo $fullname; ?></saction>
				</div>
			</div>

			<div class="col-md-6">
				

				<div class="form-group">
    				<label>Phone No.</label>
    				<saction class="form-control"><?php echo $phone; ?></saction>
				</div>

				<div class="form-group">
    				<label>Present Address</label>
    				<saction class="form-control"><?php echo $address; ?></saction>
				</div>

			</div>

			


		</div>

	</form>


	<?php	}
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

      