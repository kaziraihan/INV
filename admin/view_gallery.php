<?php include "includes/header.php"; ?>

<div class="row">
    <div class="col-md-12">
        <div class="card shadow mb-4">
<?php
if (isset($_GET['customer_id'])) {
    $customer_id = intval($_GET['customer_id']);

// Fetch uploaded files for this customer
    $stmt = $connection->prepare("SELECT file_name FROM customer_files WHERE customer_id = ?");
    $stmt->bind_param("i", $customer_id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $file_name = $row['file_name'];
            $fileExtension = strtolower(pathinfo($file_name, PATHINFO_EXTENSION));

            // Determine file path
            $file_path = (in_array($fileExtension, ['pdf'])) ? "img/customer/$file_name" : "img/customer/$file_name";

            if ($fileExtension == 'pdf') {
                // Show PDF in iframe
                echo "<div style='margin-bottom:20px;'>
                        <h5>$file_name</h5>
                        <iframe src='$file_path' width='99%' height='900' style='border:1px solid #ccc;'></iframe>
                      </div>";
            } elseif (in_array($fileExtension, ['jpg', 'jpeg'])) {
                // Show image preview
                echo "<div style='margin-bottom:20px;'>
                        <h5>$file_name</h5>
                        <img src='$file_path' alt='$file_name' style='max-width:100%; height:auto; border:1px solid #ccc;' />
                      </div>";
            }
        }
    } else {
        echo "<div class='alert alert-info'>No files uploaded for this customer.</div>";
    }
}

?>
 </div></div></div></div>
                

<?php include "includes/footer.php"; ?> 