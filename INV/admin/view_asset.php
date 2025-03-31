    <?php include "includes/header.php"; ?>

<div class="container-fluid">
    <div class="ml-.5 text-gray-800 alert alert-secondary">View Asset Details</div>



    <?php
    // Check if the asset ID is set in the URL and update the usedby array
    if (isset($_GET['id'])) {
        $asset_id = mysqli_real_escape_string($connection, $_GET['id']);

        // Query to fetch the asset details
        $query = "SELECT * FROM asset_list WHERE id = '$asset_id'";
        $result = mysqli_query($connection, $query);

        if ($result && mysqli_num_rows($result) > 0) {
            $asset = mysqli_fetch_assoc($result);

            // Handle form submission
            if ($_SERVER['REQUEST_METHOD'] === 'POST') {
                $new_used_by = mysqli_real_escape_string($connection, $_POST['used_by']);

                // Shift "UsedBy" values
                $usedby2 = $asset['Usedby'];
                $usedby3 = $asset['Usedby2'];
                $usedby4 = $asset['Usedby3'];
                $usedby5 = $asset['Usedby4'];
                $usedby6 = $asset['Usedby5'];
                $usedby7 = $asset['Usedby6'];
                $usedby8 = $asset['Usedby7'];
                $usedby9 = $asset['Usedby8'];
                $usedby10 = $asset['Usedby9'];

                // Update query with fixed syntax
                $update_query = "
                    UPDATE asset_list 
                    SET 
                        Usedby = '$new_used_by', 
                        Usedby2 = '$usedby2', 
                        Usedby3 = '$usedby3',
                        Usedby4 = '$usedby4', 
                        Usedby5 = '$usedby5',
                        Usedby6 = '$usedby6',
                        Usedby7 = '$usedby7',
                        Usedby8 = '$usedby8',
                        Usedby9 = '$usedby9',
                        Usedby10 = '$usedby10'
                    WHERE id = '$asset_id'
                ";
                               
                if (mysqli_query($connection, $update_query)) {
                    echo "<div class='alert alert-success'>The 'Used By' field has been updated successfully.</div>";

                    // Refresh asset details
                    $result = mysqli_query($connection, $query);
                    $asset = mysqli_fetch_assoc($result);
                } else {
                    echo "<div class='alert alert-danger'>Error updating the 'Used By' field: " . mysqli_error($connection) . "</div>";
                }

            }

            // Fetch customer names for the dropdown
            $customer_query = "SELECT cus_name FROM customer";
            $customer_result = mysqli_query($connection, $customer_query);
            ?>

            <!-- Asset Details Card -->
            <div class="card shadow mb-4">

            <div class="card-header py-3 d-flex align-items-center justify-content-between ">
            <h6 class="m-0 font-weight-bold text-primary col-md-10">Asset Details</h6>
       
 <!-- Button to trigger modal -->
 <!-- condition if the disposed is = 0 -->
<?php 
// Fetch asset names for the dropdown
//echo $asset_id;
$asset_query = "SELECT Disposed FROM asset_list WHERE id = '$asset_id'";
$asset_result = mysqli_query($connection, $asset_query);

while ($row = mysqli_fetch_assoc($asset_result)) {
    //echo $row['Disposed'];

    
    // Check if the asset is not disposed
    if ($row['Disposed'] == 0) {
        // Display the 'Assign' button
        echo '
        <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#updateUsedByModal">
            Assign
        </button>';
    }   
    }
?>
<!--update button-->
<?php if ($update_role == 1){ ?>
    <td>
        <a href="add_asset_active.php?id=<?php echo $asset_id; ?>">
            <button class="btn btn-info btn-sm">Update</button>
        </a>
    </td>
<?php } ?>
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
    
</div>

<div class="card-body">
<ul class="list-group">
                        <!--li class="list-group-item"><strong>Asset ID:</strong> <?php echo $asset['id']; ?></li-->
                        <li class="list-group-item"><strong>Asset Code:</strong> <?php echo $asset['AssetCode']; ?></li>
                        <li class="list-group-item"><strong>Company:</strong> <?php echo $asset['Company']; ?></li>
                        <li class="list-group-item"><strong>Quantity:</strong> <?php echo $asset['qty']; ?></li>
                        <li class="list-group-item"><strong>Asset Type:</strong> <?php echo $asset['assettype']; ?></li>
                        <li class="list-group-item"><strong>Description:</strong> <?php echo $asset['AssetDescription']; ?></li>
                        <li class="list-group-item"><strong>Purchase Date:</strong> <?php echo $asset['PurchaseDate']; ?></li>
                        <li class="list-group-item"><strong>SN:</strong> <?php echo $asset['SN']; ?></li>
                        <li class="list-group-item"><strong>Supplier:</strong> <?php echo $asset['Supplier']; ?></li>
                        <li class="list-group-item"><strong>Depn End Period:</strong> <?php echo $asset['DepnEndPeriod']; ?></li>
                        <li class="list-group-item"><strong>Used By:</strong> <?php echo empty($asset['Usedby']) ? 'Unused' : htmlspecialchars($asset['Usedby']);?></li>
                        <li class="list-group-item"><strong>Assiged date:</strong> <?php echo $asset['assigndate']; ?></li>
                  <ul> 
   
            </div>
        </div>

            <div class="card shadow mb-4">
            <div class="card-header py-3 d-flex align-items-center justify-content-between">
            <h6 class="m-0 font-weight-bold text-primary">Additional Details</h6>
         
            </div>
                <div class="card-body">
                    <ul class="list-group">
                        <li class="list-group-item"><strong>Used By 2:</strong> <?php echo htmlspecialchars($asset['Usedby2'] ?? ''); ?></li>
                        <li class="list-group-item"><strong>Used By 3:</strong> <?php echo htmlspecialchars($asset['Usedby3'] ?? ''); ?></li>
                        <li class="list-group-item"><strong>Used By 4:</strong> <?php echo htmlspecialchars($asset['Usedby4'] ?? ''); ?></li>
                        <li class="list-group-item"><strong>Used By 5:</strong> <?php echo htmlspecialchars($asset['Usedby5'] ?? ''); ?></li>
                        <li class="list-group-item"><strong>Used By 6:</strong> <?php echo htmlspecialchars($asset['Usedby6'] ?? ''); ?></li>
                        <li class="list-group-item"><strong>Used By 7:</strong> <?php echo htmlspecialchars($asset['Usedby7'] ?? ''); ?></li>
                        <li class="list-group-item"><strong>Used By 8:</strong> <?php echo htmlspecialchars($asset['Usedby8'] ?? ''); ?></li>
                        <li class="list-group-item"><strong>Used By 9:</strong> <?php echo htmlspecialchars($asset['Usedby9'] ?? ''); ?></li>
                        <li class="list-group-item"><strong>Used By 10:</strong> <?php echo htmlspecialchars($asset['Usedby10'] ?? '');?></li> 
                    </ul>
                </div>
             </div>

            <!-- Update "Used By" Modal -->
   
<!-- Update "Used By" Modal -->
<div class="modal fade" id="updateUsedByModal" tabindex="-1" aria-labelledby="updateUsedByModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="updateUsedByModalLabel">Update "Used By"</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form method="POST" action="">
                <div class="modal-body">
                    <div class="form-group">
                        <label for="used_by">Select User:</label>
                        <select id="used_by" name="used_by" class="form-control" required>
                            <option value="">-- Select User --</option>
                            <?php
                            $query = "SELECT emp_code, cus_name, cus_ref_no FROM customer WHERE status = '1'";
                            $result = mysqli_query($connection, $query);
                            
                            while ($row = mysqli_fetch_assoc($result)) {
                                $cus_id = $row['emp_code'];
                                $cus_name = $row['cus_name'];
                                $cus_desi = $row['cus_ref_no'];
                                echo "<option value='{$cus_name}'>{$cus_id}-{$cus_name}-{$cus_desi}</option>";
                            }
                            ?>
                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Update</button>
                </div>
            </form>
        </div>
    </div>
</div>

<?php
        } else {
            echo "<div class='alert alert-danger'>No asset found with this ID.</div>";
        }
    } else {
        echo "<div class='alert alert-warning'>Asset ID not specified.</div>";
    }
    ?>







<?php
// Find the ID of the employee (customer) who will be assigned the asset
$get_emp_id = "SELECT * FROM customer WHERE cus_name = '$new_used_by' LIMIT 1";
$result = mysqli_query($connection, $get_emp_id);

// Initialize a variable to store the customer ID
$customer_id = null;

// Check if the query returned any results
if (mysqli_num_rows($result) > 0) {
    // Loop through the result set (likely a single row due to LIMIT 1)
    while ($row = mysqli_fetch_assoc($result)) {
        $customer_id = $row['id'];
        $customer_dept  =  $row['cus_address'];
        echo "Emp ID: " . $customer_id . "<br>";
        echo " Emp designation : " .$customer_dept. "<br>";
    }
} else {
    // echo "No customer found with the name: $new_used_by<br>";
}

// Handle the POST request for updating the asset_list table
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if ($customer_id !== null) {
        // Sanitize the customer ID
        $current_emp_id = mysqli_real_escape_string($connection, $customer_id);

        // Sanitize the customer ID
        $current_dept = mysqli_real_escape_string($connection, $customer_dept);
              
        // Create a DateTime object and set the timezone to Asia/Dhaka (UTC+6)
        $datetime = new DateTime('now', new DateTimeZone('Asia/Dhaka'));
        
        // Get the current date in the desired format
        $current_date = $datetime->format('Y-m-d'); // Format as YYYY-MM-DD

        // showing the current date in the desired format
        echo "Today's date in UTC+6 timezone: " . $current_date;
      
        // updating the datebase the current date in the desired format
        $update_query1 = "UPDATE asset_list SET assigndate = '$current_date' WHERE id = '$asset_id'";
       
        // updating the datebase the current emp ID 
        $update_query = "UPDATE asset_list SET usedbyid = '$current_emp_id' WHERE id = '$asset_id'";

         // updating the datebase the current emp department
         $update_query2 = "UPDATE asset_list SET usedbydept = '$current_dept' WHERE id = '$asset_id'";


        // Execute the update query for emp ID to usedbyid
        if (mysqli_query($connection, $update_query)) {
           // echo "Asset assigned successfully to Employee ID: $current_emp_id<br>";
        } else {
           // echo "Error updating asset: " . mysqli_error($connection) . "<br>";
        }

        // Execute the update date query to assigndate
        if (mysqli_query($connection, $update_query1)) {
           // echo "date assigned successfully to Employee ID: $current_emp_id<br>";
        } else {
          //  echo "Error updating asset: " . mysqli_error($connection) . "<br>";
        }

         // Execute the update date query to departmetn
         if (mysqli_query($connection, $update_query2)) {
            // echo "date assigned successfully to Employee ID: $current_emp_id<br>";
         } else {
           //  echo "Error updating asset: " . mysqli_error($connection) . "<br>";
         }

    } else {
        echo "Cannot process request. No valid customer ID found.<br>";
    }
}
// End of ID finding
?>





<?php if ($revoke_role == 1){ ?>
<!-- Check if the delete parameter is set in the URL -->
<a href="view_asset.php?delete=<?php echo $asset_id; ?>" class="btn btn-danger btn-sm">Revoke</a>
<?php } ?>
<?php
// revoking the assigned asset to he wrong emp
if (isset($_GET['delete'])) {

    $revoke_id = $_GET['delete'];
    // Update query to clear the 'Usedby + usedbyid  and date 
    $update_query = "UPDATE asset_list SET Usedby = NULL WHERE id = '$revoke_id'";
    $update_query1 = "UPDATE asset_list SET usedbyid = NULL WHERE id = ' $revoke_id'";
    $update_query2 = "UPDATE asset_list SET usedbydept = NULL WHERE id = ' $revoke_id'";
    // echo $revoke_id;
    $result = mysqli_query($connection, $update_query);
    $result1 = mysqli_query($connection, $update_query1);
    $result2 = mysqli_query($connection, $update_query2);
    if (!$result) {
        die("Query Failed: " . mysqli_error($connection));

    } else {
        // Redirect back to the view_asset.php page
        echo "<div class='alert alert-warning'>Asset revoked.</div>";
       
        header("Location:view_asset.php?id=$revoke_id");

       
        exit;
    }
}
?>











</div>


<?php include "includes/footer.php"; ?>
