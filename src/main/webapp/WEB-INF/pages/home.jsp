<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList" %>
<%@page import="com.lit.hw1.dto.Student" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="author" content="Chhorn Elit">
  <meta lang="en">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <!-- CSS Library -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/lib/bootstrap.min.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/lib/font-awesome-4.3.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/lib/bootstrap-select.min.css">
  <!-- End CSS Library -->

  <!-- Custom StyleSheet --> 
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/index.css">
  <!-- End Custom StyleSheet --> 

  <!-- Javascript Library -->
  <script src="${pageContext.request.contextPath}/resources/js/lib/jquery-2.1.4.min.js"></script>    
  <script src="${pageContext.request.contextPath}/resources/js/lib/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/lib/bootstrap-select.min.js"></script>  
  <!-- End Javascript Library -->
  
  <!-- Custom Javascript --> 
  <script src="${pageContext.request.contextPath}/resources/js/index.js"></script>
  <!-- End Custom Javascript -->
</head>
<body>
${message}
  <div id="main" class="container-fluid">
    <div class="row col-sm-11 center-block">

      <div class="col-sm-12 card"> 
        <div class="col-sm-12">
          <h1>All Student</h1>
          <hr> 
          <form role="form" class="col-sm-12 search-bar">         
          <!-- Table User List -->
          <div class="table-responsive">       
            <table class="table table-striped table-hover">
              <thead>
                <tr class="info">
                  <th>ID</th>
                  <th>First Name</th>
                  <th>Last Name</th>
                  <th>Classroom</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
                  <%
                  	ArrayList<Student> a = new ArrayList<Student>();
                  	a = (ArrayList<Student>) request.getAttribute("listStudent");
                  	for(int i=0;i<a.size();i++){
                  %>                  
					<tr> 
						<td><%=a.get(i).getId()%></td>
						<td><%=a.get(i).getFirstname()%></td>
						<td><%=a.get(i).getLastname()%></td>
						<td><%=a.get(i).getClassroom()%></td>
						<td>
							<a href="#">delete</a>
            				<a href="${pageContext.request.contextPath}/update">update</a>
            				<a href="${pageContext.request.contextPath}/detail">detail</a>
            			</td>
					</tr>
				  <%} %>
              </tbody>   
            </table> 
            <a href="${pageContext.request.contextPath}/">home</a>
            <a href="${pageContext.request.contextPath}/add">add</a>
          </div>
          <!-- End Table User List -->    
        </div> 
      </div>
    </div>
  </div>
</body>
</html>