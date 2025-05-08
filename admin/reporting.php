<?php include "includes/header.php"; ?>

<div class="container-fluid">
    <div class="row">
        <!-- Sidebar Navigation -->
        <div class="col-md-2">
            <div class="card shadow">
                <div class="card-header bg-primary text-white">
                    <h6 class="m-0">Asset Reports</h6>
                </div>
                <div class="list-group list-group-flush">
                    <a class="list-group-item list-group-item-action" href="report/full_asset_report.php" target="reportFrame">Full Asset List</a>
                    <a class="list-group-item list-group-item-action" href="report/laptop_asset_report.php" target="reportFrame">Laptop List</a>
                    <a class="list-group-item list-group-item-action" href="report/desktop_asset_report.php" target="reportFrame">Desktop List</a>
                    <a class="list-group-item list-group-item-action" href="report/mobile_asset_report.php" target="reportFrame">Mobile List</a>
                    <a class="list-group-item list-group-item-action" href="report/unused_laptop_asset_report.php" target="reportFrame">Unassigned Laptop List</a>
                    <a class="list-group-item list-group-item-action" href="report/unused_desktop_asset_report.php" target="reportFrame">Unassigned Desktop List</a>
                    <a class="list-group-item list-group-item-action" href="report/diposed_list_first_slot.php" target="reportFrame">Disposed List first slot</a>
                    <a class="list-group-item list-group-item-action" href="report/diposed_list_second_slot.php" target="reportFrame">Disposed List second slot</a>
                    <a class="list-group-item list-group-item-action" href="report/diposed_list_third_slot.php" target="reportFrame">Disposed List third slot</a>
                    <a class="list-group-item list-group-item-action" href="report/diposed_list_fourth_slot.php" target="reportFrame">Disposed List fourth slot</a>
                    <a class="list-group-item list-group-item-action" href="report/archived_item.php" target="reportFrame">Archived List</a>
                <div class="card-header bg-primary text-white">
                    <h6 class="m-0">User Reports</h6>
                </div>
                    <a class="list-group-item list-group-item-action" href="report/active_emp_list.php" target="reportFrame">Active Emp List</a>
                    <a class="list-group-item list-group-item-action" href="report/archived_emp_list.php" target="reportFrame">Archived Emp List</a>
                    <a class="list-group-item list-group-item-action" href="report/percentage_asset_report.php" target="reportFrame">Percentage asset report</a>
                    
                  
                </div>
            </div>
        </div>

        <!-- Main Content -->
        <div class="col-md-10">
            <div class="card shadow">
                <div class="card-header bg-success text-white">
                    <h6 class="m-0">Report Viewer</h6>
                </div>
                <div class="card-body">
                    <iframe name="reportFrame" id="reportFrame" style="width: 100%; height: 800px; border: none;"></iframe>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Print Button -->
<!--div class="text-center mt-3">
    <button onclick="printReport()" class="btn btn-primary">Print</button>

</div>

<script>
function printReport() {
    var frame = document.getElementById("reportFrame").contentWindow;
    frame.focus();
    frame.print();
}
</script-->

</div>
<?php include "includes/footer.php"; ?>
