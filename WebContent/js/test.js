/**
 * 
 */


$().ready(function() {
	 $("#messageForm").validate({
	        rules: {
	   title: "required",
	   content:"required"   
	  },
	        messages: {
	   title: "hehe",
	   content:"haha"
	  }
	    });
	 alert("abssfffb");
	});
