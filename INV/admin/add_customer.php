<?php include "includes/header.php"; ?>

<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Page Heading -->
	<div class="ml-.5 text-gray-800 alert alert-secondary">Emp / Add Emp</div>

	<div class="row">
		<div class="col-md-12">

			<!-- Basic Card Example -->
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">Add Emp information</h6>
				</div>
				<div class="card-body">

					<?php

					if (isset($_POST['add-customer']))
					{
						$emp_code 			= mysqli_real_escape_string($connection,$_POST['emp_code']);
						$cus_name 			= mysqli_real_escape_string($connection,$_POST['cus_name']);
						$cus_address		= mysqli_real_escape_string($connection, $_POST['cus_address']);
						$cus_email			= mysqli_real_escape_string($connection, $_POST['cus_email']);
						$cus_phone			= mysqli_real_escape_string($connection, $_POST['cus_phone']);
						$cus_ref_no		 	= mysqli_real_escape_string($connection, $_POST['cus_ref_no']);
						$cus_contact		= mysqli_real_escape_string($connection, $_POST['cus_ref']);

						
						$image 				= $_FILES['image']['name'];
						$image_tmp 			= $_FILES['image']['tmp_name'];

						move_uploaded_file($image_tmp, "img/customer/" .$image);

						$query = "INSERT INTO customer (emp_code, cus_name, cus_address, cus_email, cus_phone, cus_ref_no, cus_ref, cus_date, image) VALUES ('$emp_code', '$cus_name', '$cus_address', '$cus_email', '$cus_phone', '$cus_ref_no','$cus_contact', now(), '$image') ";

						$add_customer = mysqli_query($connection, $query);

						if (!$add_customer){
							die("Query Faild" . mysqli_error($connection));
						}
						else{
							header("Location: managecustomer.php");
						}
						
					}
					?>
					
					<form action="" method="POST" enctype="multipart/form-data">	
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Emp Code</label>
									<input type="text" name="emp_code" class="form-control" autocomplete="off" required="required">
								</div>
								<div class="form-group">
									<label>Emp Name</label>
									<input type="text" name="cus_name" class="form-control" autocomplete="off" required="required">
								</div>
								
								<div class="form-group">
									<label>Emp Dept</label>
									<select class="form-control" name="cus_address" required>
										<option>--Select--</option>
										<?php 
										$query = "SELECT * FROM department";
										$stst = mysqli_query($connection, $query);
										while( $row = mysqli_fetch_assoc($stst) ){
											echo   $Id    = $row['id'];
											$department  = $row['department'];
											?>  
											<option value="<?php echo $department; ?>"><?php if ($Id){
												echo    $department; } ?></option>
											<?php } ?>                      
										</select>
									</div>
									<div class="form-group">
										<label>Emp email</label>
										<input type="text" name="cus_email" class="form-control" autocomplete="off" >
									</div>
									<div class="form-group">
										<label>Emp ext</label>
										<input type="text" name="cus_phone" class="form-control" autocomplete="off" value="+88 " >
									</div>
								</div>
								<div class="col-md-6">

									<div class="form-group">
										<label>Emp designation</label>
										<input type="text" name="cus_ref_no" class="form-control" autocomplete="off" >
									</div>
									<div class="form-group">
										<label>Emp Manager</label>
										<input type="text" name="cus_ref" class="form-control" autocomplete="off" >
									</div>
									<div class="form-group">
										<label for="exampleFormControlFile1">Upload Akowledgment ( only Jpg )</label>
										<input type="file" class="form-control-file" name="image" > 
									</div>		
								</div>
								<div class="col-md-12">
									<input type="submit" name="add-customer" value="Submit" class="col-md-12 btn btn-primary btn-add-user">
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

