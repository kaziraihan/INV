    <?php include "includes/header.php"; ?>


<?php
    // Check if the assign button is pressed
    if (isset($_GET['assign'])) {
        $cus_get_id = intval($_GET['assign']); // Ensure ID is an integer
        "Emp ID: " . $cus_get_id . "<br>";

        // Prepare statement to fetch employee's details
        $stmt = $connection->prepare("SELECT * FROM customer WHERE id = ?");
        $stmt->bind_param("i", $cus_get_id);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows > 0) {
            echo "<h3>Employee Details:</h3>";
            while ($row = $result->fetch_assoc()) {
                $cus_id = htmlspecialchars($row['id']);
                $cus_code = htmlspecialchars($row['emp_code']);
                $cus_name = htmlspecialchars($row['cus_name']);
                $cus_address = htmlspecialchars($row['cus_address']);
                $cus_email = htmlspecialchars($row['cus_email']);

                 echo "Customer ID: $cus_id<br>";
                 echo "Employee Code: $cus_code<br>";
                 echo  "Employee Name: $cus_name<br>";
                 echo "Customer Address: $cus_address<br>";
                 echo "Customer Email: $cus_email<br>";

                // Insert the employee data into the `temp` table
                $insert_query = "INSERT INTO temp (emp_id, emp_code, emp_name, emp_dept, asset_code, asset_id, status) VALUES (?, ?, ?, ?, ?, ?, ?)";
                $stmt1 = $connection->prepare($insert_query);

                $asset_code = "AssetCode123"; // Example asset code
                $asset_id = "AssetID123";    // Example asset ID
                $status = "Assigned";        // Example status
                $stmt1->bind_param("issssss", $cus_get_id,$cus_code, $cus_name, $cus_address, $asset_code, $asset_id, $status);

                if ($stmt1->execute()) {
                    echo "<div>Asset record inserted successfully!</div>";
                    header(header: "Location: assign.php");
                } else {
                    echo "<div class='alert alert-danger'>Failed to insert asset record.</div>";
                }

                $stmt1->close();
            }
          
        } else {
            echo "<div class='alert alert-warning'>No details found for this employee. Please provide valid data.</div>";
        }
        $stmt->close();
    }
    ?>



<div class="container-fluid">
   
    <?php
    // Check for GET parameter to load employee data for update
    if (isset($_GET['update'])) {
    $cus_get_id = intval($_GET['update']); // Ensure ID is an integer

    // Prepare statement to fetch employee data
    $stmt = $connection->prepare("SELECT * FROM customer WHERE id = ?");
    $stmt->bind_param("i", $cus_get_id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        ?>

<hr>
        <div class="row">
            <div class="col-md-12">
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Update Employee Information</h6>
                    </div>
                    <div class="card-body ml-4">
                        <form action="" method="POST" enctype="multipart/form-data">
                            <input type="hidden" name="cus_id" value="<?= htmlspecialchars($cus_get_id); ?>">
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label>Emp Name</label>
                                    <input type="text" name="cus_name" class="form-control" value="<?= htmlspecialchars($row['cus_name']); ?>" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label>Emp Code</label>
                                    <input type="text" name="emp_code" class="form-control" value="<?= htmlspecialchars($row['emp_code']); ?>" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label>Emp Email</label>
                                    <input type="email" name="cus_email" class="form-control" value="<?= htmlspecialchars($row['cus_email']); ?>" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label>Emp Phone</label>
                                    <input type="text" name="cus_phone" class="form-control" value="<?= htmlspecialchars($row['cus_phone']); ?>" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label>Designation</label>
                                    <input type="text" name="cus_ref_no" class="form-control" value="<?= htmlspecialchars($row['cus_ref_no']); ?>" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label>Manager</label>
                                    <input type="text" name="cus_ref" class="form-control" value="<?= htmlspecialchars($row['cus_ref']); ?>" required>
                                </div>     
                                                          
                                <div class="form-group col-md-6">
                                    <label>Status</label>
                                    <div class="form-check form-switch d-flex">
                                    <input class="form-control" type="checkbox" name="status" id="statusSwitch" value="1" <?= $row['status'] == '1' ? 'checked' : ''; ?>>
                                    <label class="form-control" for="statusSwitch">
                                        <?= $row['status'] == '1' ? 'Active' : 'Deactive'; ?>
                                    </label>
                                    </div>
                                </div>
                                <script>
                                document.getElementById("statusSwitch").addEventListener("change", function() {
                                    this.nextElementSibling.textContent = this.checked ? "Active" : "Deactive";
                                    this.value = this.checked ? "1" : "0"; // Ensure correct value is sent in the form
                                });
                                </script>
                                <div class="form-group col-md-6">
                                    <label>Emp Dept</label>
                                     <select class="form-control" name="cus_address" required>
                                    <option><?php echo htmlspecialchars($row['cus_address']); ?></option>
                                        <?php 
                                        $query = "SELECT * FROM department";
                                        $stst = mysqli_query($connection, $query);
                                        while( $row = mysqli_fetch_assoc($stst) ){
                                            echo   $Id    = $row['id'];
                                            $department  = $row['department'];
                                            ?>  
                                           <option value="<?php echo $department; ?>"><?php if ($Id){
                                                echo    $department; } ?></option>
                                            <?php } ?>                      
                                       </select>
                                </div>
                                
                                <div class="form-group col-md-6">
                                    <Br/>
                                    <section class="">Using :</section> 
                                    <?php 
                               $cus_get_id;
                                        
                                // Use a prepared statement for security
                                $query = "SELECT * FROM asset_list WHERE usedbyid = '$cus_get_id'";
                                $stmt = mysqli_prepare($connection, $query);

                                // Execute the prepared statement
                                mysqli_stmt_execute($stmt);

                                // Get the result
                                $result = mysqli_stmt_get_result($stmt);

                                // Fetch and display the data
                                while ($row = mysqli_fetch_assoc($result)) {
                                         "Asset ID: " . $row['id'] . "<br>";
                                         "Used By ID: " . $row['usedbyid'] . "<br>";
                                         "Used By: " . $row['Usedby'] . "<br>";
                                     "Useing : " . $asset_code =  $row['AssetCode'] . "";  // Displaying all the information from each row
                               
                                ?>
                               
                                <!-- this is showing the asset name by ID for the asset that under emoloyees -->
                                 <a class ="btn btn-primary btn-sm m-1" href="view_asset.php?id=<?php echo  $row['id']; ?>"> 
                                       <?= htmlspecialchars($asset_code) ?>
                                </a>

                                <?php
                                }
                                ?>

                               
                                </div>
                               
                               </div>
                            <div class="row m-1">
                                <button type="submit" name="update-customer" class="col-md-4 btn btn-primary btn-add-user">Update Employee Data</button>
                                <a href="managecustomer_active.php" class="col-md-4 btn btn-secondary btn-add-user">Cancel</a>
                            </div> 
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <?php
    } else {
        echo "<div class='alert alert-danger'>No employee found with this ID.</div>";
    }
    $stmt->close();
}
?>







<?php
// Update Employee Data in Database
if (isset($_POST['update-customer'])) {
    // Ensure all inputs are properly sanitized
    $cus_id = intval($_POST['cus_id']); // Ensure ID is an integer
    $cus_name = trim($_POST['cus_name']);
    $emp_code = trim($_POST['emp_code']);
    $cus_address = trim($_POST['cus_address']);
    $cus_email = trim($_POST['cus_email']);
    $cus_phone = trim($_POST['cus_phone']);
    $cus_ref_no = trim($_POST['cus_ref_no']);
    $cus_ref = trim($_POST['cus_ref']);
    $asset = trim($_POST['asset']);
    $status = intval($_POST['status']); // Ensure status is numeric

    // Validate required fields
    if (empty($cus_name) || empty($emp_code) || empty($cus_address) || empty($cus_email) || empty($cus_phone)) {
        echo "<div class='alert alert-danger'>All fields are required.</div>";
        exit;
    }

    // Validate email format
    if (!filter_var($cus_email, FILTER_VALIDATE_EMAIL)) {
        echo "<div class='alert alert-danger'>Invalid email format.</div>";
        exit;
    }

    // Validate phone number format (adjust regex as needed)
    if (!preg_match('/^\+?\d{10,15}$/', $cus_phone)) {
        echo "<div class='alert alert-danger'>Invalid phone number format. Please enter a valid phone number.</div>";
        exit;
    }

    // Use prepared statement to update data
    $stmt = $connection->prepare("UPDATE customer SET 
        cus_name = ?, 
        cus_address = ?, 
        emp_code = ?, 
        cus_email = ?, 
        cus_phone = ?, 
        cus_ref_no = ?, 
        cus_ref = ?, 
        asset = ?, 
        date_updated = NOW(), 
        status = ? 
        WHERE id = ?");

    // Bind the parameters correctly
    $stmt->bind_param("ssssssssii", 
        $cus_name, 
        $cus_address, 
        $emp_code, 
        $cus_email, 
        $cus_phone, 
        $cus_ref_no, 
        $cus_ref, 
        $asset, 
        $status, 
        $cus_id
    );

    // Execute the statement and handle success/failure
    if ($stmt->execute()) {
        header("Location: managecustomer_active.php?update_success=1");
        exit;
    } else {
        echo "<div class='alert alert-danger'>Failed to update customer information. Please try again later.</div>";
        error_log("MySQL Error: " . $stmt->error); // Log the error
    }

    // Close the statement
    $stmt->close();
}
?>

<!-- update part is ends here -->


<div class="card-header py-3 d-flex justify-content-between align-items-center">
    
        
       
    
</div>



<!-- Display All Employees -->

<!-- script for js table sorting -->
<script>
    function searchTable() {
        let input = document.getElementById("searchInput").value.toLowerCase();
        let table = document.getElementById("sortableTable");
        let rows = table.getElementsByTagName("tr");

        for (let i = 1; i < rows.length; i++) { // Start from 1 to skip table header
            let rowData = rows[i].textContent.toLowerCase();
            rows[i].style.display = rowData.includes(input) ? "" : "none";
        }
    }
</script>
<!-- script for js table sorting ends -->

    
<div class="row">
    <div class="col-md-12">
        <div class="card shadow mb-4">
        <div class="card-header py-3 d-flex justify-content-between align-items-center">
            <h6 class="m-0 pl-3 font-weight-bold text-primary">
                All Emp Information
                <?php if ($_SESSION['user_role'] == '1'): ?>
                    <a href="add_customer.php" class="btn btn-dark btn-sm ml-3">Add Emp</a>
                <?php endif; ?>
        <!-- print page command -->
            <button onclick="window.print()" class="justify-content-right btn btn-primary btn-sm mr-2">Print</button>
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
            </h6>
            
      



            <!-- button for JS table search -->
            <input type="text" id="searchInput" class="form-control w-25 font-weight text-primary" placeholder="Search Employee..." onkeyup="searchTable()">
        </div>

            <div class="card-body">
                <table id="sortableTable" class="table table-responsive table-bordered">
                    <thead class="thead-dark">
                        <tr>
                            <th onclick="sortTable(0)">#</th>
                            <th onclick="sortTable(1)">EMP</th>
                            <th onclick="sortTable(2)">Name</th>
                            <th onclick="sortTable(3)">Dept</th>
                            <th onclick="sortTable(6)">Designation</th>
                            <th onclick="sortTable(4)">Email</th>
                            <th onclick="sortTable(5)">Phone</th>
                            <th onclick="sortTable(7)">Manager</th>
                            <th onclick="sortTable(8)">Asset(s)</th>
                            <th onclick="sortTable(9)">Status</th>
                            <th>Created/by</th>
                            <th>Updated/by</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody style="font-size: 0.9rem;">
                        <?php
                        
                        $stmt = $connection->prepare("SELECT * FROM customer WHERE status = '1' ORDER BY cus_name ASC");

                        $stmt->execute();
                        $result = $stmt->get_result();
                        $i = 1;

                        while ($row = $result->fetch_assoc()) {
                            ?>
                            <tr>
                                <td><?= $i++; ?></td>
                                <td><?= htmlspecialchars($row['emp_code']); ?></td>
                                <td><?= htmlspecialchars($row['cus_name']); ?></td>
                                <td><?= htmlspecialchars($row['cus_address']); ?></td>
                                <td><?= htmlspecialchars($row['cus_ref_no']); ?></td>
                                <td><?= htmlspecialchars($row['cus_email']); ?></td>
                                <td>0<?= htmlspecialchars($row['cus_phone']); ?></td>
                                <td><?= htmlspecialchars($row['cus_ref']); ?></td>
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
                                <td><?= $row['cus_date'] . ' by ' . $the_user; ?></td>
                                <td><?= $row['date_updated'] . ' by ' . $the_user; ?></td>
                                <td>
                                    <div class="btn-group">
                                        <?php if ($assign_role == 1){ ?>                                            
                                            <a href="managecustomer_active.php?assign=<?= $row['id']; ?>" class="btn btn-secondary btn-sm">Assign</a>
                                        <?php } ?>
                                        <?php if ($update_role == 1){ ?>                                            
                                            <a href="managecustomer_active.php?update=<?= $row['id']; ?>" class="btn btn-primary btn-sm">Update</a>
                                        <?php } ?>
                                        <?php if ($delete_role == 1){ ?>
                                            <a href="managecustomer_active.php?delete=<?= $row['id']; ?>" class="btn btn-danger btn-sm">Delete</a>
                                        <?php } ?>
                                    </div>
                                </td>
                            </tr>
                            <?php
                        }
                        $stmt->close();
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<!-- JavaScript for Sorting -->
<script>
    function sortTable(columnIndex) {
        const table = document.getElementById("sortableTable");
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





<?php
// Delete Employee
if (isset($_GET['delete'])) {
    $cus_id = $_GET['delete'];

    $stmt = $connection->prepare("DELETE FROM customer WHERE id = ?");
    $stmt->bind_param("i", $cus_id);

    if ($stmt->execute()) {
        header("Location: managecustomer_active.php");
        exit;
    } else {
        echo "<div class='alert alert-danger'>Failed to delete employee.</div>";
    }
    $stmt->close();
}
?>



    </tbody>
</table>
</div>
</div>




















<?php include "includes/footer.php"; ?>
