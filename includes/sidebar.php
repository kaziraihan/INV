<!-- Sidebar Start -->
        <div class="col-md-4 sidebar">
          <div class="search-form">
            <h4>Search Here</h4>
            <div class="title-border"></div>
            <form action="" method="">
              <div class="form-group">
                <input type="text" name="search-content" placeholder="Search Here..." class="form-control" autocomplete="off" required="required">
              </div>

              <div class="form-group">
                <input type="submit" name="search" class="btn btn-primary" value="Search">
              </div>
            </form>
          </div>


          <div class="latest-category">
            <h4>Latest Category</h4>
            <div class="title-border"></div>
            <ul>
            <?php

              $query = "SELECT * FROM categories";

              $all_categories = mysqli_query($connection, $query);

              while ( $row = mysqli_fetch_assoc($all_categories) ) {
                $cat_id     = $row['cat_id'];
                $cat_name   = $row['cat_name'];
              ?>  
              <li><a href=""><?php echo $cat_name; ?></a></li>
              <?php  }
            ?>
            </ul>
          </div>


          <div class="latest-post">
            <h4>Latest Post</h4>
            <div class="title-border"></div>
            <ul>
              <li>
                <div class="row">
                  <div class="col-md-3">
                    <img src="admin/img/posts/posts.png" class="img-fluid">
                  </div>
                  <div class="col-md-9 post-content">
                    <h4>Lorem Ipsum Dummy</h4>
                    <h6>14th September, 2019</h6>
                  </div>
                </div>
              </li>

              <li>
                <div class="row">
                  <div class="col-md-3">
                    <img src="admin/img/posts/posts.png" class="img-fluid">
                  </div>
                  <div class="col-md-9 post-content">
                    <h4>Lorem Ipsum Dummy</h4>
                    <h6>14th September, 2019</h6>
                  </div>
                </div>
              </li>

              <li>
                <div class="row">
                  <div class="col-md-3">
                    <img src="admin/img/posts/posts.png" class="img-fluid">
                  </div>
                  <div class="col-md-9 post-content">
                    <h4>Lorem Ipsum Dummy</h4>
                    <h6>14th September, 2019</h6>
                  </div>
                </div>
              </li>

              <li>
                <div class="row">
                  <div class="col-md-3">
                    <img src="admin/img/posts/posts.png" class="img-fluid">
                  </div>
                  <div class="col-md-9 post-content">
                    <h4>Lorem Ipsum Dummy</h4>
                    <h6>14th September, 2019</h6>
                  </div>
                </div>
              </li>

              <li>
                <div class="row">
                  <div class="col-md-3">
                    <img src="admin/img/posts/posts.png" class="img-fluid">
                  </div>
                  <div class="col-md-9 post-content">
                    <h4>Lorem Ipsum Dummy</h4>
                    <h6>14th September, 2019</h6>
                  </div>
                </div>
              </li>
              
            </ul>
          </div>
        </div>
        <!-- Sidebar End -->