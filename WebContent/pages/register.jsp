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
    <script src="js/validator.min.js"></script>
    

  </head>
  <body>
    <div>
    	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="navbar-header">
      	        <a class="navbar-brand font1" href="#">WJTeam</a>
   	    </div>
            <div>
      	        <ul class="nav navbar-nav font1">
                    <li><a href="welcome">Home</a></li>
                    <li class="active"><a href="#">Registeration Management</a></li>
      	       </ul>
   	    </div>
        </nav>
        <div class="div6">
            <div class = "div7">
                <h1>Message Delivery System</h1>
                <span>Shanyao Jiang and Boyu Wang</span>
                <span style="font-style:italic">@WJTeam</span>
            </div>
        </div>
        <div class="div5">
            <div class="font4">
                <h1>Welcome</h1>
            </div>
            <form id="registerForm" action="registerUser" method="POST" data-toggle="validator">
                <div class="form-group">
                    <label for="email" class="control-label">Email address</label>
	            <input id="email" type="email" name="user.email" class="form-control" data-error="Bruth,that email address is invalid" placeholder="Enter email" required>
	            <div class="help-block with-errors"></div>
                </div>
                <div class="form-group">
                    <label for="Nickname" class="control-label">Nickname/ID</label>
	            <input id="Nickname" type="text" name="user.userId"  class="form-control" placeholder="Enter id" required>
                </div>
                <div class="form-group">
	            <label for="inputPassword" class="control-label">Password</label>
                    <input type="password" data-minlength="7" data-error="Minimum of 7 characters" id="inputPassword" name="user.password" class="form-control" placeholder="Enter password" required>
                    <div class="help-block with-errors"></div>
                </div>
                <div class="form-group">
	            <label for="retypePassword" class="control-label">Retype Password</label>
                    <input type="password" class="form-control" id="retypePassword" data-match="#inputPassword" placeholder="Retype password" data-match-error="Whoops, these don't match" required>
                    <div class="help-block with-errors"></div>
                </div>
                <div>
                    <button type="submit" class="btn btn-primary font3">Sign up</button>
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
