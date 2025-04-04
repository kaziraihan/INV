<?php

	include"../../includes/db.php";
	session_start();
			
	if ( isset($_POST['login']) ){
		$username = $_POST['username'];
		$password = $_POST['password'];
		$role 	  = $_POST['role'];

		$username = mysqli_real_escape_string($connection, $username);
		$password = mysqli_real_escape_string($connection, $password);

		$hassedPass = sha1($password);

		$query = "SELECT * FROM users WHERE username = '$username' ";
		$select_user = mysqli_query($connection, $query);

		while ( $row = mysqli_fetch_array($select_user) ){
			$_SESSION['id'] 		= $row['id'];
			$_SESSION['uname'] 		= $row['username'];
			$_SESSION['upass'] 		= $row['password'];
			$_SESSION['fname'] 		= $row['fname'];
			$_SESSION['uemail'] 	= $row['email'];
			$_SESSION['user_role'] 	= $row['user_role'];
			$_SESSION['avater'] 	= $row['avater'];
			$_SESSION['role'] 		= $role;
		}

		if ( $_SESSION['uname'] != $username && $_SESSION['upass'] != $hassedPass && $_SESSION['user_role'] != $admin )
		{
			header("Location: ../index.php");
		}
		else if ($_SESSION['uname'] == $username && $_SESSION['upass'] == $hassedPass && $_SESSION['role'] == $_SESSION['user_role'] )
		{
			header("Location: ../dashboard.php");
		}
		
		else if ($_SESSION['uname'] == $username && $_SESSION['upass'] == $hassedPass && $_SESSION['role'] == $_SESSION['user_role'] )
		{
			header("Location: ../dashboard.php");
		}
		else{
			header("Location: ../index.php");
		}

	}


?>