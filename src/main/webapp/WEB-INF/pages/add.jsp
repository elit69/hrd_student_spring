<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="author" content="Chhorn Elit">
<meta lang="en">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- CSS Library -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/lib/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/lib/font-awesome-4.3.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/lib/bootstrap-select.min.css">
<!-- End CSS Library -->

<!-- Custom StyleSheet -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/index.css">
<!-- End Custom StyleSheet -->

<!-- Javascript Library -->
<script
	src="${pageContext.request.contextPath}/resources/js/lib/jquery-2.1.4.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/lib/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/lib/bootstrap-select.min.js"></script>
<!-- End Javascript Library -->

<!-- Custom Javascript -->
<script src="${pageContext.request.contextPath}/resources/js/index.js"></script>
<!-- End Custom Javascript -->
</head>
<body>
	<a href="${pageContext.request.contextPath}/">home</a>
	<div id="main" class="container-fluid">
		<div class="row col-sm-11 center-block">
			<div class="col-sm-12 card form-horizontal">

				<div id="showErrorAdd" class='alert alert-danger'
					style='padding: 20px !important'>
					<center>
						<strong>Insert Error!</strong> Please Input All Fields!
					</center>
				</div>
				<div id="showSuccessAdd" class='alert alert-success'
					style='padding: 20px !important'>
					<center>
						<strong>Insert Successfully!</strong>
					</center>
				</div>
				<h1>Add Student</h1>
				<hr>
				<mvc:form action="${pageContext.request.contextPath}/add"
					method="POST">
					<div class="col-sm-12 ">
						<div class="col-sm-8 center-block" style="margin-bottom: 40px;">
							<div class="form-group">
								<label class="col-sm-3">First Name:</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="firstname"
										placeholder="Enter First Name" maxlength="100">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3">Last Name:</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="lastname"
										placeholder="Enter Last Name" maxlength="100">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3">Classroom: </label>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="classroom" 
										placeholder="Enter Classroom" maxlength="50">
								</div>
							</div>
						</div>
						<div class="col-sm-6 center-block">
							<div class="form-group">
								
								<button type="submit" id="btnAdd" class="btn btn-primary"
									style="width: 200px;">
									<i class="fa fa-plus-circle"></i>&nbsp;&nbsp;Add
								</button>
								<button type="reset" id="btnClear" class="btn btn-primary pull-right"
									style="width: 200px;">
									<i class="fa fa-times-circle"></i>&nbsp;&nbsp;Clear
								</button>
								</button>
							</div>
						</div>
					</div>
				</mvc:form>
			</div>
		</div>
	</div>
</body>
</html>