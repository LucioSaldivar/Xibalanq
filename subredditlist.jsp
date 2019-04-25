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
<body>
      <div id="wrapper">
		<div id="header">
			<h1 style= "color:white">The Add Page</h1>
		</div>
	</div>
	
	<div id="container">
		<h3>Add SubReddit</h3>
		
		<form action="SubRedditControllerServlet" method="GET">
		
			<input type="hidden" name="command" value="ADD" />
			
			
			
			<table>
				<tbody>
					
					<tr>
						<td><label>SubReddit?</label></td>
						<td><input type="text" name="name" /></td>
					</tr>
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save" /></td>
					</tr>
					
				</tbody>
			</table>
		</form>
		<p>
			<a href="theView.jsp">Back to Home</a>
		</p>
	</div>
</body>





