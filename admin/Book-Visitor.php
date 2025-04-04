<?php include "includes/header.php";?>

<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Page Heading -->
	<h1 class="h3 mb-4 text-gray-800"></h1>

	<div class="row">
		<div class="col-md-12">

			<!-- Basic Card Example -->
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">Visitor Logbook	</div>

				<div class="card-body">
					<!-- Button trigger modal -->
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
						Book a visiting entry
					</button>
					<?php 

				if (isset($_POST['submit']))
	{
		//$id				  = mysqli_real_escape_string($connection, $_POST['id']);
		$Visitor_name	= mysqli_real_escape_string($connection,$_POST['Visitor_name']);
		$Visitor_from   			= mysqli_real_escape_string($connection,$_POST['Visitor_from']);
		$Email_address		= mysqli_real_escape_string($connection,$_POST['Email_address']);
		$Phone_Number 			= mysqli_real_escape_string($connection,$_POST['Phone_Number']);
		$In_time 			  = mysqli_real_escape_string($connection,$_POST['In_time']);
		$Am_Pm 			  = mysqli_real_escape_string($connection,$_POST['Am_Pm']);
		$Card_Number	 			= mysqli_real_escape_string($connection,$_POST['Card_Number']);

		
		$query = "INSERT INTO vms (Visitor_name,Visitor_from,Email_address,Phone_Number,In_time,Am_Pm,Card_Number) VALUES ('$Visitor_name', '$Visitor_from', '$Email_address','$Phone_Number','$In_time','$Am_Pm','$Card_Number')";

			$add_post = mysqli_query($connection, $query);
			
			if (!$add_post){
				die("Query Faild" . mysqli_error($connection));
			}
			else{
				header("Location: vms.php");
			}
		
	}


					?>
					<!-- Modal -->
					<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel">Visit booking form
									<button type="button" class="close" data-dismiss="modal" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<!-- PHP Form inside Modal -->
									<form action="" method="POST">
										<div class="form-group">
											
											<input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Visitors' Name" name="Visitor_name">
											
										</div>
										<div class="form-group">
									
											<input type="text" class="form-control" id="exampleInputPassword1" placeholder="Visitors' from " name="Visitor_from">
										</div>
										<div class="form-group">
											
											<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Email address" name="Email_address">
										
										</div>
										<div class="form-group">
										
											<input type="text" class="form-control" id="exampleInputPassword1" placeholder="Phone Number" name="Phone_Number">
										</div>
										<div class="form-group d-flex">
										
											<input type="text" class="form-control col-md-10" id="exampleInputEmail1" aria-describedby="In_time " placeholder="Appointment time" name="In_time">
											<select name="Am_Pm" id="Am_Pm"class="form-control col-md-2" >
												  <option value="AM">AM</option>
												  <option value="PM">PM</option>
												  
												</select>

												
										</div>
										
										<div class="form-group">
										
											<input type="text" class="form-control" id="exampleInputPassword1" placeholder="Card Number" name="Card_Number">
										</div>
										<button type="submit" name="submit" class="btn btn-primary">Proceed to next</button>
									</form>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
								</div>
							</div>
						</div>
					</div>


				</div>

			</div>
		</div>
	</div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<?php include "includes/footer.php"; ?>

