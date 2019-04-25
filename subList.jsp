<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>
  <title>XIBALANQ</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  
  <style>
  body {
  background-image: url("back.jpg");
  -webkit-background-size: cover;
  -moz-background-size: cover;
  background-size: cover;
  -o-background-size: cover;
  background-repeat: no-repeat;
}
p {
color: red;
}
h3{
color: grey;
}

table{
color: grey;
position: center;
}
li {
    display: inline-block;
    margin-right: 75px;
  }
  </style>
  
  </head>

<body class=col-sm>

	<div id="wrapper">
		<div class="text-center">
  <h1 style= "color:white">Reddit List</h1>
</div>
	</div>

	 <div id="container">
	
		<div id="content">
				
			<table align="center" class=col-sm>
			
				<tr>
					<th >Id</th>
					<th >Name</th>
				</tr>
				
				<c:forEach var="subReddit" items="${SUBREDDIT_LIST}">
					
					<c:url var="tempLink" value="SubRedditControllerServlet">
						<c:param name="command" value="LOAD" />
						<c:param name="subRedditId" value="${subReddit.id}" />
					</c:url>
					
					<c:url var="deleteLink" value="SubRedditControllerServlet">
						<c:param name="command" value="DELETE" />
						<c:param name="subRedditId" value="${subReddit.id}" />
					</c:url>
					
					<tr>
						<td> ${subReddit.id} </td>
						<td> ${subReddit.name} </td>
						<td>
							<a href="${deleteLink}"
							onclick="if (!(confirm('Are you sure you want to delete this reddit?'))) return false">
							Delete</a>	
						</td>
					</tr>
				</c:forEach>	
			</table>
			<ul><li><a href="subredditlist.jsp">Add Reddits</a></li>
			<li><a href="home.jsp">Back Home</a></li></ul>
	
	</div>
</body>


</html>




