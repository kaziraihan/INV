<?php 
include "includes/header.php"; 
include "../includes/db.php"; 

if (!isset($_SESSION['role'])) {
    die("Access Denied: Role not set.");
}
$the_role = $_SESSION['role'];
?>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Search Bar -->
    <div class="row">
        <div class="col-md-12">
            <?php include "includes/search.php"; ?>
        </div>
    </div>

     <!-- Dashboard Cards -->
     <div class="col-md-12">
     <div class="card shadow mb-4">
     <div class="card-body">
       <div class="d-flex"> 
            <?php
        function fetchTotal($connection, $sql) {
            $result = $connection->query($sql); 
            return ($result->num_rows > 0) ? $result->fetch_assoc()['total_qty'] : 0;
        }

        $asset_types = [
            'Total Device' => '',
            'Desktop' => 'Desktop',
            'Laptop' => 'Laptop',
            'iPad' => 'iPad',
            'Smartphone' => 'mobile',
            'Printer' => 'Printer'
        ];

        $icons = [
            'Total Device' => 'fas fa-boxes',
            'Desktop' => 'fas fa-desktop',
            'Laptop' => 'fas fa-laptop',
            'iPad' => 'fas fa-tablet-alt',
            'Smartphone' => 'fas fa-mobile-alt',
            'Printer' => 'fas fa-print'
        ];

        foreach ($asset_types as $label => $type):
            $sql = ($type === "") 
            ? "SELECT SUM(qty) AS total_qty FROM asset_list WHERE disposed = '0'"
            : "SELECT SUM(qty) AS total_qty FROM asset_list WHERE assettype = '$type' AND disposed = '0'";
            $total_qty = fetchTotal($connection, $sql);
        ?>
            <div class="col-xl-2 col-md-4 mb-4">
                <div class="card border-left-primary shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-primary text-uppercase mb-1"><?= $label; ?></div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $total_qty ?: 0; ?></div>
                            </div>
                            <div class="col-auto">
                                <i class="<?= $icons[$label]; ?> fa-2x text-gray-300"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <?php endforeach; ?>
        </div>
        </div>
        </div>
    </div>
    

     <!-- Department-wise Breakdown Table -->
    
    <div class="col-md-12">
        <div class="card shadow mb-4">
            <div class="card-header py-3 bg-primary">
                <h6 class="m-0 font-weight-bold text-white">Department-Wise Device Distribution</h6>
            </div>
            <div class="card-body">
                <?php include "includes/chart.php"; ?>
                
            </div>
        </div>
    </div>
    

   
</div>
<!-- End of Container -->

<?php include "includes/footer.php"; ?>
