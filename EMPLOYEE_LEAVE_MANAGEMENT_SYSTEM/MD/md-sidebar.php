<nav>
        <ul class="metismenu" id="menu">
            
        <li class="<?php if($page=='dashboard') {echo 'active';} ?>"><a href="../MD/dashboard.php"><i class="ti-dashboard"></i> <span>Dashboard</span></a></li>

        <li class="<?php if($page=='employee') {echo 'active';} ?>"><a href="employees.php"><i class="ti-id-badge"></i> <span>Employee Section</span></a></li>

        <li class="<?php if($page=='employee') {echo 'active';} ?>"><a href="#"><i class="fa fa-group"></i> <span>Attendance Section</span></a></li>


        <li class="<?php if($page=='manage-leave') {echo 'active';} ?>">
            <a href="javascript:void(0)" aria-expanded="true"><i class="ti-briefcase"></i><span>Manage Leave</span></a>

            <ul class="collapse">
                <li ><a href="pending-history.php"><i class="fa fa-spinner"></i> Pending</a></li>
                <li ><a href="approved-history.php"><i class="fa fa-check"></i> Approved</a></li>
                <li ><a href="declined-history.php"><i class="fa fa-times-circle"></i> Declined</a></li>
                <li ><a href="leave-history.php"><i class="fa fa-history"></i> Leave History</a></li>
            </ul>
            
        </li>

        <li class="<?php if($page=='employee') {echo 'active';} ?>"><a href="https://mail.google.com"><i class="fa fa-envelope" aria-hidden="true"></i> <span>Mail</span></a></li>

                            
            </ul>
</nav>