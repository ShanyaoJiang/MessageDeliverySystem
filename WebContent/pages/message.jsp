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
    <%@ taglib uri="/struts-tags" prefix="s"%> 
 
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
                <h1 font-size=15px>Message Delivery System</h1>
                <span>Shanyao Jiang and Boyu Wang</span>
                <span style="font-style:italic">@WJTeam</span>
            </div>
        </div>
        <div class="div5" style="border-right:1px solid #6E6A6B; border-left:1px solid #6E6A6B; border-top:1px solid #6E6A6B; border-bottom:1px solid #6E6A6B; border-width:2px;">
            <div class="font6">
                
						<s:property value="msg.title" />
            </div>
            	<div class="div15" style="border-bottom:1px solid #6E6A6B; border-width:1px; ">
            	 <div class="font7">
            	by
            	<s:property value="msg.authorId" />
            	,
            	<s:property value="msg.location" />
            	</div>
            </div>
 			<div class="div16 font8">
            	
            	<s:property value="msg.content" />
            	
            	</div>
   
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