/**
 * 
 */

(function setTimeAtForm() {
	var chosenDate = document.getElementById("chosenDate");
	var timeAfter = document.getElementById("timeAfter");
	
	if(parseInt(getHH()) < 22) {	//오늘 22시 이전이라면
		//chosenDate.value = getYYYY() + "." + getMM() + "." + getDD();
		for(var i = timeAfter.children.length-1; i >= 0; i--) {
			if(parseInt(timeAfter.children[i].value) < (parseInt(getHH()) + 1)) break;
			timeAfter.value = timeAfter.children[i].value;
		}
	} else {			//아니면 다음 날짜로 조회해야한다.
		var tomorrow = new Date();
		tomorrow.setDate(new Date().getDate()+1);
		
		var tyyyy = "" + tomorrow.getFullYear();
		var tmm   = "" + ((tomorrow.getMonth() + 1) < 10 ? "0" + (tomorrow.getMonth() + 1) : (tomorrow.getMonth() + 1));
		var tdd   = "" + (tomorrow.getDate() < 10 ? "0" + tomorrow.getDate() : tomorrow.getDate());
					
		chosenDate.value = tyyyy + "." + tmm + "." + tdd;
		timeAfter.value = "00";
	}
})();