<?php 
include "includes/header.php"; 
include "../includes/db.php"; 

// Check if the session is set
if (!isset($_SESSION['role'])) {
    die("Access Denied: Role not set.");
}
$the_role = $_SESSION['role'];
?>


<!-- Begin Page Content -->
<div class="container-fluid">
<!-- Content Row -->
<div class="row">

<!--search here -->
<?php include "includes/search.php";  ?>
<!--search here -->
<hr>


<!-- Cards Section -->
<?php
function fetchTotal($connection, $sql) {
    $result = $connection->query($sql); 
    return ($result->num_rows > 0) ? $result->fetch_assoc()['total_qty'] : 0;
}

$asset_types = ['Total Device' => "", 'Desktop' => "Desktop", 'Laptop' => "Laptop", 'IPAD' => "IPAD", 'Smartphone' => "Mobile", 'Printer' => "Printer"];
foreach ($asset_types as $label => $type):
    $sql = ($type === "") 
    ? "SELECT SUM(qty) AS total_qty FROM asset_list WHERE disposed = '0'"
    : "SELECT SUM(qty) AS total_qty FROM asset_list WHERE assettype = '$type' AND disposed = '0'";
    $total_qty = fetchTotal($connection, $sql);
    ?>
    <div class="col-xl-2 col-md-6 mb-2">
        <div class="card border-left-primary shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-primary text-uppercase mb-1"><?php echo $label; ?></div>
                        <div class="h5 mb-0 font-weight-bold text-gray-800">
                            <?php echo "Total quantity: $total_qty"; ?>
                        </div>
                    </div>
                    <div class="col-auto">
                        <i class="fas fa-calendar fa-2x text-gray-300"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php endforeach; ?>
</div>




<!-- Content Row -->
<div class="row">
    <div class="col-md-12">
        <div class="card shadow mb-4">
            <div class="card-body">
                <!-- table  starts -->     
                <?php include "includes/table.php";  ?>
                <!-- Table Ends -->
            </div>
        </div>
    </div>
</div>

</div></div>

<?php include "includes/footer.php"; ?>
