    <?php include 'header.php';?>
<!--header-->
    <body>
        <!-- Responsive navbar-->
        <?php include 'logo.php';?>
        <?php include 'navbar.php';?>

<!-- Contact Section -->
    <?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve form data
    $name = htmlspecialchars($_POST['name']);
    $email = htmlspecialchars($_POST['email']);
    $message = htmlspecialchars($_POST['message']);

    // Set up the email parameters
    $to = "nextsourcingbdit@gmail.com";
    $subject = "New Message from $name";
    $body = "You have received a new message from the contact form on your website:\n\n";
    $body .= "Name: $name\n";
    $body .= "Email: $email\n";
    $body .= "Message:\n$message\n";

    $headers = "From: $email\r\n";
    $headers .= "Reply-To: $email\r\n";

    // Send the email
    if (mail($to, $subject, $body, $headers)) {
        echo "Thank you for contacting us! Your message has been sent successfully.";
    } else {
        echo "Sorry, there was an error sending your message. Please try again later.";
    }
}
?>

<section id="contact" class="contact-section">
    <div class="container">
        <h2 class="text-center">Contact Us</h2>
        <p class="text-center">We’d love to hear from you. Fill out the form below and we’ll get back to you as soon as possible.</p>
        <form action="contact.php" method="POST">
            <div class="form-group">
                <label for="name">Your Name</label>
                <input type="text" id="name" name="name" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="email">Your Email</label>
                <input type="email" id="email" name="email" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="message">Your Message</label>
                <textarea id="message" name="message" class="form-control" rows="5" required></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Send Message</button>
        </form>
    </div>
</section>
       
        <!-- Footer-->

        <?php include 'footer.php';?>