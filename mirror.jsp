<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>
	<title>Student Tracker App</title>
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	
	<link type="text/css" rel="stylesheet" href="css/style.css">
</head>

<body>

<center>
<h1>Reddit Crawler</h1>
</center>



  
	<div class="container">
  <h2>Search Articles</h2>
  <div class="row">
  <div class="col-3 bg-success">
  <input class="form-control" id="myInput" type="text" placeholder="Search..">
  <br>
  </div>
  </div>
  <div class="col-9 bg-dark"><table class="table">
   <thead>
      <tr>
        <th>ID</th>
        <th>Article</th>
        <th>Subject</th>
        <th>Sub Id</th>
        <th>Title</th>
      </tr>
    </thead>
    <tbody id="myTable">
      <c:forEach var="tempSpider" items="${SPIDER_LIST}">
					
					<tr class="text-danger">
						<td> ${tempSpider.id} </td>
						<td> ${tempSpider.article_id} </td>
						<td> ${tempSpider.subject} </td>
						<td> ${tempSpider.subid} </td>
						<td> ${tempSpider.title} </td>
					</tr>
				
		</c:forEach>
    </tbody>
  </table>
  </div>
</div>

<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>

</body>


</html>








