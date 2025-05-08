<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>percentage_asset_report</title>
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
                $current_date = $datetime->format('d-m-Y'); // Format as DD-MM-YYYY
                ?>
            </div>
        </div>

        <table id="assetTable" class="table table-bordered">
            <p><b>Next Sourcing Service limited</b><br>percentage_asset_report<br><?php echo "Printed : " . htmlspecialchars($current_date); ?> Printed by : 
            <?php include "../includes/login.php"; echo $_SESSION['fname']; ?></p>

            <?php
            // Query to get the department-wise asset type count
            $query = "
                SELECT 
                    dept.cus_address AS department, 
                    a.assettype, 
                    COUNT(a.assettype) AS asset_count,
                    (COUNT(a.assettype) / (SELECT COUNT(*) FROM asset_list WHERE usedbyid IN (SELECT id FROM customer WHERE cus_address = dept.cus_address))) * 100 AS percentage
                FROM asset_list a
                INNER JOIN customer dept ON a.usedbyid = dept.id
                GROUP BY dept.cus_address, a.assettype
                ORDER BY dept.cus_address, a.assettype;
            ";

            $result = mysqli_query($connection, $query);
            ?>

            <div class="container">
                <table class="table table-bordered col-lg-12">
                    <thead>
                        <tr>
                            <th>Department</th>
                            <th>Asset Type</th>
                            <th>Asset Count</th>
                            <th>Percentage</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        // Output the results
                        while ($row = mysqli_fetch_assoc($result)) {
                            echo "<tr>";
                            echo "<td>" . htmlspecialchars($row['department']) . "</td>";
                            echo "<td>" . htmlspecialchars($row['assettype']) . "</td>";
                            echo "<td>" . htmlspecialchars($row['asset_count']) . "</td>";
                            echo "<td>" . number_format($row['percentage'], 2) . "%</td>";
                            echo "</tr>";
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        </table>
    </div>

    <script>
        function downloadPDF() {
            const { jsPDF } = window.jspdf;
            let doc = new jsPDF({ orientation: "landscape", format: "a3" });
            doc.text("percentage_asset_report", 14, 15);
            doc.autoTable({
                html: "#assetTable",
                startY: 20,
                theme: 'grid'
            });
            doc.save("percentage_asset_report.pdf");
        }
    </script>
</body>
</html>
