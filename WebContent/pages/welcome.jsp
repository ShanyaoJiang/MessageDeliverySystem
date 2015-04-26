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
	    <div class="navbar-form pull-right">
                <a class="btn btn-primary font3" href="registerpage">Sign up</a>
                <a class="btn btn-default font3" href="loginpage">Sign in</a>
            </div>
        </nav>
        <div id="div4g" class="div6">
            <div class = "div7">
                <h1>Message Delivery System</h1>
                <span>Shanyao Jiang and Boyu Wang</span>
                <span style="font-style:italic">@WJTeam</span>
            </div>
        </div>
        <div id="div4l" class="div2"></div>
        <div id="div4d" class="div3">
            <form action="loginUser" method="POST">
                <div class="form-group">
                    <label>Email address</label>
	            <input type="email" class="form-control" placeholder="Enter email">
                </div>
                <div class="form-group">
	            <label>Password</label>
                    <input type="password" class="form-control" placeholder="Enter password">
                </div>
                <div class="checkbox div4" >
                    <label>
     		        <input type="checkbox" disabled>Remember me
    	            </label>
  	        </div>
                <div class="pull-right">
                    <button type="submit" class="btn btn-default font3">Sign in</button>
                    <a class="btn btn-primary font3" href="registerpage">Join us</a>
                </div>
            </form>
        </div>
    </div>
    <div class="footer">
        <div class = "div7">
            <span><br>Version 1.0.0</span>
            <span style="font-style:italic">@WJTeam</span>
        </div>
    </div>
  </body>
</html>
