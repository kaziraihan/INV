<?php
// Query to get the department-wise asset type count
$query = "
      SELECT 
                        dept.cus_address AS department, 
                        a.assettype, 
                        COUNT(a.assettype) AS asset_count,
                        (COUNT(a.assettype) * 100.0 / 
                            NULLIF(
                                (SELECT COUNT(*) 
                                FROM asset_list 
                                WHERE usedbyid IN (
                                    SELECT id 
                                    FROM customer 
                                    WHERE cus_address = dept.cus_address
                                )
                                ), 0)
                        ) AS percentage
                    FROM asset_list a
                    INNER JOIN customer dept ON a.usedbyid = dept.id 
                    WHERE dept.status = 1
                    GROUP BY dept.cus_address, a.assettype
                    ORDER BY dept.cus_address, a.assettype;
                ";

$result = mysqli_query($connection, $query);
?>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    <div class="container">
       
        <div class="row">
            <div class="col-12">
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
                        // Collect data for chart
                        $departments = [];
                        $asset_counts = [];
                        $percentages = [];

                        while ($row = mysqli_fetch_assoc($result)) {
                            echo "<tr>";
                            echo "<td>" . htmlspecialchars($row['department']) . "</td>";
                            echo "<td>" . htmlspecialchars($row['assettype']) . "</td>";
                            echo "<td>" . htmlspecialchars($row['asset_count']) . "</td>";
                            echo "<td>" . number_format($row['percentage'], 2) . "%</td>";
                            echo "</tr>";

                            // Store data for the chart
                            $departments[] = htmlspecialchars($row['department']) . " - " . htmlspecialchars($row['assettype']);
                            $asset_counts[] = $row['asset_count'];
                            $percentages[] = $row['percentage'];
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Chart -->
        <div class="row mt-5">
            <div class="col-12">
                <canvas id="assetChart"></canvas>
            </div>
        </div>
    </div>

    <script>
        // Create chart
        var ctx = document.getElementById('assetChart').getContext('2d');
        var assetChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: <?php echo json_encode($departments); ?>, // Labels for each department and asset type
                datasets: [{
                    label: 'Asset Count',
                    data: <?php echo json_encode($asset_counts); ?>, // Asset count values
                    backgroundColor: 'rgba(54, 162, 235, 0.2)',
                    borderColor: 'rgba(54, 162, 235, 1)',
                    borderWidth: 1
                }, {
                    label: 'Percentage',
                    data: <?php echo json_encode($percentages); ?>, // Percentage values
                    backgroundColor: 'rgba(255, 99, 132, 0.2)',
                    borderColor: 'rgba(255, 99, 132, 1)',
                    borderWidth: 1
                }]
            },
            options: {
                responsive: true,
                plugins: {
                    legend: {
                        position: 'top',
                    },
                    tooltip: {
                        mode: 'index',
                        intersect: false,
                    }
                },
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    </script>
