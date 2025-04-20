<?php 
include "includes/header.php"; // Add your header file

?>

<!-- Begin Page Content -->
<div class="container-fluid">
    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800">Employee Asset Assignment</h1>

    <!-- Table Card -->
    <div class="card shadow mb-4">
        <div class="card-header py-3 bg-primary text-white">
            <h6 class="m-0 font-weight-bold">View Assigned Assets</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered table-hover text-center" id="dataTable">
                    <thead class="thead-dark">
                        <tr>
                            <th>#</th>
                            <th>Employee ID</th>
                            <th>Employee Code</th>
                            <th>Employee Name</th>
                            <th>Department</th>
                            <th>Asset ID</th>
                            <th>Asset Code</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $query = "SELECT * FROM temp ORDER BY id DESC";
                        $result = mysqli_query($connection, $query);
                        $i = 1;
                        while ($row = mysqli_fetch_assoc($result)) {
                            echo "<tr>";
                            echo "<td>{$i}</td>";
                            echo "<td>{$row['emp_id']}</td>";
                            echo "<td>{$row['emp_code']}</td>";
                            echo "<td>{$row['emp_name']}</td>";
                            echo "<td>{$row['emp_dept']}</td>";
                            echo "<td>{$row['asset_id']}</td>";
                            echo "<td>{$row['asset_code']}</td>";
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
