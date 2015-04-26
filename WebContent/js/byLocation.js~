var data = {"NY":23, "NJ":15, "MD":7, "GA":0, "CT":2, "MA":12, "DE":0, "PA":16, "SC":11, "NH":10, "VA":24, "CA":70, "RL":5, "OH":9};
var color = ["#ff0000", "#dc143c", "#7fff00", "#ff69b4", "#7ffd4", "#800000", "#00ff7f", "#228b22", "#adff2f", "#008000", "#ffebcd", "#ffa500", "#ff8c00", "#ffff00", "#ffd700", "#800080", "#00ffff", "#4b0082", "#ba55d3"];
window.onload=function (){
    var obj = document.getElementById('div4l');
    for(var key in data) {
    	if(data[key] != 0) {
            var oDiv = document.createElement('div');
     	    oDiv.className = "div1 roundCorner font2";
	    var ram = Math.floor(Math.random() * color.length);
 	    oDiv.style.background = color[ram];
    	    oDiv.innerHTML = key;
	    oDiv.index = key;
	    oDiv.onmouseover = function () {
	        this.innerHTML = data[this.index];
            }
            oDiv.onmouseout = function () {
                this.innerHTML = this.index;
	    }
    	    obj.appendChild(oDiv);
        }
    }
    obj.className = "div2 roundCorner";
}

