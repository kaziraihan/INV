<?php include "includes/header.php"; ?>

<!-- Begin Page Content -->
<div class="container-fluid">
    <!-- Page Heading -->
    
    <!-- Table Card -->
    <div class="card shadow mb-4">
        <div class="card-header py-3 bg-primary text-white">
            <h6 class="m-0 font-weight-bold">Assigned Assets Summary</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered table-hover text-left" id="dataTable">
                 
                    <tbody>
                        <?php
                        $query = "
                            SELECT aa.*, al.AssetCode 
                            FROM asset_assigned AS aa
                            LEFT JOIN asset_list AS al ON aa.asset_id = al.id
                            WHERE aa.asset_id != '0'
                            ORDER BY aa.id DESC
                        ";

                        $result = mysqli_query($connection, $query);
                        $i = 1;

                        while ($row = mysqli_fetch_assoc($result)) {
                            echo "<tr>";
                           // echo "<td>{$i}</td>";
                            echo "<td>On {$row['date_created']}, device [{$row['AssetCode']}] was assigned to {$row['emp_code']} {$row['emp_name']}, from: {$row['emp_dept']}.</td>";
                            echo "</tr>";
                            $i++;
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<?php include "includes/footer.php"; ?>
