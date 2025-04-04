<?php include "includes/header.php"; ?> 

<!-- Begin Page Content -->
<div class="container-fluid">

  <!-- Page Heading -->
  <h1 class="h3 mb-4 text-gray-800"></h1>
  <div class="ml-.5 text-gray-800 alert alert-secondary">Brand / Add Brand / Manage Brand </div>

  <div class="row">         
    <div class="col-md-6">

      <!-- Button to trigger modal for adding new brand -->
      <!--button type="button" class="btn btn-primary mb-4" data-toggle="modal" data-target="#brandModal">
        Add New Brand
      </button-->

      <!-- Modal -->
      <div class="modal fade" id="brandModal" tabindex="-1" role="dialog" aria-labelledby="brandModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="brandModalLabel">Add New Brand</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form action="" method="POST">
                <input type="hidden" name="brand_id" id="brand_id" value="">
                <div class="form-group">
                  <input type="text" name="brand" id="brand_name" class="form-control" autocomplete="off" placeholder="Brand Name">
                </div>
                <div class="form-group">
                  <input type="submit" name="save_brand" id="save_brand" value="Add Brand" class="btn btn-primary btn-sm">
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>

      <!-- PHP Code for Add or Update Brand -->
      <?php
      if ( isset($_POST['save_brand']) ){
        $brand_name = mysqli_real_escape_string($connection, $_POST['brand']);
        $brand_id = $_POST['brand_id'];

        if ( !empty($brand_name) ){
          if(empty($brand_id)){
              // Insert new brand
            $query = "INSERT INTO brand (brand) VALUES ('$brand_name')";
          } else {
              // Update existing brand
            $query = "UPDATE brand SET brand = '$brand_name' WHERE id = '$brand_id'";
          }
          $result = mysqli_query($connection, $query);

          if (!$result) {
            die("Query failed" . mysqli_error($connection));
          } else {
            header("Location: brand.php");
          }
        } else {
          echo "Brand Name cannot be empty";
        }
      }
      ?>

      <!-- Manage All Brand Table -->
      <div class="card shadow mb-4">
        <div class="card-header py-3">
          <h6 class="m-0 font-weight-bold text-primary">Manage All Brands  <button type="button" class="btn btn-primary " data-toggle="modal" data-target="#brandModal">
            Add New Brand
          </button></h6>
        </div>
        <div class="card-body">
          <table class="table table-striped">
            <thead class="thead-dark">
              <tr>
                <th scope="col">#</th>
                <th scope="col">Name</th>
                <th scope="col"></th>
              </tr>
            </thead>
            <tbody>
              <?php
                // Fetch all brands
              $query = "SELECT * FROM brand";
              $select_all_brand = mysqli_query($connection, $query);
              $i = 0;
              while ($row = mysqli_fetch_assoc($select_all_brand)) {
                $brand_id = $row['id'];
                $brand_name = $row['brand'];
                $i++;
                ?>
                <tr>
                  <th scope="row"><?php echo $i; ?></th>
                  <td><?php echo $brand_name; ?></td>
                  <td>
                    <div class="btn-group">
                      <!-- Update Button triggers the modal -->
                      <button type="button" class="btn btn-primary btn-sm" onclick="editBrand(<?php echo $brand_id; ?>, '<?php echo $brand_name; ?>')">Update</button>                

                   <?php if ($delete_role == 1){ ?>
                    <a href="brand.php?delete=<?php echo $brand_id; ?>" class="btn btn-danger btn-sm">Delete</a>
                                        <?php } ?>
                </div>
              </td>
            </tr>
          <?php } ?>
        </tbody>
      </table>
    </div>
  </div>

  <!-- PHP Code for Deleting a Brand -->
  <?php
  if (isset($_GET['delete'])) {
    $the_brand_id = $_GET['delete'];
    $query = "DELETE FROM brand WHERE id = '$the_brand_id'";
    $delete_brand = mysqli_query($connection, $query);

    if (!$delete_brand) {
      die("Query failed" . mysqli_error($connection));
    } else {
      header("Location: brand.php");
    }
  }
  ?>
</div></div>
</div>
<!-- /.container-fluid -->
</div>
<!-- End of Main Content -->

<?php include "includes/footer.php"; ?>

<script>
// JavaScript function to populate modal for editing
  function editBrand(id, name) {
    $('#brandModal').modal('show');
    $('#brand_id').val(id);
    $('#brand_name').val(name);
    $('#save_brand').val('Update Brand');
  }
</script>
