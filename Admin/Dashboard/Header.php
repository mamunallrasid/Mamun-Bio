
<?php
 require_once("../../OOP_CLASS/db-connect/connect.php");
 require_once("../../OOP_CLASS/class/common_class.php");
 require_once("../../OOP_CLASS/function/function.php");
 $server=new Main_Class();
 $server->session_private();
 ?>
<!doctype html>
<html lang="en">


<!-- Mirrored from creatantech.com/demos/codervent/syndron/vertical/public/form-select2 by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 16 Jul 2022 20:40:52 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--favicon-->
	<link rel="icon" href="../../Asset/Admin/assets/images/favicon-32x32.png" type="image/png" />
	<!--plugins-->
		<link href="../../Asset/Admin/assets/plugins/select2/css/select2.min.css" rel="stylesheet" />
	<link href="../../Asset/Admin/assets/plugins/select2/css/select2-bootstrap4.css" rel="stylesheet" />
		<link href="../../Asset/Admin/assets/plugins/simplebar/css/simplebar.css" rel="stylesheet" />
	<link href="../../Asset/Admin/assets/plugins/perfect-scrollbar/css/perfect-scrollbar.css" rel="stylesheet" />
	<link href="../../Asset/Admin/assets/plugins/metismenu/css/metisMenu.min.css" rel="stylesheet" />
	<!-- loader-->
	<link href="../../Asset/Admin/assets/css/pace.min.css" rel="stylesheet" />
	<script src="../../Asset/Admin/assets/js/pace.min.js"></script>
	<!-- Bootstrap CSS -->
	<link href="../../Asset/Admin/assets/css/bootstrap.min.css" rel="stylesheet">
	<link href="../../Asset/Admin/assets/css/app.css" rel="stylesheet">
	<link href="../../Asset/Admin/assets/css/icons.css" rel="stylesheet">

    <!-- Theme Style CSS -->
    <link rel="stylesheet" href="../../Asset/Admin/assets/css/dark-theme.css" />
    <link rel="stylesheet" href="../../Asset/Admin/assets/css/semi-dark.css" />
    <link rel="stylesheet" href="../../Asset/Admin/assets/css/header-colors.css" />
    <link href="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.3/dist/sweetalert2.min.css"rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
    <link href="../../Asset/Admin/assets/plugins/datatable/css/dataTables.bootstrap5.min.css" rel="stylesheet" />
    <title>Mamun Admin</title>
    <style>
     .error{
      color: red;
    }
  </style>
</head>

<body>
	<!--wrapper-->
	<div class="wrapper">
		<!--start header -->
		<!--start header wrapper-->
    <header>
            <div class="topbar d-flex align-items-center">
                <nav class="navbar navbar-expand">
                    <div class="mobile-toggle-menu"><i class='bx bx-menu'></i>
                    </div>
                    <div class="search-bar flex-grow-1">
                       <div class="bg bg-info">
                       <h2><span style="margin-left:30%; color:white;">Mamun Bio Admin Panel</span></h2>
                       </div>
                    </div>
                    <div class="user-box dropdown">
                        <a class="d-flex align-items-center nav-link dropdown-toggle dropdown-toggle-nocaret" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <img src="../../Asset/Admin/assets/images/avatars/avatar-2.png" class="user-img" alt="user avatar">
                            <div class="user-info ps-3">
                                <p class="user-name mb-0"><?php echo $_SESSION['admin_name'];?></p>
                                <p class="designattion mb-0">Admin</p>
                            </div>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-end">
                            <li><a class="dropdown-item" onclick="Logout()"><i class='bx bx-log-out-circle'></i><span>Logout</span></a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </header>
    <!--end header -->