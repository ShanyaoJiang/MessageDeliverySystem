
var color = [ "#ff0000", "#dc143c", "#7fff00", "#ff69b4", "#7ffd4", "#800000",
		"#00ff7f", "#228b22", "#adff2f", "#008000", "#ffebcd", "#ffa500",
		"#ff8c00", "#ffff00", "#ffd700", "#800080", "#00ffff", "#4b0082",
		"#ba55d3" ];
window.onload = function() {
	$('#div4d').hide();
	$('#div4n').hide();
	checkStatus();
	getCounts();
	pushPages(0);
}

function pushPages(currpage) {
	var strBody = "";
	var count = 0;
	$.ajax({
		type : "POST",
		dataType : "json",
		url : "pushPages",
		data : "curr=" + (currpage + 1),
				success : function(json) {
			var list = $.parseJSON(json).pageData;
			count = $.parseJSON(json).pageCount;
			$.each(list, function(i, n) {
				var trs = "";

				trs += "<tr><td style='width: 80%'><a href='getContent?messageid='" + n.messageid + "'>"+ n.title + "</a></td><td>"
						+ n.author + "</td></tr>";
				strBody += trs;
			});
			$('#tbody4p').html(strBody);
			if (count != 0) {
				$('#pagination').twbsPagination(
						{
							totalPages : ((count % 15 == 0) ? (count / 15)
									: (count / 15 + 1)),
							visiblePages : 5,
							onPageClick : function(event, page) {
								pushPages(page - 1);
							}
						});
			}
		}
	});
}
function checkStatus() {
	$.ajax({
		type : "POST",
		dataType : "json",
		url : "checkStatus",
		success : function(json) {
			var obj = $.parseJSON(json);
			if (obj.status == "in") {
				$('#div4n').html(
						"<div><p class='font5'>" + obj.userId + "</p></div>");
				$('#div4n').show();
				$('#div4d').className = "div3";
				$('#div4d').html(
						"<div><h3>Welcome Back!!!</h3></div>"
								+ "<div><h3>Dear " + obj.userId + "</h3></div>"
								+ "<div><h3>You have sent " + obj.messageCount
								+ " messages</h3></div>"

				);
				$('#div4n').show();
				$('#div4d').show();
				document.getElementById("div4p").style.display="block";	
				} else {
				$('#div4n').show();
				$('#div4d').show();

			}
		},
		error : function(e) {
			alert(e);
			$('#div4n').show();
			$('#div4d').show();
		}
	});
}

function getCounts() {
	$.ajax({
		type: "POST",
		datatype: "json",
		url: "getCount",
		success: function(json) {
			var obj = $.parseJSON(json);
			var list = obj.countData;
			var div4l = document.getElementById('div4l');
			for ( var key in list) {
				if (list[key].count != 0) {
					var oDiv = document.createElement('div');
					oDiv.className = "div1 roundCorner font2";
					var ram = Math.floor(Math.random() * color.length);
					oDiv.style.background = color[ram];
					oDiv.innerHTML = list[key].state;
					oDiv.index = key;
					oDiv.onmouseover = function() {
						this.innerHTML = list[this.index].count;
					}
					oDiv.onmouseout = function() {
						this.innerHTML = list[this.index].state;
					}
					div4l.appendChild(oDiv);
				}
			}
		},
		
	});
}