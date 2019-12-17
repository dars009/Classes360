<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.Statement"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Classes 360</title>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
  <link rel="stylesheet" href="bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
  <link rel="stylesheet" href="bower_components/morris.js/morris.css">
  <link rel="stylesheet" href="bower_components/jvectormap/jquery-jvectormap.css">
  <link rel="stylesheet" href="bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
  <link rel="stylesheet" href="bower_components/bootstrap-daterangepicker/daterangepicker.css">
  <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-blue sidebar-mini">
 	
 	<% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
	response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
	response.setHeader("Expires", "0"); // Proxies. %> 
	
	<%@include file="connection.jsp"%>
	
	<% Integer useridheder = (Integer) session.getAttribute("usridInSession"); %>
	<% String useremailheader = (String) session.getAttribute("usremailInSession"); %>
    <% 
	 if(useridheder == null)
		  response.sendRedirect(request.getContextPath() + "/c360Login.jsp");
	%> 
<div class="wrapper">
  <header class="main-header">
    <a href="index2.html" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>360</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg">Classes<b>360</b></span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
          <li class="dropdown messages-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-envelope-o"></i>
              <span class="label label-success">4</span>
            </a>
          </li>
          <!-- Notifications: style can be found in dropdown.less -->
          <li class="dropdown notifications-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-bell-o"></i>
              <span class="label label-warning">10</span>
            </a>
          </li>
         
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
              <span class="hidden-xs"><%=useremailheader%></span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                <p>
                  Neelam Madam - Developer
                  <small>Member since Nov. 2000</small>
                </p>
              </li>
              <!-- Menu Body -->
              
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="#" class="btn btn-default btn-flat">Profile</a>
                </div>
                <div class="pull-right">
                  <a href="#" class="btn btn-default btn-flat">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>
        <li>
          <a href="adminDeshboard.jsp">
            <i class="fa fa-dashboard"></i> <span>Dashboard</span>
          </a>
        </li>
         <li>
          <a href="adminEnquiry.jsp">
            <i class="fa fa-calendar-check-o"></i>
            <span>Inquiry</span>
          </a>
        </li>
        <li>
          <a href="adminAttendance.jsp">
            <i class="fa fa-street-view"></i>
            <span>Attendance</span>
          </a>
        </li>
        <li>
          <a href="#">
            <i class="fa fa-calendar"></i> <span>Schedule</span>
          </a>
        </li>
        <li>
          <a href="#">
            <i class="fa fa-users"></i> <span>Students</span>
            <span class="pull-right-container">
            </span>
          </a>
        </li>
        <li>
          <a href="adminFees.jsp">
            <i class="fa fa-rupee"></i>
            <span>Fees</span>
          </a>
        </li>
         <li>
          <a href="#">
            <i class="fa fa-pie-chart"></i>
            <span>Batches</span>
          </a>
        </li>
        <li>
          <a href="#">
            <i class="fa fa-edit"></i> <span>Courses / Syllabus</span>
          </a>
        </li>
        <li>
          <a href="#">
            <i class="fa fa-file-code-o"></i> <span>Downloads</span>
          </a>
        </li>
        <li>
          <a href="#">
            <i class="fa  fa-file-text-o"></i> <span>Study Materials</span>
          </a>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-envelope-square"></i>
            <span>Marketing</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="#"><i class="fa fa-circle-o"></i> SMS</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Email</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-area-chart"></i><span>Reports</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="#"><i class="fa fa-circle-o"></i> Simple tables</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Data tables</a></li>
          </ul>
        </li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>
	
</body>
</html>