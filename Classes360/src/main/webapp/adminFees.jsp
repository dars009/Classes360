<%@include file="header.jsp"%>

<!-- *********************************** PAGE CONTENT ************************************ -->
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Fees<small>All Courses</small>
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
						<li class="active"><a href="#tab_1" data-toggle="tab">All
								Course Fees Details</a></li>
						<li><a href="#tab_2" data-toggle="tab">Detail</a></li>
					</ul>

					<div class="tab-content">
						<div class="tab-pane active" id="tab_1">
				<form action="addCourse" method="post">
							<div class="row">
								<div class="col-md-3">
									<div class="form-group">
										<label>Name</label>
										<div class="input-group date">
											<div class="input-group-addon">
												<i class="fa fa-calendar"></i>
											</div>
											<input type="text" name="coursename" class="form-control pull-right">
										</div>
										<!-- /.input group -->
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label>Duration</label>
										<select class="form-control" name="duration">
											<option>15 Days</option>
											<option>1 Month</option>
											<option>2 Month</option>
											<option>3 Month</option>
											<option>4 Month</option>
											<option>5 Month</option>
										</select>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label>Fees</label>
										<div class="input-group date">
											<div class="input-group-addon">
												<i class="fa fa-calendar"></i>
											</div>
											<input type="text" name="feesamount" class="form-control pull-right">
										</div>
										<!-- /.input group -->
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label>Add Course</label>
										<button type="submit"
											class="btn btn-block btn-success btn-flat">Add Course</button>
									</div>
								</div>
							</div>
					</form>
							<!-- Data Table Code -->
							<div class="box">
								<!-- <div class="box-header">
              <h3 class="box-title">Data Table With Full Features</h3>
            </div> -->


				<sql:query dataSource="${webappDataSource}" var="result">
					SELECT * FROM fees;
				</sql:query>

								<!-- /.box-header -->
								<div class="box-body">
									<table id="example1" class="table table-bordered table-striped">
										<thead>
											<tr>
												<th>Course ID</th>
												<th>Name</th>
												<th>Duration</th>
												<th>Fees</th>
												<th>Action</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="fees" items="${result.rows}">
												<tr>
													<td>${fees.feesid}</td>
													<td>${fees.coursename}</td>
													<td>${fees.duration}</td>
													<td>${fees.feesamount}</td>

													<td><button type="button" value="${enquiry.enquiryid}"
															class="btn btn-block btn-warning btn-flat btn-xs">Detail
															!</button></td>
												</tr>
											</c:forEach>
										</tbody>
										<tfoot>
											<tr>
												<th>Course ID</th>
												<th>Name</th>
												<th>Duration</th>
												<th>Fees</th>
												<th>Action</th>
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



