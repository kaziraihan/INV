
<!-- Search starts -->
<div class="col-md-12">
    <div class="card shadow mb-4">
        <div class="card-body">
            <form action="" method="GET">
                <div class="input-group">
                    <input type="text" name="search" class="form-control" placeholder="Search by Asset Code, SN, or UsedBy" 
                    value="<?php echo isset($_GET['search']) ? htmlspecialchars($_GET['search']) : ''; ?>">
                    <div class="input-group-append">
                        <button class="btn btn-primary" name="Search" type="submit">Search</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<?php if (isset($_GET['search'])): ?>
    <div class="container-fluid">
        <div class="card mb-4">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead class="thead-dark">
                        <tr>
                            <th>#</th>
                            <!--th>id</th-->
                            <th>AssetCode</th>
                            <th>Comp.</th>
                            <th>Qty</th>
                            <th>Type</th>
                            <th>AssetDepn</th>
                            <th>PurchaseDate</th>
                            <th>DepnStartPrd</th>
                            <th>DepnEndPrd</th>
                            <th>Dispd</th>
                            <th>S/N</th>
                            <th>Supplier</th>
                            <th>Remark</th>
                            <th>UsedBy</th>
                            <th>Detail</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $i = 1;
                        if (!empty($_GET['search'])) {
                            $search = mysqli_real_escape_string($connection, $_GET['search']);
                            $query = "SELECT * FROM asset_list 
                            WHERE (AssetCode LIKE '%$search%' 
                            OR assettype LIKE '%$search%' 
                            OR SN LIKE '%$search%' 
                            OR UsedBy LIKE '%$search%') 
                            AND Disposed = 0 
                            ORDER BY `asset_list`.`Disposed` ASC";
                            $select_customer = mysqli_query($connection, $query);
                            if (mysqli_num_rows($select_customer) > 0) {
                                while ($row = mysqli_fetch_assoc($select_customer)): ?>
                                    <tr>
                                        <td><?php echo $i++; ?></td>
                                        <!--td><?php echo $row['id']; ?></td-->
                                        <td><a class = "btn btn-primary btn-sm" href="view_asset.php?id=<?php echo $row['id']; ?>">
                                            <?php echo $row['AssetCode']; ?>
                                        </a></td>
                                        <td><?php echo $row['Company']; ?></td>
                                        <td><?php echo $row['qty']; ?></td>
                                        <td><?php echo $row['assettype']; ?></td>
                                        <td><?php echo $row['AssetDescription']; ?></td>
                                        <td><?php echo $row['PurchaseDate']; ?></td>
                                        <td><?php echo $row['DepnStartPeriod']; ?></td>
                                        <td><?php echo $row['DepnEndPeriod']; ?></td>
                                        <td><?php echo $row['Disposed']; ?></td>
                                        <td><?php echo $row['SN']; ?></td>
                                        <td><?php echo $row['Supplier']; ?></td>
                                        <td><?php echo $row['Remark']; ?></td>
                                        <td>
                                        <!-- thisis the user view showing URL -->
                                        <a href=" managecustomer_active.php?update= <?php echo empty($row['usedbyid'])? '': $row['usedbyid']; ?>">
                                        <!-- this is the actual usedby name showing-->
                                        <?php echo empty($row['Usedby']) ? 'Unused' : $row['Usedby']; ?>
                                        </a>
                                        </td>
                                        <?php if ($the_role == 1 || $update_role == 1 || $delete_role == 1){ ?>
                                            <td><a href="add_asset_active.php?id=<?php echo $row['id']; ?>"><button
                                                class="btn btn-info btn-sm">Update</button></a>
                                            </td>
                                        <?php } ?>                                      
                                    </tr>
                                <?php endwhile;
                            } else {
                                echo "<tr><td colspan='16' class='text-center'>No results found for \"$search\".</td></tr>";
                            }
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
<?php endif; ?>
<!-- Search ends -->
