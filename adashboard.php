<?php
include('config.php');
session_start();
 $ud=date("d-m-y");
if($_SESSION['id']=='')
{
?>
<script>
window.location='index.php';
</script>

<?php }
$sta="start";
$com="done";
$ncom="pending";
$usr=mysql_query("SELECT * FROM `usr_reg`");
$usr_count=mysql_num_rows($usr);

$course=mysql_query("SELECT * FROM `usr_reg` where `designation`='course'");
$course_count=mysql_num_rows($course);

$wrk=mysql_query("SELECT * FROM `e2e`");
$wrk_count=mysql_num_rows($wrk);

$pro=mysql_query("SELECT * FROM `pro_tbl`");
$pro_count=mysql_num_rows($pro);


$works_all=mysql_query("SELECT * FROM `task_tbl`");
$works_count=mysql_num_rows($works_all);

$dat=date("d-m-Y");
$att=mysql_query("SELECT * FROM `attendance` WHERE `action`='absent' and `datem`='$dat'");
$att_count=mysql_num_rows($att);



$works_com=mysql_query("SELECT * FROM `pro_ass` WHERE `status`='completed'");
$works_com_count=mysql_num_rows($works_com);


$works_ncom=mysql_query("SELECT * FROM `pro_ass` WHERE `status`!='completed'");
$works_ncom_count=mysql_num_rows($works_ncom);



$att=mysql_query("SELECT * FROM `attendance` WHERE `datem`='$ud' and `action`='present'");
$att_count=mysql_num_rows($att);
?><!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon.png">
    <title>Dashboard</title>
    <!-- Bootstrap Core CSS -->
    <link href="css/lib/bootstrap/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->

    <link href="css/lib/calendar2/semantic.ui.min.css" rel="stylesheet">
    <link href="css/lib/calendar2/pignose.calendar.min.css" rel="stylesheet">
    <link href="css/lib/owl.carousel.min.css" rel="stylesheet" />
    <link href="css/lib/owl.theme.default.min.css" rel="stylesheet" />
    <link href="css/helper.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:** -->
    <!--[if lt IE 9]>
    <script src="https:**oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https:**oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body class="fix-header fix-sidebar">
    <!-- Preloader - style you can find in spinners.css -->
    <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
			<circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" /> </svg>
    </div>
    <!-- Main wrapper  -->
    <div id="main-wrapper">
        <!-- header header  -->
        <?php include("nav.php"); ?>
        <!-- End Left Sidebar  -->
        <!-- Page wrapper  -->
        <div class="page-wrapper">
            <!-- Bread crumb -->
            <div class="row page-titles">
                <div class="col-md-5 align-self-center">
                    <h3 class="text-primary">Dashboard</h3> </div>
                
            </div>
            <!-- End Bread crumb -->
            <!-- Container fluid  -->
            <div class="container-fluid">
                <!-- Start Page Content -->
                <div class="row">
                    <div class="col-md-3">
                        <div class="card p-30">
                            <div class="media">
                                <div class="media-left meida media-middle">
                                    <span><i class="fa fa-users f-s-40 color-primary"></i></span>                                </div>
								<a href="users2.php">
                                <div class="media-body media-text-right">
                                    <h2><?php echo $usr_count;?></h2>
                                    <p class="m-b-0">Total workers</p>
                                </div></a>                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card p-30">
                            <div class="media">
                                <div class="media-left meida media-middle">
                                    <span><i class="fa fa-briefcase f-s-40 color-success"></i></span>                                </div>
								<a href="taskstatus2.php">
                                <div class="media-body media-text-right">
                                    <h2><?php echo $works_count;?></h2>
                                    <p class="m-b-0">works allocated</p>
                                </div></a>                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card p-30">
                            <div class="media">
                                <div class="media-left meida media-middle">
                                    <span><i class="	fa fa-handshake-o f-s-40 color-warning"></i></span>                                </div>
								<a href="taskcompleted2.php">
                                <div class="media-body media-text-right">
                                    <h2><?php echo $works_com_count;?></h2>
                                    <p class="m-b-0">completed works</p>
                                </div></a>                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card p-30">
                            <div class="media">
                                <div class="media-left meida media-middle">
                                    <span><i class="	fa fa-hourglass-1 f-s-40 color-danger"></i></span>                                </div>
								<a href="tasknotcompleted2.php">
                                <div class="media-body media-text-right">
                                    <h2><?php echo $works_ncom_count;?></h2>
                                    <p class="m-b-0">pending works</p>
                                </div></a>                            </div>
                        </div>
                    </div>
                </div>
				
				
				<div class="row">
                    
                    
                    <div class="col-md-3">
                        <div class="card p-30">
                            <div class="media">
                                <div class="media-left meida media-middle">
                                    <span><i class="	fa fa-database f-s-40 color-warning"></i></span>                                </div>
								<a href="view-projects.php">
                                <div class="media-body media-text-right">
                                    <h2><?php echo $pro_count;?></h2>
                                    <p class="m-b-0">Project</p>
                                </div></a>                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card p-30">
                            <div class="media">
                                <div class="media-left meida media-middle">
                                    <span><i class="fa fa-font f-s-40 color-danger"></i></span>                                </div>
								<a href="view-attendance.php">
                                <div class="media-body media-text-right">
                                    <h2><?php echo $att_count;?></h2>
                                    <p class="m-b-0">Attendance</p>
                                </div></a>                            </div>
                        </div>
                    </div>
                </div>
				

                <div class="row">
					<div class="col-lg-3">
                        <div class="card bg-dark">
                            <div class="testimonial-widget-one p-17">
                                <div class="testimonial-widget-one owl-carousel owl-theme">
                                    <?php
                                 $sel=mysql_query("SELECT * FROM `pro_tbl`"); 
								 //`pro_tbl`(`id`, `project_name`, `service_type`, `project_code`, `project_order`, `po_date`, `start_date`, `project_duration`, `customer_name`, `customer_contact`, `delivery_date`)
                                while($sel_array=mysql_fetch_array($sel))
                                    {
                                    
                                    ?>
                                 
                                     <div class="item">
                                        <div class="testimonial-content">
                                        <div class="testimonial-author"><h2>Our Projects</h2></div>
                                            <div class="testimonial-author">Project Name:   <?php echo $sel_array['project_name'];?></div>
                                            <div class="testimonial-author">Type:        <?php echo $sel_array['service_type'];?></div>
                                            <div class="testimonial-author-position">Company:   <?php echo $sel_array['project_code'];?></div>

                                            <div class="testimonial-text">
                                                <i class="fa fa-quote-left"></i>  <?php echo $sel_array['project_duration'];?>
                                                <i class="fa fa-quote-right"></i>                                            </div>
                                        </div>
                                    </div>
                                   <?php } ?>
                                     </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-9">
					
					
					                <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">View Project Details</h4>
                                <h6 class="card-subtitle">Export data to Copy, CSV, Excel, PDF & Print</h6>
                                <div class="table-responsive m-t-40">
                                    <table class="table">
                              <thead>
                                 <tr>
                                    <th><center>id</center></th>
                                    <th><center>
									Project Name</center></th>
                                    <th><center>Date of Completion</center></th>
									<th><center>Days Available</center></th>
                                 </tr>
                              </thead>
                              <tbody>
                                 <?php 
                                    $sel=mysql_query("SELECT * FROM `pro_tbl` ");
									//`pro_ass`(`id`, `project`, `prj_id`, `uid`, `user`, `status`, `reason`, `type`, `des`, `cmp`)
                                    while($sel_array=mysql_fetch_array($sel))
                                    {
                                    //$uid=$sel_array['project'];
									//$time=$sel_array['time'];
									$pid=$sel_array['id'];
										$prj=mysql_query("SELECT * FROM `pro_tbl` WHERE `id`='$pid'");
										$pj=mysql_fetch_array($prj);
										//`pro_tbl`(`id`, `project_name`, `service_type`, `project_code`, `project_order`, `po_date`, `start_date`, `project_duration`, `customer_name`, `customer_contact`, `delivery_date`)
                                    ?>								
                                 <tr>
                                    <td>
                                       <div class="round-img">
                                          <h2><?php echo $pj['id'];?></h2>
                                       </div>                                    </td>
                                    <td><center><?php  echo $pj['project_name'];?></center></td>
                                    <td><span><center><?php echo $pj['delivery_date'];?></center></span></td>
                                    <?php 
									$dt = date('Y-m-d');
									if( strtotime($pj['delivery_date']) > strtotime($dt) ) {?>
                                    <td><center><?php 
										// Calulating the difference in timestamps 
										
										$diff = strtotime($dt) - strtotime($pj['delivery_date']); 
										  
										// 1 day = 24 hours 
										// 24 * 60 * 60 = 86400 seconds 
										$days=abs(round($diff / 86400)); 
									echo $days . "<em> --days more--</em>";?></center></td><?php } 
									else
									{
									?>
									<td><center><em>--project completion date exceeded--</em></center></td>
                                    
                                    
                                 <?php } }?>
								 </tr>
                                 <tr>
                              </tbody>
                           </table>
                                 </div>
                            </div>
</div>
                            </div>
            </div>
			</div>
			</div>
                
						<!-- /# column -->
						
                         

				    
                <!-- End PAge Content -->
            </div>
            <!-- End Container fluid  -->
            <!-- footer -->
            <footer class="footer"> © 2018 All rights reserved. Crafted by <a href="https://nandhainfotech.com">Nandha Infotech</a></footer>
            <!-- End footer -->
        </div>
        <!-- End Page wrapper  -->
    </div>
    <!-- End Wrapper -->
    <!-- All Jquery -->
    <script src="js/lib/jquery/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="js/lib/bootstrap/js/popper.min.js"></script>
    <script src="js/lib/bootstrap/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="js/jquery.slimscroll.js"></script>
    <!--Menu sidebar -->
    <script src="js/sidebarmenu.js"></script>
    <!--stickey kit -->
    <script src="js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script>
    <!--Custom JavaScript -->


    <!-- Amchart -->
     <script src="js/lib/morris-chart/raphael-min.js"></script>
    <script src="js/lib/morris-chart/morris.js"></script>
    <script src="js/lib/morris-chart/dashboard1-init.js"></script>


	<script src="js/lib/calendar-2/moment.latest.min.js"></script>
    <!-- scripit init-->
    <script src="js/lib/calendar-2/semantic.ui.min.js"></script>
    <!-- scripit init-->
    <script src="js/lib/calendar-2/prism.min.js"></script>
    <!-- scripit init-->
    <script src="js/lib/calendar-2/pignose.calendar.min.js"></script>
    <!-- scripit init-->
    <script src="js/lib/calendar-2/pignose.init.js"></script>

    <script src="js/lib/owl-carousel/owl.carousel.min.js"></script>
    <script src="js/lib/owl-carousel/owl.carousel-init.js"></script>

    <!-- scripit init-->

    <script src="js/scripts.js"></script>
	
  
    <script src="js/lib/datatables/datatables.min.js"></script>
    <script src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/dataTables.buttons.min.js"></script>
    <script src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.flash.min.js"></script>
    <script src="js/lib/datatables/cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
    <script src="js/lib/datatables/cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
    <script src="js/lib/datatables/cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
    <script src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.html5.min.js"></script>
    <script src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js"></script>
    <script src="js/lib/datatables/datatables-init.js"></script>
</body>
</html>