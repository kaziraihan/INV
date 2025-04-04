<?php include "includes/header.php"; ?>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"></h1>

    <div class="row">
        <div class="col-md-12">

            <!-- Basic Card Example -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Visitor Logbook</h6>
                </div>

                <div class="card-body">
                    <div class="row">
                        <div class="container col-md-12">
                            <?php
                            $query = "SELECT * FROM vms ORDER BY id DESC LIMIT 1";
                            $Selete_visitor = mysqli_query($connection, $query);
                            while ($row = mysqli_fetch_assoc($Selete_visitor)) {
                                $id = $row['id'];
                                $Visitor_name = $row['Visitor_name'];
                                $Visitor_from = $row['Visitor_from'];
                                $Email_address = $row['Email_address'];
                                $Phone_Number = $row['Phone_Number'];
                                $In_time = $row['In_time'];
                                $Am_Pm = $row['Am_Pm'];
                                $Card_Number = $row['Card_Number'];
                                $to_whom = $row['to_whom'];
                                $to_email = $row['to_email'];
                                ?>
                                <div class="alert alert-success">
                                    <?php // echo $id; ?>
                                    You: <span><?php echo $Visitor_name; ?></span><br>
                                    Came from: <span><?php echo $Visitor_from; ?></span><br>
                                    Your Email: <span><?php echo $Email_address; ?></span><br>
                                    Your phone: <span><?php echo $Phone_Number; ?></span><br>
                                    Arrival Time: <span><?php echo $In_time . ' ' . $Am_Pm; ?></span><br>
                                    Visit Card Num: <span><?php echo $Card_Number; ?></span><br>
                                    <span><b><?php echo $to_whom; ?></b></span>
                                </div>
                            <?php } ?>


                        </div>
                    </div>

                    <div class="row">
                        <div class="container col-md-12">
                         <div class="alert alert-success">
                            <form action="" method="POST">
                                <div class="form-group d-flex">
                                    <input type="text" class="form-control col-md-10" id="exampleInputEmail1" aria-describedby="In_time" placeholder="Search Here to whom you want to meet" name="cus_name">
                                    &nbsp;
                                    <button type="submit" name="Search" class="btn btn-primary col-md-2">Search</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div> 




                <?php
                if (isset($_POST['Search'])) {
                    $cus_name_search = mysqli_real_escape_string($connection, $_POST['cus_name']);
                    $query = "SELECT * FROM customer WHERE cus_name LIKE '%$cus_name_search%'";
                    $select_customer = mysqli_query($connection, $query);

                    while ($row = mysqli_fetch_assoc($select_customer)) {
                        ?>
                        <div class="row">
                            <div class="container col-md-12">
                                <form action="" method="POST">
                                    <div class="alert alert-info">
                                        <label><?php echo $row['cus_name']; ?></label>&nbsp;&nbsp;&nbsp; ~&nbsp;&nbsp;&nbsp;
                                        <input type="hidden" class="form-control" name="whomto" value="<?php echo $row['cus_name']; ?>">
                                        <label><?php echo $row['cus_ref_no']; ?></label>&nbsp;&nbsp;&nbsp;~&nbsp;&nbsp;&nbsp;
                                        <input type="hidden" class="form-control" name="cus_ref_no" value="<?php echo $row['cus_ref_no']; ?>">
                                        <label><?php echo $row['cus_address']; ?></label>&nbsp;&nbsp;&nbsp;~&nbsp;&nbsp;&nbsp;
                                        <input type="hidden" class="form-control" name="cus_address" value="<?php echo $row['cus_address']; ?>">
                                        <label><?php echo $row['cus_email']; ?></label>&nbsp;&nbsp;&nbsp;~&nbsp;&nbsp;&nbsp;
                                        <input type="hidden" class="form-control" name="cus_email" value="<?php echo $row['cus_email']; ?>">
                                        <label><?php echo $row['cus_phone']; ?></label>&nbsp;&nbsp;&nbsp;
                                        <input type="hidden" class="form-control" name="cus_phone" value="<?php echo $row['cus_phone']; ?>">
                                        <input type="submit" class="form-control btn btn-success col-md-1" name="select" value="Select">
                                    </div>
                                </form>
                            </div>
                        </div>
                        <?php
                    }
                }
                ?>

                <?php
                if (isset($_POST['select'])) {
                        // Getting the ID from Visitor list 
                    $query = "SELECT * FROM vms ORDER BY id DESC LIMIT 1";
                    $Selete_visitor = mysqli_query($connection, $query);
                    while ($row = mysqli_fetch_assoc($Selete_visitor)) {
                        $id = $row['id'];
                    }

                        // Getting the who to from search
                    $whomto = mysqli_real_escape_string($connection, $_POST['whomto']);
                    $cus_email = mysqli_real_escape_string($connection, $_POST['cus_email']);

                        // Send update on VMS whom to and Email address 
                    $query = "UPDATE vms SET to_whom = '$whomto', to_email = '$cus_email' WHERE id = '$id'";
                    $add_post = mysqli_query($connection, $query);

                    if (!$add_post) {
                        die("Query Failed" . mysqli_error($connection));
                    } else {
                            // header("Location: vms.php");
                            // exit();
                    }
                }
                ?>



                <div class="row">
                    <div class="container col-md-12">
                        <div class="alert alert-info">
                            <?php
                            if (!empty($cus_email)) { 
                                // Getting info from customer list
                                $query = "SELECT * FROM customer WHERE cus_email = '$cus_email'";
                                $Selete_visitor = mysqli_query($connection, $query);
                                while ($row = mysqli_fetch_assoc($Selete_visitor)) { ?>
                                    Want to Meet: <?php echo $row['cus_name']; ?><br>
                                    Address: <?php echo $row['cus_address']; ?><br>
                                    Email: <?php echo $row['cus_email']; ?><br>
                                    Mobile: <?php echo $row['cus_phone']; ?>
                                <?php }
                            }
                            ?>

                        </div>
                    </div>
                </div> 

                <div class="row">
                    <div class="container col-md-12">



                        <?php
                        use PHPMailer\PHPMailer\PHPMailer;
                        use PHPMailer\PHPMailer\Exception;

                        require 'vendor/autoload.php';

                        if (!empty($cus_email)) {
                    // Getting info from customer list
                            $query = "SELECT * FROM customer WHERE cus_email = '$cus_email'";
                            $Selete_visitor = mysqli_query($connection, $query);
                            while ($row = mysqli_fetch_assoc($Selete_visitor)) {
                                $cus_name = $row['cus_name'];
                                $cus_address = $row['cus_address'];
                                $cus_email = $row['cus_email'];
                                $cus_phone = $row['cus_phone'];

                        // Compose the email content
                                $subject = "Visitor Logbook Information";
                                $message = "Want to Meet: " . $cus_name . "<br>";
                                $message .= "Address: " . $cus_address . "<br>";
                                $message .= "Email: " . $cus_email . "<br>";
                                $message .= "Mobile: " . $cus_phone . "<br>";

                        // Send the email using PHPMailer
                                $mail = new PHPMailer(true);

                                try {
                            //Server settings
                            $mail->SMTPDebug = 2; // Enable verbose debug output
                            $mail->isSMTP();
                            $mail->Host = 'smtp.gmail.com';  // Specify main and backup SMTP servers
                            $mail->SMTPAuth = true;
                            $mail->Username = 'nsbdapps@gmail.com';  // SMTP username
                            $mail->Password = "N3xt@apps";    // SMTP password
                            $mail->SMTPSecure = 'TLS';
                            $mail->Port = 587 ; //587

                            //Recipients
                            $mail->setFrom('nsbdapps@gmail.com', 'Raihan');
                            $mail->addAddress($cus_email);

                            // Content
                            $mail->isHTML(true);
                            $mail->Subject = $subject;
                            $mail->Body    = $message;

                            $mail->send();
                            echo 'Email has been sent';
                        } catch (Exception $e) {
                            echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
                        }
                    }
                }
                ?>



            </div>
        </div>    

    </div>
</div>
</div>
</div>
</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<?php include "includes/footer.php"; ?>
