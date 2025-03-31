
    
    
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    <canvas id="assetChart" width="400" height="100 "></canvas>
    
    <table class="table table-bordered table-striped">
        <thead class="thead-dark">
            <tr>
                <th>Department</th>
                <th>Desktop</th>
                <th>Laptop</th>
                <th>iPad</th>
                <th>Mobile</th>
            </tr>
        </thead>
        <tbody>
            <?php
            // Fetch data
            $stmt = $connection->prepare("
                SELECT 
                SUM(CASE WHEN a.assettype = 'Desktop' THEN 1 ELSE 0 END) AS desktop_count,
                SUM(CASE WHEN a.assettype = 'Laptop' THEN 1 ELSE 0 END) AS laptop_count,
                SUM(CASE WHEN a.assettype = 'iPad' THEN 1 ELSE 0 END) AS ipad_count,
                SUM(CASE WHEN a.assettype = 'Mobile' THEN 1 ELSE 0 END) AS mobile_count,
                a.usedbydept
                FROM Asset_list a
                GROUP BY a.usedbydept
            ");
            $stmt->execute();
            $result = $stmt->get_result();

            $departments = [];
            $data = ['Desktop' => [], 'Laptop' => [], 'iPad' => [], 'Mobile' => []];
            $totalAssets = ['Desktop' => 0, 'Laptop' => 0, 'iPad' => 0, 'Mobile' => 0];

            while ($row = $result->fetch_assoc()) {
                $departments[] = $row['usedbydept'];
                $data['Desktop'][] = $row['desktop_count'];
                $data['Laptop'][] = $row['laptop_count'];
                $data['iPad'][] = $row['ipad_count'];
                $data['Mobile'][] = $row['mobile_count'];

                $totalAssets['Desktop'] += $row['desktop_count'];
                $totalAssets['Laptop'] += $row['laptop_count'];
                $totalAssets['iPad'] += $row['ipad_count'];
                $totalAssets['Mobile'] += $row['mobile_count'];

                echo "<tr>
                    <td>{$row['usedbydept']}</td>
                    <td>{$row['desktop_count']}</td>
                    <td>{$row['laptop_count']}</td>
                    <td>{$row['ipad_count']}</td>
                    <td>{$row['mobile_count']}</td>
                </tr>";
            }
            $stmt->close();
            ?>
        </tbody>
    </table>

    <script>
        // Pass PHP data to JavaScript
        const departments = <?php echo json_encode($departments); ?>;
        const data = <?php echo json_encode($data); ?>;
        const totalAssets = <?php echo json_encode($totalAssets); ?>;

        // Calculate percentage for each department
        const percentages = {
            Desktop: data.Desktop.map((value) => ((value / totalAssets.Desktop) * 100).toFixed(2)),
            Laptop: data.Laptop.map((value) => ((value / totalAssets.Laptop) * 100).toFixed(2)),
            iPad: data.iPad.map((value) => ((value / totalAssets.iPad) * 100).toFixed(2)),
            Mobile: data.Mobile.map((value) => ((value / totalAssets.Mobile) * 100).toFixed(2)),
        };

        // Chart.js setup
        const ctx = document.getElementById('assetChart').getContext('2d');
        new Chart(ctx, {
            type: 'bar',
            data: {
                labels: departments,
                datasets: [
                    {
                        label: 'Desktop (%)',
                        data: percentages.Desktop,
                        backgroundColor: 'rgba(54, 162, 235, 0.5)',
                        borderColor: 'rgba(54, 162, 235, 1)',
                        borderWidth: 1,
                    },
                    {
                        label: 'Laptop (%)',
                        data: percentages.Laptop,
                        backgroundColor: 'rgba(75, 192, 192, 0.5)',
                        borderColor: 'rgba(75, 192, 192, 1)',
                        borderWidth: 1,
                    },
                    {
                        label: 'iPad (%)',
                        data: percentages.iPad,
                        backgroundColor: 'rgba(255, 206, 86, 0.5)',
                        borderColor: 'rgba(255, 206, 86, 1)',
                        borderWidth: 1,
                    },
                    {
                        label: 'Mobile (%)',
                        data: percentages.Mobile,
                        backgroundColor: 'rgba(255, 99, 132, 0.5)',
                        borderColor: 'rgba(255, 99, 132, 1)',
                        borderWidth: 1,
                    },
                ],
            },
            options: {
                responsive: true,
                plugins: {
                    title: {
                        display: true,
                        text: 'Asset Percentage Distribution by Department',
                    },
                },
                scales: {
                    y: {
                        beginAtZero: true,
                        title: {
                            display: true,
                            text: 'Percentage (%)',
                        },
                    },
                },
            },
        });
    </script>
