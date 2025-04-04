<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Emp Report</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.23/jspdf.plugin.autotable.min.js"></script>
    <style>
        @media print {
            .no-print { display: none !important; }
            table { width: 100%; border-collapse: collapse; }
            th, td { border: 1px solid black; padding: 5px; text-align: left; }
        }
    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="d-flex justify-content-between align-items-center no-print">
          
            <div>
           
                <button onclick="window.print()" class="btn btn-success btn-sm mr-2">Print</button>
                <button onclick="downloadPDF()" class="btn btn-danger btn-sm">Download PDF</button>
                <?php
                // Create a DateTime object and set the timezone to Asia/Dhaka (UTC+6)
                $datetime = new DateTime('now', new DateTimeZone('Asia/Dhaka'));
                
                // Get the current date in the desired format
                $current_date = $datetime->format('D-d-m-Y'); // Format as YYYY-MM-DD

                ?>
            </div>
        </div>

        <table id="assetTable" class="table table-bordered">
        <p><b> Next Sourcing Service limited </b><br> Active Emp List<br><?php echo "Printed : " . htmlspecialchars(string:$current_date); ?> Printed by : 
        <?php include "../includes/login.php"; echo $_SESSION['fname']; ?></p> 
        
            <thead class="thead-dark">
                <tr>
                    <th>#</th>
                    <th>EMP</th>
                    <th>Name</th>
                    <th>Dept</th>
                    <th>Designation</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Manager</th>
                    <th>Created/by</th>
                    <th>Updated/by</th>           
                    <th>Asset(s)</th>
                    <th>Status?</th>

                </tr>
            </thead>
            <tbody>
                <?php
                include "../../includes/db.php";
                $query = "SELECT * FROM customer WHERE status = 1";
                $result = mysqli_query($connection, $query);
                $i = 1;
                while ($row = mysqli_fetch_assoc($result)) { ?>
                    <tr>
                        <td><?php echo $i++; ?></td>
                        <td><?php echo $row['emp_code']; ?></td>
                        <td><?php echo $row['cus_name']; ?></td>
                        <td><?php echo $row['cus_address']; ?></td>
                        <td><?php echo $row['cus_ref_no']; ?></td>
                        <td><?php echo $row['cus_email']; ?></td>
                        <td><?php echo $row['cus_phone']; ?></td>
                        <td><?php echo $row['cus_ref']; ?></td>
                        <td><?php echo $row['cus_date']; ?></td>
                        <td><?php echo $row['date_updated']; ?></td>
                       
                        <td>
                                    <?php
                                    $asset_stmt = $connection->prepare("SELECT id, usedbyid, AssetCode FROM Asset_list WHERE usedbyid = ?");
                                    $asset_stmt->bind_param("i", $row['id']);
                                    $asset_stmt->execute();
                                    $asset_result = $asset_stmt->get_result();
                                    while ($asset_row = $asset_result->fetch_assoc()) { 
                                    $asset_id_based_on_customer_id = $asset_row['id'];
                                        ?>
                                    <a href="view_asset.php?id=<?php echo  $asset_id_based_on_customer_id; ?>"> 
                                        <li class="list-group-item"><?= htmlspecialchars($asset_row['AssetCode']); ?></li>
                                    </a>
                                       
                                    <?php }
                                    $asset_stmt->close();
                                    ?>
                        </td>
                        <td><?= $row['status'] == '1' ? 'Active' : 'Deactive'; ?></td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>

    <script>
        function downloadPDF() {
            const { jsPDF } = window.jspdf;
            let doc = new jsPDF({ orientation: "landscape", format: "a3" });
            doc.text("Asset Report", 14, 15);
            doc.autoTable({
                html: "#assetTable",
                startY: 20,
                theme: 'grid'
            });
            doc.save("Active_emp_report.pdf");
        }
    </script>
</body>
</html>
