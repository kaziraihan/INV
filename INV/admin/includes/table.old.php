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
            SUM(CASE WHEN a.assettype = 'Desktop' AND a.usedbydept = 'Management' THEN 1 ELSE 0 END) AS desktop_count_Management,
            SUM(CASE WHEN a.assettype = 'Laptop' AND a.usedbydept = 'Management' THEN 1 ELSE 0 END) AS laptop_count_Management,
            SUM(CASE WHEN a.assettype = 'iPad' AND a.usedbydept = 'Management' THEN 1 ELSE 0 END) AS ipad_count_Management,
            SUM(CASE WHEN a.assettype = 'mobile' AND a.usedbydept = 'Management' THEN 1 ELSE 0 END) AS mobile_count_Management,

            SUM(CASE WHEN a.assettype = 'Desktop' AND a.usedbydept = 'HR and Administration' THEN 1 ELSE 0 END) AS desktop_count_HR_Admin,
            SUM(CASE WHEN a.assettype = 'Laptop' AND a.usedbydept = 'HR and Administration' THEN 1 ELSE 0 END) AS laptop_count_HR_Admin,
            SUM(CASE WHEN a.assettype = 'iPad' AND a.usedbydept = 'HR and Administration' THEN 1 ELSE 0 END) AS ipad_count_HR_Admin,
            SUM(CASE WHEN a.assettype = 'mobile' AND a.usedbydept = 'HR and Administration' THEN 1 ELSE 0 END) AS mobile_count_HR_Admin,


            SUM(CASE WHEN a.assettype = 'Desktop' AND a.usedbydept = 'IT' THEN 1 ELSE 0 END) AS desktop_count_IT,
            SUM(CASE WHEN a.assettype = 'Laptop' AND a.usedbydept = 'IT' THEN 1 ELSE 0 END) AS laptop_count_IT,
            SUM(CASE WHEN a.assettype = 'iPad' AND a.usedbydept = 'IT' THEN 1 ELSE 0 END) AS ipad_count_IT,
            SUM(CASE WHEN a.assettype = 'mobile' AND a.usedbydept = 'IT' THEN 1 ELSE 0 END) AS mobile_count_IT,

            SUM(CASE WHEN a.assettype = 'Desktop' AND a.usedbydept = 'Shipping' THEN 1 ELSE 0 END) AS desktop_count_Shipping,
            SUM(CASE WHEN a.assettype = 'Laptop' AND a.usedbydept = 'Shipping' THEN 1 ELSE 0 END) AS laptop_count_Shipping,
            SUM(CASE WHEN a.assettype = 'iPad' AND a.usedbydept = 'Shipping' THEN 1 ELSE 0 END) AS ipad_count_Shipping,
            SUM(CASE WHEN a.assettype = 'mobile' AND a.usedbydept = 'Shipping' THEN 1 ELSE 0 END) AS mobile_count_Shipping,

            SUM(CASE WHEN a.assettype = 'Desktop' AND a.usedbydept = 'COP' THEN 1 ELSE 0 END) AS desktop_count_COP,
            SUM(CASE WHEN a.assettype = 'Laptop' AND a.usedbydept = 'COP' THEN 1 ELSE 0 END) AS laptop_count_COP,
            SUM(CASE WHEN a.assettype = 'iPad' AND a.usedbydept = 'COP' THEN 1 ELSE 0 END) AS ipad_count_COP,
            SUM(CASE WHEN a.assettype = 'mobile' AND a.usedbydept = 'COP' THEN 1 ELSE 0 END) AS mobile_count_COP,

            SUM(CASE WHEN a.assettype = 'Desktop' AND a.usedbydept = 'Merchandising' THEN 1 ELSE 0 END) AS desktop_count_Merchandising,
            SUM(CASE WHEN a.assettype = 'Laptop' AND a.usedbydept = 'Merchandising' THEN 1 ELSE 0 END) AS laptop_count_Merchandising,
            SUM(CASE WHEN a.assettype = 'iPad' AND a.usedbydept = 'Merchandising' THEN 1 ELSE 0 END) AS ipad_count_Merchandising,
            SUM(CASE WHEN a.assettype = 'mobile' AND a.usedbydept = 'Merchandising' THEN 1 ELSE 0 END) AS mobile_count_Merchandising,

            SUM(CASE WHEN a.assettype = 'Desktop' AND a.usedbydept = 'License' THEN 1 ELSE 0 END) AS desktop_count_License,
            SUM(CASE WHEN a.assettype = 'Laptop' AND a.usedbydept = 'License' THEN 1 ELSE 0 END) AS laptop_count_License,
            SUM(CASE WHEN a.assettype = 'iPad' AND a.usedbydept = 'License' THEN 1 ELSE 0 END) AS ipad_count_License,
            SUM(CASE WHEN a.assettype = 'mobile' AND a.usedbydept = 'License' THEN 1 ELSE 0 END) AS mobile_count_License,

            SUM(CASE WHEN a.assettype = 'Desktop' AND a.usedbydept = 'Product Development' THEN 1 ELSE 0 END) AS desktop_count_Product_Development,
            SUM(CASE WHEN a.assettype = 'Laptop' AND a.usedbydept = 'Product Development' THEN 1 ELSE 0 END) AS laptop_count_Product_Development,
            SUM(CASE WHEN a.assettype = 'iPad' AND a.usedbydept = 'Product Development' THEN 1 ELSE 0 END) AS ipad_count_Product_Development,
            SUM(CASE WHEN a.assettype = 'mobile' AND a.usedbydept = 'Product Development' THEN 1 ELSE 0 END) AS mobile_count_Product_Development,

            SUM(CASE WHEN a.assettype = 'Desktop' AND a.usedbydept = 'Technical' THEN 1 ELSE 0 END) AS desktop_count_Technical,
            SUM(CASE WHEN a.assettype = 'Laptop' AND a.usedbydept = 'Technical' THEN 1 ELSE 0 END) AS laptop_count_Technical,
            SUM(CASE WHEN a.assettype = 'iPad' AND a.usedbydept = 'Technical' THEN 1 ELSE 0 END) AS ipad_count_Technical,
            SUM(CASE WHEN a.assettype = 'mobile' AND a.usedbydept = 'Technical' THEN 1 ELSE 0 END) AS mobile_count_Technical,

            SUM(CASE WHEN a.assettype = 'Desktop' AND a.usedbydept = 'QA' THEN 1 ELSE 0 END) AS desktop_count_QA,
            SUM(CASE WHEN a.assettype = 'Laptop' AND a.usedbydept = 'QA' THEN 1 ELSE 0 END) AS laptop_count_QA,
            SUM(CASE WHEN a.assettype = 'iPad' AND a.usedbydept = 'QA' THEN 1 ELSE 0 END) AS ipad_count_QA,
            SUM(CASE WHEN a.assettype = 'mobile' AND a.usedbydept = 'QA' THEN 1 ELSE 0 END) AS mobile_count_QA,

            SUM(CASE WHEN a.assettype = 'Desktop' AND a.usedbydept = 'Capacity Planning and Sourcing' THEN 1 ELSE 0 END) AS desktop_count_CCP,
            SUM(CASE WHEN a.assettype = 'Laptop' AND a.usedbydept = 'Capacity Planning and Sourcing' THEN 1 ELSE 0 END) AS laptop_count_CCP,
            SUM(CASE WHEN a.assettype = 'iPad' AND a.usedbydept = 'Capacity Planning and Sourcing' THEN 1 ELSE 0 END) AS ipad_count_CCP,
            SUM(CASE WHEN a.assettype = 'mobile' AND a.usedbydept = 'Capacity Planning and Sourcing' THEN 1 ELSE 0 END) AS mobile_count_CCP,

            SUM(CASE WHEN a.assettype = 'Desktop' AND a.usedbydept = 'Apprentice' THEN 1 ELSE 0 END) AS desktop_count_Apprentice,
            SUM(CASE WHEN a.assettype = 'Laptop' AND a.usedbydept = 'Apprentice' THEN 1 ELSE 0 END) AS laptop_count_Apprentice,
            SUM(CASE WHEN a.assettype = 'iPad' AND a.usedbydept = 'Apprentice' THEN 1 ELSE 0 END) AS ipad_count_Apprentice,
            SUM(CASE WHEN a.assettype = 'mobile' AND a.usedbydept = 'Apprentice' THEN 1 ELSE 0 END) AS mobile_count_Apprentice

            FROM Asset_list a
            ");
$stmt->execute();
$result = $stmt->get_result();

                        // Output data
while ($row = $result->fetch_assoc()) {
    ?>
    <tr>
        <td>Management</td>
        <td><?= htmlspecialchars($row['desktop_count_Management']); ?></td>
        <td><?= htmlspecialchars($row['laptop_count_Management']); ?></td>
        <td><?= htmlspecialchars($row['ipad_count_Management']); ?></td>
        <td><?= htmlspecialchars($row['mobile_count_Management']); ?></td>
    </tr>
    <tr>
        <td>HR and Administration</td>
        <td><?= htmlspecialchars($row['desktop_count_HR_Admin']); ?></td>
        <td><?= htmlspecialchars($row['laptop_count_HR_Admin']); ?></td>
        <td><?= htmlspecialchars($row['ipad_count_HR_Admin']); ?></td>
        <td><?= htmlspecialchars($row['mobile_count_HR_Admin']); ?></td>
    </tr>

    <tr>
        <td>IT</td>
        <td><?= htmlspecialchars($row['desktop_count_IT']); ?></td>
        <td><?= htmlspecialchars($row['laptop_count_IT']); ?></td>
        <td><?= htmlspecialchars($row['ipad_count_IT']); ?></td>
        <td><?= htmlspecialchars($row['mobile_count_IT']); ?></td>
    </tr>
    <tr>
        <td>Shipping</td>
        <td><?= htmlspecialchars($row['desktop_count_Shipping']); ?></td>
        <td><?= htmlspecialchars($row['laptop_count_Shipping']); ?></td>
        <td><?= htmlspecialchars($row['ipad_count_Shipping']); ?></td>
        <td><?= htmlspecialchars($row['mobile_count_Shipping']); ?></td>
    </tr>

    <tr>
        <td>COP</td>
        <td><?= htmlspecialchars($row['desktop_count_COP']); ?></td>
        <td><?= htmlspecialchars($row['laptop_count_COP']); ?></td>
        <td><?= htmlspecialchars($row['ipad_count_COP']); ?></td>
        <td><?= htmlspecialchars($row['mobile_count_COP']); ?></td>
    </tr>

    <tr>
        <td>Merchandise ( Main range )</td>
        <td><?= htmlspecialchars($row['desktop_count_Merchandising']); ?></td>
        <td><?= htmlspecialchars($row['laptop_count_Merchandising']); ?></td>
        <td><?= htmlspecialchars($row['ipad_count_Merchandising']); ?></td>
        <td><?= htmlspecialchars($row['mobile_count_Merchandising']); ?></td>
    </tr>

    <tr>
        <td>Merchandise ( NS Brand )</td>
        <td><?= htmlspecialchars($row['desktop_count_License']); ?></td>
        <td><?= htmlspecialchars($row['laptop_count_License']); ?></td>
        <td><?= htmlspecialchars($row['ipad_count_License']); ?></td>
        <td><?= htmlspecialchars($row['mobile_count_License']); ?></td>
    </tr>

    <tr>
        <td>Product Development</td>
        <td><?= htmlspecialchars($row['desktop_count_Product_Development']); ?></td>
        <td><?= htmlspecialchars($row['laptop_count_Product_Development']); ?></td>
        <td><?= htmlspecialchars($row['ipad_count_Product_Development']); ?></td>
        <td><?= htmlspecialchars($row['mobile_count_Product_Development']); ?></td>
    </tr>

    <tr>
        <td>Technical</td>
        <td><?= htmlspecialchars($row['desktop_count_Technical']); ?></td>
        <td><?= htmlspecialchars($row['laptop_count_Technical']); ?></td>
        <td><?= htmlspecialchars($row['ipad_count_Technical']); ?></td>
        <td><?= htmlspecialchars($row['mobile_count_Technical']); ?></td>
    </tr>

    <tr>
        <td> Capacity, Planning & Sourcing</td>
        <td><?= htmlspecialchars($row['desktop_count_CCP']); ?></td>
        <td><?= htmlspecialchars($row['laptop_count_CCP']); ?></td>
        <td><?= htmlspecialchars($row['ipad_count_CCP']); ?></td>
        <td><?= htmlspecialchars($row['mobile_count_CCP']); ?></td>
    </tr>
    <tr>
        <td> QA</td>
        <td><?= htmlspecialchars($row['desktop_count_QA']); ?></td>
        <td><?= htmlspecialchars($row['laptop_count_QA']); ?></td>
        <td><?= htmlspecialchars($row['ipad_count_QA']); ?></td>
        <td><?= htmlspecialchars($row['mobile_count_QA']); ?></td>
    </tr>

    <tr>
        <td> Apprentice</td>
        <td><?= htmlspecialchars($row['desktop_count_Apprentice']); ?></td>
        <td><?= htmlspecialchars($row['laptop_count_Apprentice']); ?></td>
        <td><?= htmlspecialchars($row['ipad_count_Apprentice']); ?></td>
        <td><?= htmlspecialchars($row['mobile_count_Apprentice']); ?></td>
    </tr>

    <?php
}
$stmt->close();
?>
</tbody>
</table>

