
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