<%@include file="header.jsp"%>

<!-- *********************************** PAGE CONTENT ************************************ -->
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Enquiry<small>All Enquiry</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">Attendance</li>
		</ol>
	</section>

	<div class="content">
		<!-- START CUSTOM TABS -->
		<div class="row">
			<div class="col-md-12">
				<!-- Custom Tabs -->
				<div class="nav-tabs-custom">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#tab_1" data-toggle="tab">All Enquiries</a></li>
						<li><a href="#tab_2" data-toggle="tab">Detail Enquiry</a></li>
					</ul>


					<div class="tab-content">

						<div class="tab-pane active" id="tab_1">
							<div class="row">
								
								<div class="col-md-4">
									<div class="form-group">
										<label>Date:</label>
										<div class="input-group date">
											<div class="input-group-addon">
												<i class="fa fa-calendar"></i>
											</div>
											<input type="date" class="form-control pull-right">
										</div>
										<!-- /.input group -->
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label>Course</label> <select class="form-control">
											<option>Java/J2EE</option>
											<option>Java/Selenium</option>
											<option>Python-Basic</option>
										</select>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label>Get Inquiries</label>
										<button type="button"
											class="btn btn-block btn-success btn-flat">Get Inquiries !</button>
									</div>
								</div>
							</div>

							<!-- Data Table Code -->
							<div class="box">
								<!-- <div class="box-header">
              <h3 class="box-title">Data Table With Full Features</h3>
            </div> -->
								<!-- /.box-header -->
								<div class="box-body">
									<table id="example1" class="table table-bordered table-striped">
										<thead>
											<tr>
												<th>Student</th>
												<th>Email</th>
												<th>Mobile</th>
												<th>Course</th>
												<th>Handle By</th>
												<th>Details</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Darshit Rabadiya</td>
												<td>darshit.rabadiya@gmail.com</td>
												<td>8866888662</td>
												<td>Java/J2EE Professionals</td>
												<td>Seema</td>
												<td><button type="button"
											class="btn btn-block btn-warning btn-flat btn-xs">Detail !</button></td>
											</tr>
											<tr>
												<td>Kunal Deshkar</td>
												<td>kunal.d@gmail.com</td>
												<td>8866877777</td>
												<td>Java/J2EE Expert</td>
												<td>Seema</td>
												<td><button type="button"
											class="btn btn-block btn-warning btn-flat btn-xs">Detail !</button></td>
											</tr>
											<tr>
												<td>Neelam Joshi</td>
												<td>neelam.j@gmail.com</td>
												<td>8866877977</td>
												<td>Java/Selenium Expert</td>
												<td>Seema</td>
												<td><button type="button"
											class="btn btn-block btn-warning btn-flat btn-xs">Detail !</button></td>
											</tr>
											<tr>
												<td>Neelam Joshi</td>
												<td>neelam.j@gmail.com</td>
												<td>8866877977</td>
												<td>Java/Selenium Professionals</td>
												<td>Varsha</td>
												<td><button type="button"
											class="btn btn-block btn-warning btn-flat btn-xs">Detail !</button></td>
											</tr>
											<tr>
												<td>Seema Oshwal</td>
												<td>seema.oswal@gmail.com</td>
												<td>8866877999</td>
												<td>Java/Selenium Professionals</td>
												<td>Varsha</td>
												<td><button type="button"
											class="btn btn-block btn-warning btn-flat btn-xs">Detail !</button></td>
											</tr>
											<tr>
												<td>Kiran D</td>
												<td>kiran.d@gmail.com</td>
												<td>8866844999</td>
												<td>Java/Selenium Professionals</td>
												<td>Varsha</td>
												<td><button type="button"
											class="btn btn-block btn-warning btn-flat btn-xs">Detail !</button></td>
											</tr>

										</tbody>
										<tfoot>
											<tr>
												<th>Student</th>
												<th>Email</th>
												<th>Mobile</th>
												<th>Course</th>
												<th>Handle By</th>
											</tr>
										</tfoot>
									</table>
								</div>
								<!-- /.box-body -->
							</div>
							<!-- /.box -->
							<!-- Data Table Code End -->
						</div>
						<!-- /.tab-pane -->

						<div class="tab-pane" id="tab_2">

							<div class="row">
								<div class="col-md-3">
									<div class="form-group">
										<label>Student Mobile</label> <input type="text"
											class="form-control">
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label>Attendance History</label>
										<button type="button"
											class="btn btn-block btn-success btn-flat">Click Me
											!</button>
									</div>
								</div>
							</div>

							<!-- Data Table Code -->
							<div class="box">
								<div class="box-header">
									<h3 class="box-title">Darshit Rabadiya - Java/J2EE
										Professional</h3>
								</div>
								<!-- /.box-header -->
								<div class="box-body">
									<table id="example3" class="table table-bordered table-striped">
										<thead>
											<tr>
												<th>Course</th>
												<th>Topic</th>
												<th>Attended time</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Java/J2EE Professional</td>
												<td>Basics</td>
												<td>Weekday 07:30 Morning</td>
											</tr>
											<tr>
												<td>Java/J2EE Professional</td>
												<td>Basics</td>
												<td>Weekday 07:30 Morning</td>
											</tr>
											<tr>
												<td>Java/J2EE Professional</td>
												<td>Polymorphism</td>
												<td>Weekday 07:30 Morning</td>
											</tr>
											<tr>
												<td>Java/J2EE Professional</td>
												<td>Inheritance</td>
												<td>Weekday 07:30 Morning</td>
											</tr>
											<tr>
												<td>Java/J2EE Professional</td>
												<td>Encapsulation</td>
												<td>Weekday 07:30 Morning</td>
											</tr>
											<tr>
												<td>Java/J2EE Professional</td>
												<td>Collection</td>
												<td>Weekday 07:30 Morning</td>
											</tr>
											<tr>
												<td>Java/J2EE Professional</td>
												<td>Abstraction</td>
												<td>Weekday 07:30 Morning</td>
											</tr>
											<tr>
												<td>Java/J2EE Professional</td>
												<td>Reflection</td>
												<td>Weekday 07:30 Morning</td>
											</tr>
											<tr>
												<td>Java/J2EE Professional</td>
												<td>String</td>
												<td>Weekday 07:30 Morning</td>
											</tr>
											<tr>
												<td>Java/J2EE Professional</td>
												<td>Jsp</td>
												<td>Weekday 07:30 Morning</td>
											</tr>
											<tr>
												<td>Java/J2EE Professional</td>
												<td>Servlet</td>
												<td>Weekday 07:30 Morning</td>
											</tr>
											<tr>
												<td>Java/J2EE Professional</td>
												<td>Hibernate</td>
												<td>Weekday 07:30 Morning</td>
											</tr>
											<tr>
												<td>Java/J2EE Professional</td>
												<td>Spring</td>
												<td>Weekday 07:30 Morning</td>
											</tr>

										</tbody>
										<tfoot>
											<tr>
												<th>Course</th>
												<th>Topic</th>
												<th>Attended time</th>
											</tr>
										</tfoot>
									</table>
								</div>
								<!-- /.box-body -->
							</div>
							<!-- /.box -->
							<!-- Data Table Code End -->
						</div>
						<!-- /.tab-pane -->
					</div>
					<!-- /.tab-content -->
				</div>
				<!-- nav-tabs-custom -->
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row -->
		<!-- END CUSTOM TABS -->
	</div>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<!-- *********************************** PAGE CONTENT END ************************************ -->
<%@include file="footer.jsp"%>



