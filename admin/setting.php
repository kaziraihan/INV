<?php include "includes/header.php"; ?>

<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Page Heading -->
	<h1 class="h3 mb-4 text-gray-800"></h1>

	<div class="row">
		<div class="col-md-12">

			<!-- Basic Card Example -->
			<?php if( $the_role != '1'){
				header("Location: dashboard.php");
			} ?>
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">Settings</h6>
				</div>
				<div class="card-body">
					<div class="row">
						<div class="col-md-4">
							<label>Edit Banner</label>
							<?php 
							if (isset($_POST['yesbanner'])){
								echo 	$the_banner = $_POST['postbanner'];
								$query = "UPDATE theme SET banner='$the_banner'";
								$select_banner = mysqli_query($connection,$query);
								$query = "UPDATE theme SET banner='$the_banner'";
								
							}

							?>
							<form action="" method="POST" class="form-group d-flex">

								<input type="text" name="postbanner" class="form-control" >
								<input type="submit" name="yesbanner" class="btn btn-<?php echo $theme; ?> btn-sm ml-2" value="Save">

							</form>
						</div>
						<div class="col-md-4">
							<label>Exchange Rate : </label>
							<?php 
							if (isset($_POST['addrate'])){
								$query2 = "UPDATE exchange_rate SET status='0' WHERE status = '1'";
								$Set_disable = mysqli_query($connection,$query2);
								$inputrate = $_POST['inputrate'];
								$query = "INSERT INTO exchange_rate (rate, status) VALUES ('$inputrate','1')";
								
								$set_rate = mysqli_query($connection,$query);

								

							}
							?>
							<form action="" method="POST" class="form-group d-flex">
								<input type="text" name="inputrate" class="form-control" >
								
								<input type="submit" name="addrate" class="btn btn-primary btn-sm ml-2" value="Save">
							</form>
							
							<table class="table table-dark">
								<thead>
									<th>Rate</th>
									<th>Status</th>
								</thead>
								<tbody>
									<?php 
									$query = "SELECT * FROM exchange_rate   ORDER BY id DESC LIMIT 5";
									$stmt = mysqli_query($connection, $query);
									while( $row = mysqli_fetch_assoc($stmt) ){
										$id   = $row['id'];
										$rate   = $row['rate'];
										$status = $row['status'];
										?>  
										
										<tr>
											<td><?php echo $rate; ?></td>
											<td><?php if($status == '1'){ echo 'Enabled';}	else { echo 'Disabled';} ?></td>
											
										</tr>
										</tbody><?php } ?>
									</table>

									
								</div>	
								<div class="col-md-4">
									<label>Choose a new theme. Current is <?php echo $theme; ?></label>
									<?php 
									if (isset($_POST['Yes'])){
										$the_theme = $_POST['theme'];
										$query = "UPDATE theme SET theme='$the_theme'";
										$selct_theme = mysqli_query($connection,$query);

										if (!$selct_theme){
											die("Query Faild" . mysqli_error($connection));
										}
										else{

											header("Location: setting.php");
										}
									}
									?>
									<?php 
									$query        = "SELECT * FROM theme ";
									$select_theme = mysqli_query($connection, $query);
									while($row=mysqli_fetch_assoc($select_theme)){
										$theme = $row['theme']; }
										
										?>
										<form method="POST" class="d-flex">
											<select class="form-control" name="theme">
												
												<option value="primary">Blue</option>
												<option value="dark">Dark</option>
												<option value="info">Cyan</option>
												<option value="warning">Yellow</option>
												<option value="success">Green</option>
												<option value="danger">Red</option>

											</select>
											<input  type="submit" name="Yes" class="btn btn-<?php echo $theme; ?> btn-sm ml-2" value="Set">
										</form>
									</div>
								</div>

								<hr>
								<div><a href="backup.php" class="btn btn-primary btn-sm">Database backup</a></div>
							</div>
						</div>
					</div>
				</div>

			</div>
			<!-- /.container-fluid -->

		</div>
		<!-- End of Main Content -->

		<?php include "includes/footer.php"; ?>

		