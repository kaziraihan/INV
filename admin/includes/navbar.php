<!-- Sidebar -->
<?php 
$query        = "SELECT * FROM theme ";
$select_theme = mysqli_query($connection, $query);
while($row=mysqli_fetch_assoc($select_theme)){
  $theme = $row['theme']; 
  $banner = $row['banner'];} 
  ?>
  <ul class="navbar-nav bg-gradient-<?php echo $theme;  ?> sidebar sidebar-dark accordion" id="accordionSidebar">
    <!-- Sidebar - Brand -->
    <a class="bg-info sidebar-brand d-flex align-items-center " href="dashboard.php">
      <div class="sidebar-brand-icon rotate-n-15">
       <!--image tag goes here- logo -->
     </div>
     <div class="sidebar-brand-text mx-3"><?php echo $banner; ?></div>
     
   </a>

   <!-- Divider -->
   <hr class="sidebar-divider my-0">

   <!-- Nav Item - Dashboard -->
   <li class="nav-item active">
    <a class="nav-link" href="dashboard.php">
      <i class="fas fa-fw fa-tachometer-alt"></i>
      <span>Dashboard</span></a>
    </li>

    <!-- Nav Item - Dashboard -->
    

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
     
    </div>
    
    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item">
      <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsefive2" aria-expanded="true" aria-controls="collapsefive2">
        <i class="fas fa-fw fa-cog"></i>
        <span>Asset</span>
      </a>
      <div id="collapsefive2" class="collapse" aria-labelledby="headingfour" data-parent="#accordionSidebar">
        <div class="bg-white py-2 collapse-inner rounded">

          <a class="collapse-item" href="add_asset_active.php">Manage Asset</a>
        </div>
      </div>
    </li>
    <!-- Nav Item - Pages Collapse Menu -->
    
    <!-- Nav Item - Pages Collapse Menu -->
    
<!-- Nav Item - Pages Collapse Menu -->
<li class="nav-item">
  <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseParent" aria-expanded="true" aria-controls="collapseParent">
    <i class="fas fa-fw fa-cog"></i>
    <span>Management</span>
  </a>
  <div id="collapseParent" class="collapse" aria-labelledby="headingParent" data-parent="#accordionSidebar">
    <div class="bg-white py-2 collapse-inner rounded">
      
      <!-- Direct Links -->
      <a class="collapse-item" href="managecategory.php">Categories</a>
      <a class="collapse-item" href="brand.php">Brands</a>
      <a class="collapse-item" href="managetag.php">Suppliers</a>
      <a class="collapse-item" href="managedepartment.php">Departments</a>
    </div>
  </div>
</li>

<!-- Nav Item - Pages Collapse Menu -->

<li class="nav-item">
  <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsefive" aria-expanded="true" aria-controls="collapsefive">
    <i class="fas fa-fw fa-cog"></i>
    <span>Employee</span>
  </a>
  <div id="collapsefive" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
    <div class="bg-white py-2 collapse-inner rounded">
      
      <a class="collapse-item" href="add_customer.php">Add Employee</a>
      <a class="collapse-item" href="managecustomer_active.php">Active Employees</a>
      <a class="collapse-item" href="managecustomer.php">Deactivated Employees</a>
    </div>
  </div>
</li>

<!-- Nav Item - Pages Collapse Menu -->

<li class="nav-item">
  <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseSix" aria-expanded="true" aria-controls="collapsefive">
    <i class="fas fa-fw fa-cog"></i>
    <span>Report</span>
  </a>
  <div id="collapseSix" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
    <div class="bg-white py-2 collapse-inner rounded">
      
      <a class="collapse-item" href="reporting.php">Report dashboard</a>
      
    </div>
  </div>
</li>
<!-- Divider -->
<!-- Divider -->


<hr class="sidebar-divider">
<!-- Nav Item - Utilities Collapse Menu -->
<li class="nav-item">
  <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#alluser" aria-expanded="true" aria-controls="alluser">
    <i class="fas fa-fw fa-users"></i>
    <span>All User</span>
  </a>
  <div id="alluser" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
    <div class="bg-white py-2 collapse-inner rounded">
      
      <a class="collapse-item" href="add-user.php">Add User</a>
      <a class="collapse-item" href="users.php">Manage All User</a>
    </div>
  </div>
</li> 


<li class="nav-item">
  <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsesix" aria-expanded="true" aria-controls="collapsesix">
    <i class="fas fa-fw fa-cog"></i>
    <span>Setting</span>
  </a>
  <div id="collapsesix" class="collapse" aria-labelledby="collapsesix" data-parent="#accordionSidebar">
    <div class="bg-white py-2 collapse-inner rounded">
     
      <a class="collapse-item" href="setting.php">Setting</a>
    </div>
  </div>
</li>

<!-- Divider -->
<hr class="sidebar-divider d-none d-md-block">

<!-- Sidebar Toggler (Sidebar) -->
<!-- Sidebar Toggler (Sidebar) -->
<div class="text-center d-none d-md-inline">
  <button class="rounded-circle border-0" id="sidebarToggle"></button>
</div>

</ul>
<!-- End of Sidebar -->

<!-- Content Wrapper -->
<div id="content-wrapper" class="d-flex flex-column">

  <!-- Main Content -->
  <div id="content">

    <!-- Topbar -->
    <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

      <!-- Sidebar Toggle (Topbar) -->
      <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
        <i class="fa fa-bars"></i>
      </button>

      <!-- Topbar Search -->
      
      <!-- Topbar Navbar -->
      <ul class="navbar-nav ml-auto">

        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
        <li class="nav-item no-arrow mx-1">

        </li>

 
    <!-- Nav Item - Messages -->
    <li class="nav-item dropdown no-arrow mx-1">
      <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <i class="fas fa-envelope fa-fw"></i>
        
        <!-- Counter - Messages -->
        <span class="badge badge-danger badge-counter">7</span>
      </a>
      <!-- Dropdown - Messages -->
      <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="messagesDropdown">
        <h6 class="dropdown-header">
          Message Center
        </h6>
        <a class="dropdown-item d-flex align-items-center" href="#">
          <div class="dropdown-list-image mr-3">
            <img class="rounded-circle" src="https://source.unsplash.com/fn_BT9fwg_E/60x60" alt="">
            <div class="status-indicator bg-success"></div>
          </div>
          <div class="font-weight-bold">
            <div class="text-truncate">Hi there! I am wondering if you can help me with a problem I've been having.</div>
            <div class="small text-gray-500">Emily Fowler · 58m</div>
          </div>
        </a>
        <a class="dropdown-item d-flex align-items-center" href="#">
          <div class="dropdown-list-image mr-3">
            <img class="rounded-circle" src="https://source.unsplash.com/AU4VPcFN4LE/60x60" alt="">
            <div class="status-indicator"></div>
          </div>
          <div>
            <div class="text-truncate">I have the photos that you ordered last month, how would you like them sent to you?</div>
            <div class="small text-gray-500">Jae Chun · 1d</div>
          </div>
        </a>
        <a class="dropdown-item d-flex align-items-center" href="#">
          <div class="dropdown-list-image mr-3">
            <img class="rounded-circle" src="https://source.unsplash.com/CS2uCrpNzJY/60x60" alt="">
            <div class="status-indicator bg-warning"></div>
          </div>
          <div>
            <div class="text-truncate">Last month's report looks great, I am very happy with the progress so far, keep up the good work!</div>
            <div class="small text-gray-500">Morgan Alvarez · 2d</div>
          </div>
        </a>
        <a class="dropdown-item d-flex align-items-center" href="#">
          <div class="dropdown-list-image mr-3">
            <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="">
            <div class="status-indicator bg-success"></div>
          </div>
          <div>
            <div class="text-truncate">Am I a good boy? The reason I ask is because someone told me that people say this to all dogs, even if they aren't good...</div>
            <div class="small text-gray-500">Chicken the Dog · 2w</div>
          </div>
        </a>
        <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
      </div>
    </li>

    <div class="topbar-divider d-none d-sm-block"></div>

    <!-- Nav Item - User Information -->
    <li class="nav-item dropdown no-arrow">
      <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <span class="mr-2 d-none d-lg-inline text-gray-600 small"><?php echo $_SESSION['fname']; ?></span>
        
        <img class="img-profile rounded-circle" src="img/users/<?php echo $_SESSION['avater']; ?>">
      </a>
      <!-- Dropdown - User Information -->
      
      <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
        <a class="dropdown-item" href="profile.php?profile=<?php echo $_SESSION['id']; ?>">
          <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
          Profile
        </a>
        <a class="dropdown-item" href="setting.php">
          <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
          Settings
        </a>
        <a class="dropdown-item" href="#">
          <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
          Activity Log
        </a>
        <div class="dropdown-divider"></div>
        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
          <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
          Logout
        </a>
      </div>
    </li>

  </ul>

</nav>
        <!-- End of Topbar -->