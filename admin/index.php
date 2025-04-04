<!DOCTYPE html>
<html lang="en">
<head>
  <title>Login to Deshbarod</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width,
  <initial-scale=1">
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.css" rel="stylesheet">
    <link href="css/styles.css" rel="stylesheet">

  </head>
  <body>
    <div class="container">
      <div class="row">
       <div class="main-body">
        <div class="col-md-12">
          <div class="login">
            <h1>login</h1>
            <form class="user" action="includes/login.php" method="POST">
              
              <div class="form-group">
                <input type="text" class="form-control form-control-user" placeholder="Enter Username" name="username" autocomplete="off">
              </div>
              
              <div class="form-group">
                <input type="password" class="form-control form-control-user"  placeholder="Password" name="password" autocomplete="off">
              </div>

              <div class="form-group">
                <div class="custom-control custom-checkbox small ">
                  <input type="radio"  id="admin" name="role" value="1">
                  <label for="admin"><h5>Admin</h5></label>
                  <input type="radio" id="user" name="role" value="2">
                  <label for="user"><h5>User</h5></label><br>
                </div>
              </div>
              
                    <!--div class="form-group">
                      <div class="custom-control custom-checkbox small">
                        <input type="checkbox" class="custom-control-input" id="customCheck">
                        <label class="custom-control-label" for="customCheck"><h5>Remember Me</h5></label>
                      </div>
                    </div-->
                    
                    <div class="form-group">
                      <input type="submit" name="login" class="btn btn-primary btn-user btn-block" value="Login">
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>

      </body>
      </html>
