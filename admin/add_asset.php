
<?php include "includes/header.php"; ?>



<!-- Update asset list starts  -->

<?php
if (isset($_GET['id'])) {
    $asset_id = intval($_GET['id']);

    // Fetch asset details
    $query = "SELECT * FROM asset_list WHERE id = ?";
    $stmt = $connection->prepare($query);
    $stmt->bind_param("i", $asset_id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $asset = $result->fetch_assoc();
    } else {
        echo "Asset not found!";
        exit;
    }  ?>

    <div class="container-fluid">
        <!-- Content Row -->
        <div class="row">
            <div class="col-md-12">
                <div class="card shadow mb-4">
                    <div class="card-body">
                        <form action="" method="POST">
                            <div class="row">
                                <!-- Asset Code -->
                                <div class="col-md-6 mb-3">
                                    <label for="AssetCode">Asset Code:</label>
                                    <input type="text" id="AssetCode" name="AssetCode" class="form-control" value="<?php echo htmlspecialchars($asset['AssetCode']); ?>" required>
                                </div>

                                <!-- Company -->
                                <div class="col-md-6 mb-3">
                                    <label for="Company">Company:</label>
                                    <input type="text" id="Company" name="Company" class="form-control" value="<?php echo htmlspecialchars($asset['Company']); ?>" required>
                                </div>

                                <!-- Quantity -->
                                <div class="col-md-6 mb-3">
                                    <label for="qty">Quantity:</label>
                                    <input type="number" id="qty" name="qty" class="form-control" value="<?php echo htmlspecialchars($asset['qty']); ?>" required>
                                </div>

                                <!-- Asset Type -->
                                <div class="col-md-6 mb-3">
                                    <label for="assettype">Asset Type:</label>
                                    <input type="text" id="assettype" name="assettype" class="form-control" value="<?php echo htmlspecialchars($asset['assettype']); ?>" required>
                                </div>
                                
                            </div>
                            <div class="row">

                                <!-- Description -->
                                <div class="col-md-6 mb-3">
                                    <label for="AssetDescription">Description:</label>
                                    <input type="text" id="AssetDescription" name="AssetDescription" class="form-control" value="<?php echo htmlspecialchars($asset['AssetDescription']); ?>" required>
                                </div>

                                <!-- Purchase Date -->
                                <div class="col-md-6 mb-3">
                                    <label for="PurchaseDate">Purchase Date:</label>
                                    <input type="date" id="PurchaseDate" name="PurchaseDate" class="form-control" value="<?php echo htmlspecialchars($asset['PurchaseDate']); ?>">
                                </div>

                                <!-- Depreciation Start Period -->
                                <div class="col-md-6 mb-3">
                                    <label for="DepnStartPeriod">Depreciation Start Period:</label>
                                    <input type="date" id="DepnStartPeriod" name="DepnStartPeriod" class="form-control" value="<?php echo htmlspecialchars($asset['DepnStartPeriod']); ?>">
                                </div>

                                <!-- Depreciation End Period -->
                                <div class="col-md-6 mb-3">
                                    <label for="DepnEndPeriod">Depreciation End Period:</label>
                                    <input type="date" id="DepnEndPeriod" name="DepnEndPeriod" class="form-control" value="<?php echo htmlspecialchars($asset['DepnEndPeriod']); ?>">
                                </div>

                                <!-- Disposed -->
                                <div class="col-md-6 mb-3">
                                    <label for="Disposed">Disposed:</label>
                                    <select id="Disposed" name="Disposed" class="form-control">
                                        <option value="0" <?php echo $asset['Disposed'] == 0 ? 'selected' : ''; ?>>Active</option>
                                        <option value="1" <?php echo $asset['Disposed'] == 1 ? 'selected' : ''; ?>>Disposed</option>
                                    </select>
                                </div>

                                <!-- Serial Number -->
                                <div class="col-md-6 mb-3">
                                    <label for="SN">Serial Number:</label>
                                    <input type="text" id="SN" name="SN" class="form-control" value="<?php echo htmlspecialchars($asset['SN']); ?>" required>
                                </div>

                                <!-- Supplier -->
                                <div class="col-md-6 mb-3">
                                    <label for="Supplier">Supplier:</label>
                                    <input type="text" id="Supplier" name="Supplier" class="form-control" value="<?php echo htmlspecialchars($asset['Supplier']); ?>" required>
                                </div>

                                <!-- Remark -->
                                <div class="col-md-6 mb-3">
                                    <label for="Remark">Remark:</label>
                                    <input type="text" id="Remark" name="Remark" class="form-control" value="<?php echo htmlspecialchars($asset['Remark']); ?>">
                                </div>

                                
                            </div>

                            <div class="text-center">
                                <button type="submit" name="update_asset" class="btn btn-primary col-md-12">Update Asset</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <?php 

} else {
   // echo "Invalid Request!";
    //exit;
}

// Handle form submission
if (isset($_POST['update_asset'])) {
    $asset_code = $_POST['AssetCode'];
    $company = $_POST['Company'];
    $qty = $_POST['qty'];
    $asset_type = $_POST['assettype'];
    $description = $_POST['AssetDescription'];
    $purchase_date = $_POST['PurchaseDate'];
    $depn_start = $_POST['DepnStartPeriod'];
    $depn_end = $_POST['DepnEndPeriod'];
    $disposed = $_POST['Disposed'];
    $sn = $_POST['SN'];
    $supplier = $_POST['Supplier'];
    $remark = $_POST['Remark'];
    $used_by = $_POST['Usedby'];

    // Update query
    $update_query = "UPDATE asset_list SET AssetCode = ?, Company = ?, qty = ?, assettype = ?, AssetDescription = ?, PurchaseDate = ?, DepnStartPeriod = ?, DepnEndPeriod = ?, Disposed = ?, SN = ?, Supplier = ?, Remark = ?, Usedby = ? WHERE id = ?";
    $stmt = $connection->prepare($update_query);
    $stmt->bind_param("ssissssssssssi", $asset_code, $company, $qty, $asset_type, $description, $purchase_date, $depn_start, $depn_end, $disposed, $sn, $supplier, $remark, $used_by, $asset_id);

    if ($stmt->execute()) {
        header("Location: add_asset.php");
        exit;
    } else {
        echo "Error updating asset: " . $stmt->error;
    }
}
?>
<!-- asset update ends   -->



<!-- asset list showing starts  -->

<!-- Begin Page Content -->
<div class="container-fluid">
    <div class="ml-.5 text-gray-800 alert alert-secondary">Asset List  / Manage Asset</div>

    <!-- User table start -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">

            <div class="d-flex justify-content-between align-items-center">
                <h6 class="m-0 font-weight-bold text-primary">All Asset Information</h6>
                <div class="d-flex align-items-center">
                     <!-- print page command -->
                     <button onclick="window.print()" class="btn btn-primary btn-sm mr-2">Print</button>
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
                    <a href="add_asset_active.php" class="btn btn-secondary btn-sm mr-2">Active Asset</a>

                    <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#assetModal">
                        Add Asset
                    </button>
                </div>
            </div>

        </div>

        <div class="card-body">
            <div class="col-md-12">
            <table id="sortableAssetTable"  class="table table-responsive table-bordered">
                    <thead class="thead-dark">
                        
                        <tr>
                            <th scope="col" onclick="sortTable(0)">#</th>
                            <th scope="col" onclick="sortTable(1)">AssetCode</th>
                            <th scope="col" onclick="sortTable(2)">Company</th>
                            <th scope="col" onclick="sortTable(3)">Qty</th>
                            <th scope="col" onclick="sortTable(4)">AssetType</th>
                            <th scope="col" onclick="sortTable(5)">AssetDscpn</th>
                            <th scope="col" onclick="sortTable(6)">PurchaseDate</th>
                            <th scope="col" onclick="sortTable(7)">DepnStartPeriod</th>
                            <th scope="col" onclick="sortTable(8)">DepnEndPeriod</th>
                            <th scope="col" onclick="sortTable(9)">Active/Disposed?</th>
                            <th scope="col" onclick="sortTable(10)">S/N</th>
                            <th scope="col" onclick="sortTable(11)">Supplier</th>
                            <th scope="col" onclick="sortTable(12)">Remark</th>
                            <th scope="col" onclick="sortTable(13)">UsedBy</th>
                            <th scope="col"></th>
                                </tr>
                    </thead>
                    <tbody>

                        <?php
                        $i = 1;

                        
                        $query = "SELECT * FROM asset_list"; 

                        
                        $select_customer = mysqli_query($connection, $query);

                        while ($row = mysqli_fetch_assoc($select_customer)) {
                            ?>
                            <tr>
                                <td><?php echo $i++; ?></td>
                                
                                <td><a href="view_asset.php?id=<?php echo $row['id']; ?>">
                                    <?php echo $row['AssetCode']; ?>
                                </a></td>
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
                                <td><?php  echo empty($row['Usedby']) ? 'Unused' : $row['Usedby'];  // echo $row['UsedBy']; ?></td>
                            <!--td><a href="view_asset.php?id=<?php echo $row['id']; ?>"><button
                              class=" btn btn-info btn-sm">View</button></a>
                            </td-->

                            <?php if ($the_role == 1){ ?>
                                <td><a href="add_asset_active.php?id=<?php echo $row['id']; ?>"><button
                                    class="btn btn-info btn-sm">Update</button></a>
                                </td>
                            <?php } ?>

                            

                        </tr>
                        
                    <?php } ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
<!-- JavaScript for Sorting -->
<script>
    function sortTable(columnIndex) {
        const table = document.getElementById("sortableAssetTable");
        const tbody = table.querySelector("tbody");
        const rows = Array.from(tbody.querySelectorAll("tr"));

        // Determine sorting direction
        const header = table.querySelectorAll("th")[columnIndex];
        const isAscending = !header.classList.contains("sort-asc");

        // Remove sorting indicators from all headers
        table.querySelectorAll("th").forEach(th => th.classList.remove("sort-asc", "sort-desc"));

        // Sort rows
        rows.sort((rowA, rowB) => {
            const cellA = rowA.children[columnIndex].textContent.trim();
            const cellB = rowB.children[columnIndex].textContent.trim();

            // Compare as numbers if possible, otherwise as strings
            const compare = isNaN(cellA) || isNaN(cellB)
            ? cellA.localeCompare(cellB)
            : parseFloat(cellA) - parseFloat(cellB);

            return isAscending ? compare : -compare;
        });

        // Append sorted rows back to the table body
        rows.forEach(row => tbody.appendChild(row));

        // Add sorting direction class
        header.classList.add(isAscending ? "sort-asc" : "sort-desc");
    }
</script>

<style>
    th {
        cursor: pointer;
    }
    th.sort-asc::after {
        content: " ▲";
    }
    th.sort-desc::after {
        content: " ▼";
    }
</style>
<!-- User table end -->
</div>
<!-- asset list showing Ends  -->






<!-- asset entry showing starts  -->

<!-- Begin Page Content -->
<div class="container-fluid">

<!-- Button to trigger modal -->

<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $AssetCode = mysqli_real_escape_string($connection, $_POST['AssetCode']);
    $Company = mysqli_real_escape_string($connection, $_POST['Company']);
    $qty = (int)$_POST['qty'];
    $assettype = mysqli_real_escape_string($connection, $_POST['assettype']);
    $AssetDescription = mysqli_real_escape_string($connection, $_POST['AssetDescription']);
    $PurchaseDate = mysqli_real_escape_string($connection, $_POST['PurchaseDate']);
    $DepnStartPeriod = mysqli_real_escape_string($connection, $_POST['DepnStartPeriod']);
    $DepnEndPeriod = mysqli_real_escape_string($connection, $_POST['DepnEndPeriod']);
    $Disposed = mysqli_real_escape_string($connection, $_POST['Disposed']);
    $SN = mysqli_real_escape_string($connection, $_POST['SN']);
    $Supplier = mysqli_real_escape_string($connection, $_POST['Supplier']);
    $Remark = mysqli_real_escape_string($connection, $_POST['Remark']);
    $UsedBy = mysqli_real_escape_string($connection, $_POST['UsedBy']);

        // Insert query
    $query = "INSERT INTO asset_list (AssetCode, Company, qty, assettype, AssetDescription, PurchaseDate, DepnStartPeriod, DepnEndPeriod, Disposed, Remark, SN, Supplier, UsedBy) 
    VALUES ('$AssetCode', '$Company', $qty, '$assettype', '$AssetDescription', '$PurchaseDate', '$DepnStartPeriod', '$DepnEndPeriod', '$Disposed', '$Remark','$SN', '$Supplier', '$UsedBy')";

    if (mysqli_query($connection, $query)) {
        echo "Asset information added successfully!";
            //sleep(3); 
        header("Location: add_asset.php");
    } else {
        echo "Error: " . $query . "<br>" . mysqli_error($connection);
    }

        // Close the connection
    mysqli_close($connection);
}
?>

<!-- Modal structure -->
<div class="modal fade" id="assetModal" tabindex="-1" role="dialog" aria-labelledby="assetModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="assetModalLabel">Add New Customer</h5> |
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <!-- Form inside modal -->
                <form action="add_asset.php" method="post">
                    <div class="form-group">
                        <label>Asset Code</label>
                        <input class="form-control" type="text" id="AssetCode" name="AssetCode" required>
                    </div>
                    <div class="form-group">
                        <label for="Company">Company</label>
                        <select class="form-control" id="Company" name="Company" required>
                             <option value="BDBD">BDBD</option>
                            <option value="NSBD">NSBD</option>
                           
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="qty">Quantity</label>
                        <input class="form-control" type="number" id="qty" name="qty" value="1" required>
                    </div>
                    <div class="form-group">
                        <label for="assettype">Asset Type</label>
                        <select class="form-control" name="assettype" required="">
                            <option>None</option>
                            <?php 
                            $query = "SELECT * FROM categories";
                            $post_tag = mysqli_query($connection, $query);
                            while( $row = mysqli_fetch_assoc($post_tag) ){
                                $category_id    = $row['category_id'];
                                $category_name  = $row['category_name'];
                                ?>  
                                <option value="<?php echo $category_name; ?>"><?php if ($category_id){
                                    echo    $category_name; } ?></option>
                                <?php } ?>                      
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="AssetDescription">Asset Description</label>
                            <textarea class="form-control" id="AssetDescription" name="AssetDescription" required=""></textarea>
                        </div>
                        <div class="form-group">
                            <label for="PurchaseDate">Purchase Date</label>
                            <input class="form-control" type="date" id="PurchaseDate" name="PurchaseDate" required="">
                        </div>
                        <div class="form-group">
                            <label for="DepnStartPeriod">Depreciation Start Period</label>
                            <input class="form-control" type="date" id="DepnStartPeriod" name="DepnStartPeriod" required="">
                        </div>
                        <div class="form-group">
                            <label for="DepnEndPeriod">Depreciation End Period</label>
                            <input class="form-control" type="date" id="DepnEndPeriod" name="DepnEndPeriod" required="">
                        </div>
                        <div class="form-group">
                            <label for="Disposed">Disposed (Yes/No)</label>
                            <select class="form-control" id="Disposed" name="Disposed" required="">
                                <option value="0">No</option>
                                <option value="Yes">Yes</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="Remark">Remark</label>
                            <textarea class="form-control" id="Remark" name="Remark"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="SN">SN</label>
                            <input class="form-control" type="text" id="SN" name="SN" required>
                        </div>
                        <div class="form-group">
                            <label for="Supplier">Supplier</label>
                            <select class="form-control" name="Supplier" required="">
                                <option>None</option>
                                <?php 
                                $query = "SELECT * FROM tag";
                                $post_tag = mysqli_query($connection, $query);
                                while( $row = mysqli_fetch_assoc($post_tag) ){
                                    $tag_id    = $row['tag_id'];
                                    $tag_name  = $row['tag_name'];
                                    ?>  
                                    <option value="<?php echo $tag_name; ?>"><?php if ($tag_id){
                                        echo    $tag_name; } ?></option>
                                    <?php } ?>                      
                                </select>
                            </div>
                            <!-- Make inactive from here -->
                            <div class="form-group">
                                <label for="UsedBy">Used By</label>
                                <select class="form-control" name="UsedBy" >
                                    <option>None</option>
                                    <?php 
                                    $query = "SELECT * FROM customer";
                                    $post_tag = mysqli_query($connection, $query);
                                    while( $row = mysqli_fetch_assoc($post_tag) ){
                                        $id    = $row['id'];
                                        $cus_name  = $row['cus_name'];
                                        ?>  
                                        <option value="<?php echo $cus_name; ?>"><?php if ($id){
                                            echo    $cus_name; } ?></option>
                                        <?php } ?>                      
                                    </select>
                                </div>
                                <!-- Make inactive from here -->

                                <input class="btn btn-primary" type="submit" value="Submit">
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>   
        </div>
    </div>
<!-- End Modal -->
<!-- asset entry ends  -->



<?php include "includes/footer.php"; ?>
