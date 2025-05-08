  <!-- Header Section Start -->
    <header>
      <nav class="navbar navbar-expand-lg navbar-light">
        <!-- Website Logo -->
        <a class="navbar-brand" href="#">Your Company</a>
        
        <!-- Responsive Menu Button -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <!-- Nav Menu Start -->
          <ul class="navbar-nav ml-auto">
              
            <?php

              $query = "SELECT * FROM categories";

              $all_categories = mysqli_query($connection, $query);

              while ( $row = mysqli_fetch_assoc($all_categories) ) {
                $cat_id     = $row['category_id'];
                $cat_name   = $row['category_name'];
              ?>  

              <li class="nav-item">
                <a class="nav-link" href=""><?php echo $cat_name; ?></a>
              </li>


            <?php  }

            ?>




            

          </ul>
          <!-- Nav Menu Start -->
        </div>
      </nav>
    </header>
    <!-- Header Section End -->