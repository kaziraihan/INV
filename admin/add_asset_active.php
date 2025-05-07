
<?php
include "includes/header.php";
include "includes/search.php";

// Fetch asset by ID
function fetchAssetById($connection, $asset_id) {
    $stmt = $connection->prepare("SELECT * FROM asset_list WHERE id = ?");
    $stmt->bind_param("i", $asset_id);
    $stmt->execute();
    return $stmt->get_result()->fetch_assoc();
}

// Get dropdown options
function getOptions($connection, $table, $id_field, $name_field) {
    $options = [];
    $result = mysqli_query($connection, "SELECT * FROM $table");
    while ($row = mysqli_fetch_assoc($result)) {
        $options[] = $row[$name_field];
    }
    return $options;
}

// Update asset
function updateAsset($connection, $data, $asset_id) {
    $sql = "UPDATE asset_list SET 
        AssetCode = ?, Company = ?, qty = ?, assettype = ?, AssetDescription = ?, 
        PurchaseDate = ?, DepnStartPeriod = ?, DepnEndPeriod = ?, Disposed = ?, 
        SN = ?, Supplier = ?, Remark = ?, Usedby = ?, usedbyid = ?, 
        usedbydept = ?, assigndate = ? WHERE id = ?";

    $stmt = $connection->prepare($sql);
    $stmt->bind_param("ssisssssssssssssi",
        $data['AssetCode'], $data['Company'], $data['qty'], $data['assettype'],
        $data['AssetDescription'], $data['PurchaseDate'], $data['DepnStartPeriod'],
        $data['DepnEndPeriod'], $data['Disposed'], $data['SN'], $data['Supplier'],
        $data['Remark'], $data['Usedby'], $data['usedbyid'],
        $data['usedbydept'], $data['assigndate'], $asset_id
    );

    return $stmt->execute();
}

// Handle update submission
if (isset($_GET['id'])) {
    $asset_id = intval($_GET['id']);
    $asset = fetchAssetById($connection, $asset_id);

    if (!$asset) {
        echo "<div class='alert alert-danger'>Asset not found!</div>";
        exit;
    }

    if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['update_asset'])) {
        $data = array_map('htmlspecialchars', $_POST);
        if (updateAsset($connection, $data, $asset_id)) {
            header("Location: add_asset_active.php");
            exit;
        } else {
            echo "<div class='alert alert-danger'>Error updating asset.</div>";
        }
    }

    // Dropdown values
    $categories = getOptions($connection, "categories", "category_id", "category_name");
    $suppliers = getOptions($connection, "tag", "tag_id", "tag_name");
?>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="card shadow mb-4">
                <div class="card-body">
                    <form method="POST">
                        <div class="row">

                            <?php
                            // Generate form input fields
                            function input($label, $name, $value, $type = 'text', $required = true) {
                                echo "
                                <div class='col-md-6 mb-3'>
                                    <label for='$name'>$label" . ($required ? ": *" : "") . "</label>
                                    <input type='$type' id='$name' name='$name' class='form-control' value='" . htmlspecialchars($value) . "'" . ($required ? " required" : "") . ">
                                </div>";
                            }

                            input("Asset Code", "AssetCode", $asset['AssetCode']);
                            input("Company", "Company", $asset['Company']);
                            input("Quantity", "qty", $asset['qty'], "number");
                            input("Description", "AssetDescription", $asset['AssetDescription']);
                            input("Serial Number", "SN", $asset['SN'], "text", false);
                            input("Remark", "Remark", $asset['Remark'], "text", false);
                            input("Purchase Date", "PurchaseDate", $asset['PurchaseDate'], "date", false);
                            ?>

                            <!-- Asset Type Dropdown -->

                            
                            <div class="col-md-6 mb-3">
                            <label for="DepnStartPeriod">Depreciation Start Period</label>
                                <select name="DepnStartPeriod" id="DepnStartPeriod" class="form-control" required>
                                    <?php
                                    $periods = range(1, 12);
                                    foreach ($periods as $p) {
                                        $val = "P" . $p;
                                        $selected = ($asset['DepnStartPeriod'] === $val) ? 'selected' : '';
                                        echo "<option value=\"$val\" $selected>$val</option>";
                                    }
                                    ?>
                                </select>
                            </div>

                            <div class="col-md-6 mb-3">
                            <label for="DepnStartPeriod">Depreciation End Period</label>
                                <select name="DepnEndPeriod" id="DepnEndPeriod" class="form-control" required>
                                    <?php
                                    $periods = range(1, 12);
                                    foreach ($periods as $p) {
                                        $val = "P" . $p;
                                        $selected = ($asset['DepnEndPeriod'] === $val) ? 'selected' : '';
                                        echo "<option value=\"$val\" $selected>$val</option>";
                                    }
                                    ?>
                                </select>
                            </div>



                            <div class="col-md-6 mb-3">
                                <label for="assettype">Asset Type *</label>
                                <select name="assettype" class="form-control" required>
                                    <option value="<?php echo htmlspecialchars($asset['assettype']); ?>" selected><?php echo htmlspecialchars($asset['assettype']); ?></option>
                                    <?php foreach ($categories as $cat): ?>
                                        <?php if ($cat !== $asset['assettype']) { ?>
                                            <option value="<?php echo $cat; ?>"><?php echo $cat; ?></option>
                                        <?php } ?>
                                    <?php endforeach; ?>
                                </select>
                            </div>

                            <!-- Disposed Dropdown -->
                            <div class="col-md-6 mb-3">
                                <label for="Disposed">Disposed</label>
                                <select name="Disposed" class="form-control">
                                    <option value="0" <?= $asset['Disposed'] == 0 ? 'selected' : '' ?>>Active</option>
                                    <option value="1" <?= $asset['Disposed'] == 1 ? 'selected' : '' ?>>Disposed</option>
                                    <option value="9" <?= $asset['Disposed'] == 9 ? 'selected' : '' ?>>Archived</option>
                                </select>
                            </div>

                            <!-- Supplier Dropdown -->
                            <div class="col-md-6 mb-3">
                                <label for="Supplier">Supplier *</label>
                                <select name="Supplier" class="form-control" required>
                                    <option value="<?php echo htmlspecialchars($asset['Supplier']); ?>" selected><?php echo htmlspecialchars($asset['Supplier']); ?></option>
                                    <?php foreach ($suppliers as $sup): ?>
                                        <?php if ($sup !== $asset['Supplier']) { ?>
                                            <option value="<?php echo $sup; ?>"><?php echo $sup; ?></option>
                                        <?php } ?>
                                    <?php endforeach; ?>
                                </select>
                            </div>

                            <!-- Hidden Fields -->
                            <?php
                            $hiddenFields = ['Usedby', 'usedbyid', 'usedbydept', 'assigndate'];
                            foreach ($hiddenFields as $field) {
                                echo "<input type='hidden' name='$field' value='" . htmlspecialchars($asset[$field]) . "'>";
                            }
                            ?>

                        </div>

                        <div class="row m-2 d-flex justify-content-between">
                            <button type="submit" name="update_asset" class="btn btn-primary col-md-4 mr-4">Update Asset</button>
                            <a href="add_asset_active.php" class="btn btn-secondary col-md-4 ml-4">Cancel</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<?php
}
?>



<!-- asset list showing starts  -->


        <!-- Begin Page Content -->
        <div class="container-fluid">

            <!-- User table start -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">

                    <div class="d-flex justify-content-between align-items-center">
                        <h6 class="m-0 font-weight-bold text-primary">All Active Asset Information</h6>
                        <div class="d-flex align-items-center">

                    <div class="d-flex justify-content-between align-items-center m-1">
                        <script>
                        function filterData(filter) {
                            window.location.href = "?filter=" + filter;
                            
                        }
                         </script>
                        <div>
                            <button onclick="filterData('all')" class="btn btn-outline-primary">All Active Assets</button>
                            <button onclick="filterData('desktop')" class="btn btn-outline-secondary">Desktops</button>
                            <button onclick="filterData('laptop')" class="btn btn-outline-success">Laptops</button>
                            <button onclick="filterData('mobile')" class="btn btn-outline-danger">Mobiles</button>
                            <button onclick="filterData('unused_desktop')" class="btn btn-outline-warning">Unused Desktops</button>
                            <button onclick="filterData('unused_laptop')" class="btn btn-outline-info">Unused Laptops</button>
                        </div>
                    </div>
                            <!-- print page command -->
                        <button onclick="window.print()" class="btn  btn-outline-dark mr-1">Print</button>
  

                            <script>
                                function printPage() {
                                    window.print();
                                }
                            </script>
                            <script>
                                function printDiv(divId) {
                                    var content = document.getElementById(divId).innerHTML;
                                    var originalContent = document.body.innerHTML;

                                    document.body.innerHTML = content;
                                    window.print();
                                    document.body.innerHTML = originalContent;
                                }
                            </script>
                            <!-- print page command ends-->

                            <!-- pdf -->


                            <a href="add_asset.php" class="btn btn-outline-primary mr-2"> See Full list</a>
                            <button type="button" class="btn btn-outline-success" data-toggle="modal" data-target="#assetModal">
                               Add Asset
                            </button>
                        </div>
                    </div>
                </div>








              
    

        


<!-- Asset List Table -->
<div class="table-responsive">
    <table id="sortableAssetTable" class="table table-bordered table-striped">
        <thead class="thead-dark">
            <tr>
                <?php
                $headers = [
                    "#", "AssetCode", "Company", "Qty", "AssetType", "AssetDscpn", 
                    "PurchaseDate", "DepnStartPeriod", "DepnEndPeriod", 
                    "Active?", "S/N", "Supplier", "Remark", "UsedBy", "Actions"
                ];
                foreach ($headers as $index => $header) {
                    echo "<th scope='col' onclick='sortTable($index)'>" . htmlspecialchars($header) . "</th>";
                }
                ?>
            </tr>
        </thead>
        <tbody style="font-size: 1rem;">
            <?php
            $i = 1;
            $filter = $_GET['filter'] ?? 'all';

            $conditions = [
                'desktop' => "assettype = 'Desktop'",
                'laptop' => "assettype = 'Laptop'",
                'mobile' => "assettype = 'Mobile'",
                'unused_desktop' => "assettype = 'Desktop' AND usedbyid = 0",
                'unused_laptop' => "assettype = 'Laptop' AND usedbyid = 0"
            ];

            $where = "WHERE Disposed = 0";
            if (array_key_exists($filter, $conditions)) {
                $where .= " AND " . $conditions[$filter];
            }

            $query = "SELECT * FROM asset_list $where";
            $result = mysqli_query($connection, $query);

            while ($row = mysqli_fetch_assoc($result)) {
                echo "<tr>";
                echo "<td>" . $i++ . "</td>";
                echo "<td><a href='view_asset.php?id=" . htmlspecialchars($row['id']) . "'>" . htmlspecialchars($row['AssetCode']) . "</a></td>";
                echo "<td>" . htmlspecialchars($row['Company']) . "</td>";
                echo "<td>" . htmlspecialchars($row['qty']) . "</td>";
                echo "<td>" . htmlspecialchars($row['assettype']) . "</td>";
                echo "<td>" . htmlspecialchars($row['AssetDescription']) . "</td>";
                echo "<td>" . htmlspecialchars($row['PurchaseDate']) . "</td>";
                echo "<td>" . htmlspecialchars($row['DepnStartPeriod']) . " / " . 
                (new DateTime($row['PurchaseDate']))->modify('+1 months')->format('d-m-Y') . "</td>";
           
                echo "<td>" . htmlspecialchars($row['DepnEndPeriod']) . " / " . 
                (new DateTime($row['PurchaseDate']))->modify('+3 years')->format('d-m-Y') . "</td>";
           
                $status = $row['Disposed'] == 0 ? "Active" : ($row['Disposed'] == 9 ? "Archived" : htmlspecialchars($row['Disposed']));
                echo "<td>$status</td>";

                echo "<td>" . htmlspecialchars($row['SN']) . "</td>";
                echo "<td>" . htmlspecialchars($row['Supplier']) . "</td>";
                echo "<td>" . htmlspecialchars($row['Remark']) . "</td>";

                $usedById = htmlspecialchars($row['usedbyid']);
                $usedByName = !empty($row['Usedby']) ? htmlspecialchars($row['Usedby']) : "Unused";
                echo "<td><a href='managecustomer_active.php?update=$usedById'>$usedByName</a></td>";
                echo "<td>";
                if ($update_role == 1) {
                    echo "<a href='add_asset_active.php?id=" . htmlspecialchars($row['id']) . "' class='btn btn-info btn-sm'><i class='fas fa-edit'></i> Update</a>";
                }
                echo "</td>";
                echo "</tr>";
            }
            ?>
        </tbody>
    </table>
</div>


<!-- JavaScript for Sorting -->
<script>
function sortTable(columnIndex) {
    const table = document.getElementById("sortableAssetTable");
    const tbody = table.querySelector("tbody");
    const rows = Array.from(tbody.querySelectorAll("tr"));
    const header = table.querySelectorAll("th")[columnIndex];
    const isAscending = !header.classList.contains("sort-asc");

    // Reset header classes
    table.querySelectorAll("th").forEach(th => th.classList.remove("sort-asc", "sort-desc"));

    rows.sort((a, b) => {
        const textA = a.children[columnIndex].textContent.trim();
        const textB = b.children[columnIndex].textContent.trim();

        const valA = isNaN(textA) ? textA.toLowerCase() : parseFloat(textA);
        const valB = isNaN(textB) ? textB.toLowerCase() : parseFloat(textB);

        return isAscending ? (valA > valB ? 1 : -1) : (valA < valB ? 1 : -1);
    });

    rows.forEach(row => tbody.appendChild(row));
    header.classList.add(isAscending ? "sort-asc" : "sort-desc");
}
</script>

<style>
    th {
        cursor: pointer;
        user-select: none;
    }
    th.sort-asc::after {
        content: " ▲";
        font-size: 0.8rem;
    }
    th.sort-desc::after {
        content: " ▼";
        font-size: 0.8rem;
    }
</style>







<!-- Begin Page Content -->
<div class="container-fluid">

    <?php
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $AssetCode        = mysqli_real_escape_string($connection, $_POST['AssetCode']);
        $Company          = mysqli_real_escape_string($connection, $_POST['Company']);
        $qty              = (int)$_POST['qty'];
        $assettype        = mysqli_real_escape_string($connection, $_POST['assettype']);
        $AssetDescription = mysqli_real_escape_string($connection, $_POST['AssetDescription']);
        $PurchaseDate     = mysqli_real_escape_string($connection, $_POST['PurchaseDate']);
        $DepnStartPeriod  = mysqli_real_escape_string($connection, $_POST['DepnStartPeriod']);
        $DepnEndPeriod    = mysqli_real_escape_string($connection, $_POST['DepnEndPeriod']);
        $Disposed         = mysqli_real_escape_string($connection, $_POST['Disposed']);
        $SN               = mysqli_real_escape_string($connection, $_POST['SN']);
        $Supplier         = mysqli_real_escape_string($connection, $_POST['Supplier']);
        $Remark           = mysqli_real_escape_string($connection, $_POST['Remark']);
        $UsedBy           = mysqli_real_escape_string($connection, $_POST['UsedBy']);

        $query = "INSERT INTO asset_list 
        (AssetCode, Company, qty, assettype, AssetDescription, PurchaseDate, DepnStartPeriod, DepnEndPeriod, Disposed, Remark, SN, Supplier, UsedBy) 
        VALUES 
        ('$AssetCode', '$Company', $qty, '$assettype', '$AssetDescription', '$PurchaseDate', '$DepnStartPeriod', '$DepnEndPeriod', '$Disposed', '$Remark','$SN', '$Supplier', '$UsedBy')";

        if (mysqli_query($connection, $query)) {
            header("Location: add_asset_active.php");
            exit();
        } else {
            echo "<div class='alert alert-danger'>Error: " . mysqli_error($connection) . "</div>";
        }
        mysqli_close($connection);
    }
    ?>

    <!-- Asset Modal -->
    <div class="modal fade" id="assetModal" tabindex="-1" role="dialog" aria-labelledby="assetModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <form action="add_asset.php" method="post" class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Add New Asset</h5>
                    <button type="button" class="close" data-dismiss="modal"><span>&times;</span></button>
                </div>

                <div class="modal-body">
                    <div class="form-group">
                        <label for="AssetCode">Asset Code *</label>
                        <input type="text" name="AssetCode" id="AssetCode" class="form-control" required>
                    </div>

                    
                    <div class="d-flex flex-wrap gap-3">
                    <div class="form-group flex-fill mr-2">
                    <label for="Company">Company *</label>
                    <select name="Company" id="Company" class="form-control" required>
                        <option value="">Select Company</option>
                        <option value="BDBD" selected>BDBD</option>
                        <option value="NSBD">NSBD</option>
                    </select>
                    </div>

                        <div class="form-group">
                            <label for="qty">Quantity *</label>
                            <input type="number" name="qty" id="qty" class="form-control" value="1" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="assettype">Asset Type *</label>
                        <select name="assettype" id="assettype" class="form-control" required>
                            <option value="">Select Type</option>
                            <?php 
                            $result = mysqli_query($connection, "SELECT * FROM categories");
                            while ($row = mysqli_fetch_assoc($result)) {
                                echo "<option value='{$row['category_name']}'>{$row['category_name']}</option>";
                            }
                            ?>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="AssetDescription">Asset Description</label>
                        <textarea name="AssetDescription" id="AssetDescription" class="form-control" required></textarea>
                    </div>

                    <div class="form-group">
                        <label for="PurchaseDate">Purchase Date *</label>
                        <input type="date" name="PurchaseDate" id="PurchaseDate" class="form-control" required>
                    </div>


                    <div class="d-flex flex-wrap gap-3">
                    <div class="form-group flex-fill mr-2">
                        <label for="DepnStartPeriod">Depreciation Start Period</label>
                        <select name="DepnStartPeriod" id="DepnStartPeriod" class="form-control" required>
                            <option value="">Select Period</option>
                            <option value="P1">P1</option>
                            <option value="P2">P2</option>
                            <option value="P3">P3</option>
                            <option value="P4">P4</option>
                            <option value="P5">P5</option>
                            <option value="P6">P6</option>
                            <option value="P7">P7</option>
                            <option value="P8">P8</option>
                            <option value="P9">P9</option>
                            <option value="P10">P10</option>
                            <option value="P11">P11</option>
                            <option value="P12">P12</option>
                        </select>
                    </div>

                    <div class="form-group flex-fill">
                        <label for="DepnEndPeriod">Depreciation End Period</label>
                        <select name="DepnEndPeriod" id="DepnEndPeriod" class="form-control" required>
                            <option value="">Select Period</option>
                            <option value="P1">P1</option>
                            <option value="P2">P2</option>
                            <option value="P3">P3</option>
                            <option value="P4">P4</option>
                            <option value="P5">P5</option>
                            <option value="P6">P6</option>
                            <option value="P7">P7</option>
                            <option value="P8">P8</option>
                            <option value="P9">P9</option>
                            <option value="P10">P10</option>
                            <option value="P11">P11</option>
                            <option value="P12">P12</option>
                        </select>
                    </div>
                </div>


                            
                    <div class="form-group">
                        <label for="Disposed">Disposed</label>
                        <select name="Disposed" id="Disposed" class="form-control" required>
                            <option value="0">No</option>
                            <option value="1">Yes</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="SN">Serial Number *</label>
                        <input type="text" name="SN" id="SN" class="form-control" required>
                    </div>

                    <div class="form-group">
                        <label for="Supplier">Supplier *</label>
                        <select name="Supplier" id="Supplier" class="form-control" required>
                            <option value="">Select Supplier</option>
                            <?php 
                            $result = mysqli_query($connection, "SELECT * FROM tag");
                            while ($row = mysqli_fetch_assoc($result)) {
                                echo "<option value='{$row['tag_name']}'>{$row['tag_name']}</option>";
                            }
                            ?>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="UsedBy">Used By</label>
                        <select name="UsedBy" id="UsedBy" class="form-control">
                            <option value="">None</option>
                            <?php 
                            $result = mysqli_query($connection, "SELECT * FROM customer");
                            while ($row = mysqli_fetch_assoc($result)) {
                                echo "<option value='{$row['cus_name']}'>{$row['cus_name']}</option>";
                            }
                            ?>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="Remark">Remark</label>
                        <textarea name="Remark" id="Remark" class="form-control"></textarea>
                    </div>
                </div>

                <div class="modal-footer">
                    <input type="submit" class="btn btn-primary" value="Submit">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </form>
        </div>
    </div>

</div>

<?php include "includes/footer.php"; ?>
