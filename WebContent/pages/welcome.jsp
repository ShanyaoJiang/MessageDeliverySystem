<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Welcome to Message Delivery System!</title>
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/my.css" rel="stylesheet">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/byLocation.js"></script>
<script src="js/jquery.twbsPagination.js" type="text/javascript"></script>
</head>
<body>
	<div>
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<div class="navbar-header">
				<a class="navbar-brand font1" href="#">WJTeam</a>
			</div>
			<div>
				<ul class="nav navbar-nav font1">
					<li class="active"><a href="#">Location</a></li>
					<li><a href="#" disabled>Date</a></li>
					<li><a href="#" disabled>Tag</a></li>
				</ul>
			</div>
			<div id="div4p" class="navbar-form pull-right div13">
				<a class="btn btn-primary font3" href="#">Log out</a>
			</div>
			<div id="div4n" class="navbar-form pull-right ">
				<a class="btn btn-primary font3" href="registerpage">Sign up</a> <a
					class="btn btn-default font3" href="loginpage">Sign in</a>
			</div>
		</nav>
		<div id="div4g" class="div6">
			<div class="div7">
				<h1>Message Delivery System</h1>
				<span>Shanyao Jiang and Boyu Wang</span> <span
					style="font-style: italic">@WJTeam</span>
			</div>
		</div>
		<div id="div4l" class="div2"></div>
		<div id="div4d" class="div3">
			<form action="loginUser" method="POST">
				<div class="form-group">
					<label>Email address</label> <input type="email" name="user.email"
						class="form-control" placeholder="Enter email">
				</div>
				<div class="form-group">
					<label>Password</label> <input type="password" name="user.password"
						class="form-control" placeholder="Enter password">
				</div>
				<div class="checkbox div4">
					<label> <input type="checkbox" disabled>Remember me
					</label>
				</div>
				<div class="pull-right">
					<button type="submit" class="btn btn-default font3">Sign
						in</button>
					<a class="btn btn-primary font3" href="registerpage">Join us</a>
				</div>
			</form>
		</div>
	</div>
	<div id="div4p" class="div14">
		<table id="table4p" class="table table-striped table-bordered table-hover">
			<thead>
				<tr>
					<th>Title</th>
					<th>Author</th>
				</tr>
			</thead>
			<tbody id="tbody4p">
			</tbody>
		</table>
		<ul id="pagination" class="pagination"></ul>	
	</div>
	<div class="div10">
		<form action="submitMessage" method="POST">
			<table>
				<tr>
					<td><label>Title </label></td>
					<td><input type="text" name="msg.title"
						class="form-control td1" placeholder="Enter title" size="80"></td>
				</tr>
				<tr style="height: 2px"></tr>
				<tr>
					<td><label>Content</label></td>
					<td><textarea name="msg.content" class="form-control td1"
							rows="9" placeholder="Enter content"></textarea></td>
				</tr>
				<tr>
					<td><label>Location</label></td>
					<td><select name="msg.location" class="form-control td2">
							<option></option>
							<option>NY</option>
							<option>CA</option>
							<option>NH</option>
							<option>NJ</option>
							<option>GA</option>
							<option>CT</option>
							<option>DE</option>
							<option>MA</option>
							<option>PA</option>
							<option>SC</option>
							<option>OH</option>
							<option>RL</option>
							<option>MD</option>
							<option>VA</option>
					</select></td>
				</tr>
				<tr>
					<td><label>Tag</label></td>
					<td><select class="form-control td2">
							<option>Coming Soon</option>
					</select></td>
				</tr>
			</table>
			<div class="checkbox div4 div12">
				<label> <input type="checkbox" disabled>Dealer?
				</label>
			</div>
			<div class="div11">
				<button type="submit" class="btn btn-primary btn-lg font3">Submit</button>
			</div>

		</form>

	</div>
	<div class="footer">
		<div class="div7">
			<span><br>Version 1.0.0</span> <span style="font-style: italic">@WJTeam</span>
		</div>
	</div>
</body>
</html>
