<!DOCTYPE html>
<html>
<head><%@ page isELIgnored="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student List</title>
<!--link href="<c:url value="/resources/css/bootstrap.min.css" />"
 rel="stylesheet"-->
<script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
</head>
<body>
 <div class="container">
  <div class="col-md-offset-1 col-md-10">
   <h2>Debate - Registered Students</h2>
   <hr />

   <input type="button" value="Register Student"
    onclick="window.location.href='studentForm'; return false;"
    class="btn btn-primary" />
    <br/><br/>
   <div class="panel panel-info">
    <div class="panel-heading">
     <div class="panel-title">Student List</div>
    </div>
    <div class="panel-body">
     <table class="table table-striped table-bordered">
      <tr>
       <th>Student Id</th>
       <th>Name</th>
       <th>Department</th>
       <th>Country</th>
      </tr>

      <!-- loop over and print students -->
      <c:forEach var="tempStudent" items="${students}">

       <!-- construct an "update" link with id -->
       <c:url var="updateLink" value="/student/updateForm">
        <c:param name="studentId" value="${tempStudent.id}" />
       </c:url>

       <!-- construct an "delete" link with customer id -->
       <c:url var="deleteLink" value="/student/delete">
        <c:param name="studentId" value="${tempStudent.id}" />
       </c:url>

       <tr>
        <td>${tempStudent.id}</td>
        <td>${tempStudent.name}</td>
        <td>${tempStudent.department}</td>
        <td>${tempStudent.country}</td>

        <td>
         <!-- display the update link --> <a href="${updateLink}">Update</a>
         | <a href="${deleteLink}"
         onclick="if (!(confirm('Are you sure you want to delete this Student?'))) return false">Delete</a>
        </td>

       </tr>

      </c:forEach>

     </table>

    </div>
   </div>
  </div>

 </div>
</body>
</html>