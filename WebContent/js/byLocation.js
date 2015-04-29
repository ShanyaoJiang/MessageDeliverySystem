$.ajax({
	type : "POST",
	dataType : "json",
	url : "checkStatus",
	success: function(json){
	    var obj = $.parseJSON(json);
	    if(obj.status=="in") {
	    	$('#div4n').html("<div><p class='font5'>" + obj.userId + "</p></div>");
	    	$('#div4n').show();
	    	$('#div4d').html(
	    			"<div><h3>Welcome Back!!!</h3></div>" +
	    			"<div><h3>Dear " + obj.userId + "</h3></div>" + 
	    			"<div><h3>You have sent " + obj.messageCount + " messages</h3></div>"
	    			
	    			);
	    	$('#div4n').show();
	    	$('#div4d').show();
	    }
	    else {
	    	$('#div4n').show();
	    	$('#div4d').show();

	    }
	},
	    error: function(e){
	      alert(e);
	      $('#div4d').show();
	    }
});
var data = {
	"NY" : 23,
	"NJ" : 15,
	"MD" : 7,
	"GA" : 0,
	"CT" : 2,
	"MA" : 12,
	"DE" : 0,
	"PA" : 16,
	"SC" : 11,
	"NH" : 10,
	"VA" : 24,
	"CA" : 70,
	"RL" : 5,
	"OH" : 9
};
var color = [ "#ff0000", "#dc143c", "#7fff00", "#ff69b4", "#7ffd4", "#800000",
		"#00ff7f", "#228b22", "#adff2f", "#008000", "#ffebcd", "#ffa500",
		"#ff8c00", "#ffff00", "#ffd700", "#800080", "#00ffff", "#4b0082",
		"#ba55d3" ];
window.onload = function() {
	$('#div4d').hide();
	$('#div4n').hide();
	var obj = document.getElementById('div4l');
	for ( var key in data) {
		if (data[key] != 0) {
			var oDiv = document.createElement('div');
			oDiv.className = "div1 roundCorner font2";
			var ram = Math.floor(Math.random() * color.length);
			oDiv.style.background = color[ram];
			oDiv.innerHTML = key;
			oDiv.index = key;
			oDiv.onmouseover = function() {
				this.innerHTML = data[this.index];
			}
			oDiv.onmouseout = function() {
				this.innerHTML = this.index;
			}
			obj.appendChild(oDiv);
		}
	}
	pushPages(0);
}

function pushPages(currpage) {
	var strBody="";
	var number=""
	$.ajax({
		type: "POST",
		dataType: "json",
		url: "pushPages",
		data: "curr="+(currpage + 1),
		success: function(json) {
			var list= $.parseJSON(json).pageData;
			alert(list);
            $("#table4p tr:gt(0)").remove();  
			$.each(list, function(i, n) {
				 var trs = "";  
				 
                 trs += "<tr><td align='center'>" + n + "</td></tr>";  
              strBody+=trs; 
			});
			$('#table4p').append(strBody);
			alert(strBody);
			$('#table4p td:gt(0):odd').attr("class", "");
			$('#table4p td:gt(0):even').attr("class", "");
		}
	});
	$("#Pagination").pagination(json.pageCount, {  
        callback: pageselectCallback,  
        prev_text: '<< Previous',  
        next_text: 'Next >>',  
        items_per_page:6,  
         num_display_entries:6,  
         current_page:pageindx,  
         num_edge_entries:2  
    });  
}
