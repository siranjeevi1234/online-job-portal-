<?php
   include('config.php');
   session_start();
if($_SESSION['id']=='')
{
?>
<script>
window.location='index.php';
</script>


<?php }
   //session_start();
   $udes=$_SESSION['designation'];
   $usid=$_SESSION['id'];
   $uname=$_SESSION['name'];
   $all="all";
    $uid=$_SESSION['name'];
   $all="all";
   if(isset($_POST['send']))
    {  $uid=$_POST['uid'];
   	   $time=$_POST['time'];
	   $task=mysql_query("SELECT * FROM `tsk_reason` WHERE `uid`='$uid' and `time`='$time'");
	   $count=mysql_num_rows($task);
	   ?>
	   <script>
	   alert("<?php echo $count;?>");
	   </script>
	   <?php
	   $reason_cnt=$count+1;
	  
       $reason=$_POST['reason'];
    	mysql_query("UPDATE `task_tbl` SET `reason`='$reason_cnt' WHERE `uname`='$uid' and `time`='$time'");
		mysql_query("INSERT INTO `tsk_reason`(`id`, `uid`, `time`, `reason_cnt`, `reason`) VALUES (NULL,'$uid','$time','$reason_cnt','$reason')");
   
   }
 
   /*if(isset($_POST['status']))
   {
   $name=$_POST['name'];
   $status=$_POST['status'];
   $work=mysql_query("SELECT * FROM `task_tbl` WHERE `designation`='$udes'");
   mysql_query("UPDATE `task_tbl` SET `status`='$status' WHERE `name`='$name'");
   }*/
   if(isset($_POST['start']))
   {
   $uid=$_POST['uid'];
   $time=$_POST['time'];
   mysql_query("UPDATE `task_tbl` SET `status`='start' WHERE `uname`='$uid' and `time`='$time'") or die("error");
   mysql_query("UPDATE `task_log` SET `start`='start' WHERE `uid`='$uid' and `time`='$time'");
    ?>
   <script>
   alert("started<?php echo $time; echo "<br>". $uid;?>");
   </script>
   <?php
   }
   if(isset($_POST['comp']))
   {
   $uid=$_POST['uid'];
   $time=$_POST['time'];
   mysql_query("UPDATE `task_tbl` SET `status`='completed' WHERE `uname`='$uid' and `time`='$time'");
   mysql_query("UPDATE `task_log` SET `completed`='completed' WHERE `uid`='$uid' and `time`='$time'");
    ?>
   <script>
   alert("comp");
   </script>
   <?php
   }
   if(isset($_POST['not_comp']))
   {
   $uid=$_POST['uid'];
   $time=$_POST['time'];
   mysql_query("UPDATE `task_tbl` SET `status`='not_completed' WHERE `uname`='$uid' and `time`='$time'");
   mysql_query("UPDATE `task_log` SET `not_completed`='not_completed' WHERE `uid`='$uid' and `time`='$time'");
    ?>
   <script>
   alert("not comp");
   </script>
   <?php
   }

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

$ypro=mysql_query("SELECT * FROM `pro_ass` WHERE `user`='$uid'");
$ypro_count=mysql_num_rows($ypro);

$works_com_all=mysql_query("SELECT * FROM `task_tbl` WHERE  `uname`!='$uid'");
$works_com_count_all=mysql_num_rows($works_com_all);

$works_com=mysql_query("SELECT * FROM `pro_ass` WHERE `status`='completed' and `user`='$uid' or `user`='$all'");
$works_com_count=mysql_num_rows($works_com);


$works_ncom=mysql_query("SELECT * FROM `pro_ass` WHERE `status`!='completed' and `user`='$uid' or `user`='$all'");
$works_ncom_count=mysql_num_rows($works_ncom);
   
   
?>
<!DOCTYPE html>
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
      <title>user dashboard</title>
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
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" />
         </svg>
      </div>
      <!-- Main wrapper  -->
      <div id="main-wrapper">
      <!-- header header  -->
      
      <!-- End header header -->
      <!-- Left Sidebar  -->
      <?php include('nav-user.php'); ?>
      <!-- End Left Sidebar  -->
      <!-- Page wrapper  -->
      <!-- End Left Sidebar  -->
      <!-- Page wrapper  -->
      <div class="page-wrapper">
      <!-- Bread crumb -->
      <div class="row page-titles">
         <div class="col-md-5 align-self-center">
            <h3 class="text-primary">Dashboard</h3>
         </div>
         <div class="col-md-7 align-self-center">
            <ol class="breadcrumb">
               <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
               <li class="breadcrumb-item active">Dashboard</li>
            </ol>
         </div>
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
                                    <span><i class="fa fa-user f-s-40 color-primary"></i></span>                                </div>
								<a href="prostatus.php">
                                <div class="media-body media-text-right">
                                    <h2><?php echo $works_com_count_all; ?></h2>
                                    <p class="m-b-0">Task </p>
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
                                    <p class="m-b-0">Completed work</p>
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
                                    <p class="m-b-0">Pending Work</p>
                                </div></a>                            </div>
                        </div>
                    </div>
					<div class="col-md-3">
                        <div class="card p-30">
                            <div class="media">
                                <div class="media-left meida media-middle">
                                    <span><i class="	fa fa-database f-s-40 color-danger"></i></span>                                </div>
								<a href="view-projects.php">
                                <div class="media-body media-text-right">
                                    <h2><?php echo $pro_count;?></h2>
                                    <p class="m-b-0">Project</p>
                                </div></a>                            </div>
                        </div>
                    </div>
                    
                </div>
		 
         <div class="card">
                     <div class="card-title">
                        <h4>Your Tasks </h4>
                     </div>
                     <div class="card-body">
                        <div class="table-responsive">
                           <table class="table">
                              <thead>
                                 <tr>
                                    <th><center>id</center></th>
                                    <th><center>
									Name</center></th>
                                    <th><center>description</center></th>
                                    <th><center>last date</center></th>
                                    <th><center>username</center></th>
                                    <th><center>Status</center></th>
                                    <th><center>reason</center></th>
                                 </tr>
                              </thead>
                              <tbody>
                                 <?php 
                                    $sel=mysql_query("SELECT * FROM `task_tbl` WHERE `uname`='$usid' or `uname`='all'");
                                    while($sel_array=mysql_fetch_array($sel))
                                    {
                                    $uid=$sel_array['uname'];
									$time=$sel_array['time'];
                                    ?>
									<script>
									alert("<?php echo $time;?>");
									</script>
                                 <tr>
                                    <td>
                                       <div class="round-img">
                                          <h2><?php echo $sel_array['id'];?></h2>
                                       </div>
                                    </td>
                                    <td><center><?php  echo $sel_array['name'];?></center></td>
                                    <td><span><center><?php echo $sel_array['description'];?></center></span></td>
                                    <td><span><center><?php echo $sel_array['date_of_completion'];?></center></span></td>
                                    <td><center><?php echo $uname;?></center></td>
                                    <td>
                                       <span class="badge badge">
                                          <form method="post">
                                            <?php 
											$log=mysql_query("SELECT * FROM `task_log` WHERE `uid`='$uid' and `time`='$time'");
											$lg=mysql_fetch_array($log);
											if($lg['start']!=="start")
                                            {?>
                                             <button type="submit" class="btn btn-primary" name="start" value="start">Start</button>
                                             <?php
                                          }
										  if($lg['completed']!=="completed")
										  {
										  if((($lg['completed']!=="completed") or ($lg['not_completed']=="not_completed")) and ($lg['start']=="start"))
                                            {?>
                                             <button type="submit" class="btn btn-success" name="comp" value="completed">completed</button>
                                             <?php
                                          }
                                             if((($lg['not_completed']!=="not_completed") or ($lg['not_completed']=="not_completed")) and ($lg['start']=="start"))
                                            {?>
                                             <button type="submit" class="btn btn-danger" name="not_comp" value="not_completed">not completed</button>
                                             <?php
                                          }}?>
                                             
											 
                                             <input type="hidden" name="uid" value="<?php echo $uid; ?>"/>
											 <input type="hidden" name="time" value="<?php echo $time; ?>">
                                          </form>
                                       </span>
									   <?php
									   if(($lg['completed']=="completed"))
                                            {?>
                                             <center><em>--Completed Successfully--</em></center>
                                             <?php
                                          }?>
                                    </td>
                                    <td>
                                       <?php if($sel_array['status']=="not_completed")
                                          {
                                          
                                          ?>
                                       <form method="post">
									   		<input type="hidden" name="uid" value="<?php echo $uid; ?>"/>
											 <input type="hidden" name="time" value="<?php echo $time; ?>">
                                          <textarea class="form-control" id="exampleTextarea" rows="3" placeholder="Message" name="reason"></textarea>
                                          <button type="submit" name="send" class="btn btn-info">Submit</button>
                                       </form>
                                       <?php
                                          } 
                                          
                                          ?>
                                    </td>
                                 <?php } ?>
								 
								 </tr>
                                 <tr>
                              </tbody>
                           </table>
                        </div>
                            </div>
</div>
			</div>
			
            <!-- End Container fluid  -->
            <!-- footer -->
            <footer class="footer"> � 2018 All rights reserved. Crafted by <a href="https://nandhainfotech.com">Nandha Infotech</a></footer>
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












<td>
                                       <span class="badge badge">
                                          <form method="post">
                                            <?php 
											$log=mysql_query("SELECT * FROM `task_log` WHERE `uid`='$uid' and `time`='$time'");
											$lg=mysql_fetch_array($log);
											if($lg['start']!=="start")
                                            {?>
                                             <button type="submit" class="btn btn-primary" name="start" value="start">Start</button>
                                             <?php
                                          }
										  if($lg['completed']!=="completed")
										  {
										  if((($lg['completed']!=="completed") or ($lg['not_completed']=="not_completed")) and ($lg['start']=="start"))
                                            {?>
                                             <button type="submit" class="btn btn-success" name="comp" value="completed">completed</button>
                                             <?php
                                          }
                                             if((($lg['not_completed']!=="not_completed") or ($lg['not_completed']=="not_completed")) and ($lg['start']=="start"))
                                            {?>
                                             <button type="submit" class="btn btn-danger" name="not_comp" value="not_completed">not completed</button>
                                             <?php
                                          }}?>
                                             
											 
                                             <input type="hidden" name="uid" value="<?php echo $uid; ?>"/>
											 <input type="hidden" name="time" value="<?php echo $time; ?>">
                                          </form>
                                       </span>
									   <?php
									   if(($lg['completed']=="completed"))
                                            {?>
                                             <center><em>--Completed Successfully--</em></center>
                                             <?php
                                          }?>
                                    </td>
									
									<td>
                                       <?php if($sel_array['status']=="not_completed")
                                          {
                                          
                                          ?>
                                       <form method="post">
									   		<input type="text" name="uid" value="<?php echo $uid; ?>"/>
											 <input type="text" name="time" value="<?php echo $time; ?>">
                                          <textarea class="form-control" id="exampleTextarea" rows="3" placeholder="Message" name="reason"></textarea>
                                          <button type="submit" name="send" class="btn btn-info">Submit</button>
                                       </form>
                                       <?php
                                          } 
                                          
                                          ?>
                                    </td>