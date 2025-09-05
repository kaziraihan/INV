<?php include "includes/header.php"; ?>


<?php
if (isset($_GET['update'])) {
    $cus_get_id = intval($_GET['update']);
    $stmt = $connection->prepare("SELECT * FROM customer WHERE id = ?");
    $stmt->bind_param("i", $cus_get_id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $image = htmlspecialchars($row['image']);
        ?>

 <div class="container-fluid py-4">

    <!-- Company Logo -->
    <div class="text-right mb-4">
        <img src="img/logo/Logo.png" alt="Company Logo" class="img-fluid" style="max-width: 350px;">
    </div>

    <!-- Company Name & Title -->
    <div class="text-center mb-4">
        <h2 class="fw-bold mb-0">Next Sourcing Services Limited</h2>
        <h4 class="fw-bold">
            <b>C</b>ompany <span class="fw-normal"><b>E</b>quipments</span> 
            <b>R</b>eceive <span class="fw-normal"><b>F</b>orm</span>
        </h4>
    </div>

    <!-- Employee Info -->
    <div class="row mb-3">
        <div class="col-md-6">
            <p><strong>Date:</strong> 2-Sep-25</p>
            <p><strong>EMP Code:</strong>  <?= htmlspecialchars($row['emp_code']); ?></p>
            <p><strong>Name:</strong>  <?= htmlspecialchars($row['cus_name']); ?></p>
            <p><strong>Designation:</strong><?= htmlspecialchars($row['cus_ref_no']); ?></p>
            <p><strong>Department:</strong> <?= htmlspecialchars($row['cus_address']); ?></p>
            <p><strong>Emp type (NHC or Repl):</strong>
                <?php 
                $emp_type = $row['emp_type'];
                if ($emp_type == "0") {
                    echo "New HC";
                } else {
                    $query = "SELECT emp_code, cus_name FROM customer WHERE id = '$emp_type'";
                    $result = mysqli_query($connection, $query);
                    if ($result && mysqli_num_rows($result) > 0) {
                        $customer = mysqli_fetch_assoc($result);
                        echo htmlspecialchars($customer['emp_code']) . " - " . htmlspecialchars($customer['cus_name']);
                    } else {
                        echo "Unknown ID ($emp_type)";
                    }
                }
                ?>
            </p>
        </div>
    </div>

    <!-- Equipment Table -->
    <div class="table-responsive mb-4">
        <table class="table table-bordered align-left text-left">
            <thead class="table-light">
                <tr>
                    <th style="width:5%">SI</th>
                    <th style="width:20%">Particulars</th>
                    <th style="width:35%">Details</th>
                    <th style="width:10%">Quantity</th>
                    <th style="width:30%">Remarks</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><?php $i = 1; echo $i ; ?></td>
                    <td>iPad</td>
                    <td>
                        

                     <?php
                                echo $cus_get_id;
                                $query = "SELECT * FROM asset_list WHERE usedbyid = '$cus_get_id'";
                                $stmt = mysqli_prepare($connection, $query);
                                mysqli_stmt_execute($stmt);
                                $result = mysqli_stmt_get_result($stmt);

                                while ($row = mysqli_fetch_assoc($result)) {
                                    $asset_code = $row['AssetCode'];
                                    $asset_type = $row['assettype'];
                                    $assigndate = $row['assigndate'];
                                    ?>
                                    <a class="btn m-1" href="view_asset.php?id=<?= $row['id']; ?>">
                                        <?= htmlspecialchars($asset_code, ) ?>
                                    </a> 
                                    <?= htmlspecialchars($asset_type) ?>, Assigned on <?= htmlspecialchars($assigndate) ?><br>
                                    
                                <?php } $i++?>

                    </td>
                    <td>1</td>
                    <td>New, Aug 2025 purchase</td>
                </tr>
                <!-- Add more rows as needed -->
            </tbody>
        </table>
    </div>

    <!-- Declaration -->
    <div class="mb-4">
        <p>I hereby confirm that above listed properties are under my possession from today onward and I will pay back book value in case of wastage, losses due to my negligence.</p>
        <p>Upon termination of employment contract, I will return company properties to concern Department on last working day.</p>
    </div>

<br/><br/>
<!-- Signatures -->
<table class="w-100 mt-5 border-0" style="border-collapse: collapse;">
    <tr>
        <td class="align-top" style="border:none; width:50%; text-align:left;">
            <p class="fw-bold text-decoration-underline mb-5">Issued By:</p><br/><br/>
            <p>IT/HR</p>
        </td>
        <td class="align-top" style="border:none; width:50%; text-align:right;">
            <p class="fw-bold text-decoration-underline mb-5">Received By:</p><br/><br/>
            <p style="display:inline-block; border-bottom:1px solid #000; width:200px;"></p>
            <!-- Signature line -->
        </td>
    </tr>
</table>
<br/><br/><br/>


    <!-- Footer -->
<div class="border-top pt-3 d-flex justify-content-between align-items-start">
    <h6 class="fw-bold mb-0 text-center">
       <b>NEXT SOURCING SERVICES LIMITED </b> - Giant Business Tower (GBT) Level # 4 5, Plot # 3 3/A, Sector # 3, <br/> Dhaka-Mymensingh Road, 
        Uttara C/A, Dhaka-1230, Bangladesh. 
        Tel: +88 02 5895 7222
    </h6>
    
        
    </p>
</div>


</div>





                       
                           
                               
                               


                            
                                <strong>Acknowledgments:</strong><br>
                                <a href="view_gallery.php?customer_id=<?= $cus_get_id; ?>" class="btn btn-primary btn-sm mt-1">
                                    <i class="fa fa-eye"></i> View uploaded files
                                </a>


                                
                            


                                <?php
                            } else {
                                echo "<div class='alert alert-danger'>No employee found with this ID.</div>";
                            }
                            $stmt->close();
                        }
                        ?>










<?php include "includes/footer.php"; ?>
