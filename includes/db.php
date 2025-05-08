
<?php
	
	$connection = mysqli_connect("localhost", "root", "", "rootsystem");

	if ( $connection ){
		//echo "Database Connected";
	}
	else{
		die("Database Connection Failed". mysqli_error($connection));
	}

?>

