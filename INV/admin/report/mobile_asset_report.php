<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Asset Report</title>
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
            </div>
        </div> <?php
                // Create a DateTime object and set the timezone to Asia/Dhaka (UTC+6)
                $datetime = new DateTime('now', new DateTimeZone('Asia/Dhaka'));
                
                // Get the current date in the desired format
                $current_date = $datetime->format('D-d-m-Y'); // Format as YYYY-MM-DD

                ?>

        <table id="assetTable" class="table table-bordered">
        <p>Next Sourcing Service limited <br> Mobile_asset_report<br><?php echo "Printed : " . htmlspecialchars(string:$current_date); ?> Printed by : 
        <?php include "../includes/login.php"; echo $_SESSION['fname']; ?></p>  
            <thead class="thead-dark">
                <tr>
                    <th>#</th>
                    <th>AssetCode</th>
                    <th>Company</th>
                    <th>Qty</th>
                    <th>AssetType</th>
                    <th>AssetDscpn</th>
                    <th>PurchaseDate</th>
                    <th>DepnStartPeriod</th>
                    <th>DepnEndPeriod</th>
                    <th>Active?</th>
                    <th>S/N</th>
                    <th>Supplier</th>
                    <th>Remark</th>
                    <th>UsedBy</th>
                </tr>
            </thead>
            <tbody>
                <?php
                include "../../includes/db.php";
                $query = "SELECT * FROM asset_list WHERE Disposed = 0 AND assettype = 'Mobile'";
                $result = mysqli_query($connection, $query);
                $i = 1;
                while ($row = mysqli_fetch_assoc($result)) { ?>
                    <tr>
                        <td><?php echo $i++; ?></td>
                        <td><?php echo $row['AssetCode']; ?></td>
                        <td><?php echo $row['Company']; ?></td>
                        <td><?php echo $row['qty']; ?></td>
                        <td><?php echo $row['assettype']; ?></td>
                        <td><?php echo $row['AssetDescription']; ?></td>
                        <td><?php echo $row['PurchaseDate']; ?></td>
                        <td><?php echo $row['DepnStartPeriod']; ?></td>
                        <td><?php echo $row['DepnEndPeriod']; ?></td>
                        <td><?php if ( $row['Disposed']== 0){  echo 'Active';} elseif ( $row['Disposed']== 9){  echo 'Archived';} else {echo $row['Disposed']; }; ?> </td>      
                        <td><?php echo $row['SN']; ?></td>
                        <td><?php echo $row['Supplier']; ?></td>
                        <td><?php echo $row['Remark']; ?></td>
                        <td><?php echo empty($row['Usedby']) ? 'Unused' : $row['Usedby']; ?></td>
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
            doc.save("Asset_Report.pdf");
        }
    </script>
</body>
</html>
