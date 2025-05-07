<?php include"../includes/db.php"; ?>

<?php
  ob_start();
  session_start();
   $the_role = $_SESSION['role'];
   $the_user = $_SESSION['uname'];
  if(!$the_role){
  header("Location: ../index.php");
  }
?>

<?php  // Prepare and execute the query for restriction based on the update role
$query = "SELECT * FROM users WHERE username = '$the_user'";
$stmt = $connection->prepare($query);
$stmt->execute();
$result = $stmt->get_result(); // Fetch the result set

// Fetch the update_role value if $the_role matches
if ($the_role == $_SESSION['role']) {
    $user_data = $result->fetch_assoc(); // Fetch the first row
    if ($user_data) {
        $update_role = $user_data['update_role'];
        $delete_role = $user_data['delete_role'];
        $revoke_role	= $user_data['revoke_role'];
        $assign_role	= $user_data['assign_role'];
    } else {
        echo "No user data found.";
    }
} else {
    echo "Role mismatch.";
}
?>


<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Dashboard</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.css" rel="stylesheet">


<!-- DataTables CSS -->
<link href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css" rel="stylesheet">

<!-- DataTables JS -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>



</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <?php include "navbar.php"; ?>



