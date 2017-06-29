/**
 * 
 */



// Get the modal
var selCalModal = document.getElementById('selectCalendarModal');

// Get the button that opens the modal
var selFrmCal = document.getElementsByClassName("sel-form-calendar")[0];

// Get the <span> element that closes the modal
var selCalClose = document.getElementById("selectCalendarClose");

// When the user clicks on the button, open the modal 
selFrmCal.onclick = function() {
	selCalModal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
selCalClose.onclick = function() {
	selCalModal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == selCalModal) {
    	selCalModal.style.display = "none";
    }
}




/********************************************************************************/


/*	윤년 조건	*/
//4로 나누어 떨어지는 년도는 윤년이다
//그 중 100으로 나누어 떨어지는 년도는 윤년이 아니다
//400으로 나누어 떨어지는 년도는 무조건 윤년이다
function isLeapYear(year) {
	return ( (year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0) );	//윤년
}

/*	일수 구하기	*/
//https://www.timeanddate.com/calendar/months/
function totDays(year, month) {
switch (month) {
	case 1:
	case 3:
	case 5:
	case 7:
	case 8:
	case 10:
	case 12:
		return 31;
	case 4:
	case 6:
	case 9:
	case 11:
		return 30;
	case 2:
		return (isLeapYear(year) ? 29 : 28);	//2월에 하루 더 있는 해가 '윤년'
	default:
		return -1;
	}
}

let selCalSnackBar;
(function() {
	//일 나열하기
	const chosenDate = document.getElementById("chosenDate");
	const curSelectedOnCal = document.getElementById("curSelectedOnCal");
	
	var nowDate = new Date();	//오늘 날짜
	//nowDate = new Date(2017, 5, 1);	//2017년 ((5 + 1)%12)월 1일
	//nowDate = new Date(2017, 10, 25);	//2017년 ((10 + 1)%12)월 25일
	//nowDate = new Date(2017, 11, 21);	//2017년 ((11 + 1)%12)월 21일
	//nowDate = new Date(2017, 12, 13);	//2017년 ((12 + 1)%12)월 13일

	//HTML Settings(1)
	var firstDaysList = document.getElementById("firstDaysList");
	firstDaysList.innerHTML = "";
	var blankCnt = 0;
	for (var i = 0; i < parseInt(new Date(nowDate.getFullYear(), nowDate.getMonth(), 1).getDay()); i++) {
		firstDaysList.innerHTML += "<li></li>";
		blankCnt++;
	}
	
	//HTML Settings(2-1)
	var selfStyle = "color: lightgray;";
	var tagAvailable = ""
	var firstUnavailableCnt = blankCnt;
	var alreadyFourWeeks = false;
	var availableDays = 7*4;	//4주
	var availableCnt = 0;
	var firstMonthCnt = 0;
	var dayCnt = parseInt(blankCnt) + 0;
	for (var i = 1; i <= totDays(nowDate.getFullYear(), parseInt(nowDate.getMonth()) + 1); i++) {
		if(i == nowDate.getDate()) {
			firstDaysList.innerHTML += "<li><span class='available active'  >" + i + "</span></li>";
			selfStyle = "color: gray; cursor: pointer;";
			tagAvailable = "class='available'";
			availableCnt++;
		} else {
			//(!) '3-Depth' 3항 연산자 주의!
			firstDaysList.innerHTML += "<li><span " + tagAvailable +" style='padding: 3px;" + (tagAvailable.length > 0 ? "" : "cursor:default;") + selfStyle + ((selfStyle.length>0 && dayCnt%7==6) ? ((tagAvailable.length == 0) ? "color:lightblue;" : "color:blue;") : ((selfStyle.length>0 && dayCnt%7==0) ? ((tagAvailable.length == 0) ? "color:lightpink;" : "color:red;") : "")) + "'>" + i + "</span></li>";
			if(tagAvailable.length == 0) {
				if(!alreadyFourWeeks) firstUnavailableCnt++;
			} else {
				availableCnt++;
			}
			if(availableDays - availableCnt == 0)  {
				alreadyFourWeeks = true;
				tagAvailable = "";
				selfStyle = "color: lightgray;";
			}
		}
		firstMonthCnt++;
		dayCnt++;
	}
	//HTML Settings(2-2)
	var makeNextMonth = (availableDays - availableCnt > 0);
	var nextMonthDate = new Date();
	if(makeNextMonth) {
		//init
		document.getElementsByClassName("calendar-wrapper")[1].style = "block";
		var secondDaysList = document.getElementById("secondDaysList");
		secondDaysList.innerHTML = "";
		var nyyyy = nowDate.getFullYear();
		var mm   = nowDate.getMonth() + 1;
		if( mm % 12 == 0 ) {
			nyyyy += 1;
			mm %= 12;
		}
		nextMonthDate = new Date(nyyyy, mm, 1);
		blankCnt = 0;
		for (var i = 0; i < parseInt(new Date(nextMonthDate.getFullYear(), nextMonthDate.getMonth(), 1).getDay()); i++) {
			secondDaysList.innerHTML += "<li></li>";
			blankCnt++;
		}
		dayCnt = parseInt(blankCnt) + 0;
		for (var i = 1; i <= totDays(nextMonthDate.getFullYear(), parseInt(nextMonthDate.getMonth()) + 1); i++) {
			secondDaysList.innerHTML += "<li><span " + tagAvailable +" style='padding: 3px;" + (tagAvailable.length > 0 ? "" : "cursor:default;") + selfStyle + ((selfStyle.length>0 && dayCnt%7==6) ? ((tagAvailable.length == 0) ? "color:lightblue;" : "color:blue;") : ((selfStyle.length>0 && dayCnt%7==0) ? ((tagAvailable.length == 0) ? "color:lightpink;" : "color:red;") : "")) + "'>" + i + "</span></li>";
			if(availableDays - availableCnt == 1)  {
				tagAvailable = "";
				selfStyle = "color: lightgray;";
			}
			availableCnt++;
			dayCnt++;
		}
		document.getElementById("selectCalendarModal").children[0].style.width = "814px";
	} else {
		document.getElementById("selectCalendarModal").children[0].style.width = "407px";
	}
	
	
	//Event Settings
	function initCalSetting(obj) {
		for (var j = 0; j < availables.length; j++){
			availables[j].style.backgroundColor = "";
			//(!) '2-Depth' 3항 연산자 주의!
			availables[j].style.color = (((j + firstUnavailableCnt)%7==6) ? "blue" : (((j + firstUnavailableCnt)%7==0) ? "red" : "gray"));
		}
		obj.style.backgroundColor = "crimson";
		obj.style.color = "white";
		
		//선택 날짜 보여주기
		obj.innerText = obj.innerText.trim();
		if(parseInt(obj.innerText) >= nowDate.getDate() && parseInt(this.innerText) <= firstMonthCnt) {
			curSelectedOnCal.innerText = nowDate.getFullYear() + "." + (parseInt(nowDate.getMonth()) < 9 ? "0" + (nowDate.getMonth()) : (nowDate.getMonth())) + "." + (obj.innerText.length > 1 ? obj.innerText : "0" + obj.innerText);
		} else {
			curSelectedOnCal.innerText = nextMonthDate.getFullYear() + "." + (parseInt(nextMonthDate.getMonth()) < 9 ? "0" + (nextMonthDate.getMonth()) : (nowDate.getMonth())) + "." + (obj.innerText.length > 1 ? obj.innerText : "0" + obj.innerText);
		}
	}
	var availables = document.getElementsByClassName("available");
	for (var ii = 0; ii < availables.length; ii++){
		const constTemp = ii;	//for the Annonymous Functions
		availables[constTemp].onmouseover = function() {
			if(this.style.backgroundColor == "crimson")return false;
			this.style.backgroundColor = "pink";
		};
		availables[constTemp].onmouseout = function() {
			if(this.style.backgroundColor == "crimson")return false;
			this.style.backgroundColor = "";
			//(!) '2-Depth' 3항 연산자 주의!
			this.style.color = (((constTemp + firstUnavailableCnt)%7==6) ? "blue" : (((constTemp + firstUnavailableCnt)%7==0) ? "red" : "gray"));
		};
		availables[constTemp].onclick = function() {
			initCalSetting(this);
			
			//snackBar
			var x = document.getElementById("selCalModalSnackbar");
		    x.className = "show";
		    selCalSnackBar = setTimeout(function(){ x.className = x.className.replace("show", ""); }, 1200);
		};
		availables[constTemp].ondblclick = function() {
	    	document.getElementById("chosenDate").value = document.getElementById("curSelectedOnCal").innerText;
	    	selCalModal.style.display = "none";
		};

		//선택된 날짜
		if(nowDate.getMonth() == (parseInt(chosenDate.value.split(".")[1]) -1)
		&& (parseInt(availables[constTemp].innerText)) == parseInt(chosenDate.value.split(".")[2])) {	
			initCalSetting(availables[constTemp]);
		} else if(nextMonthDate.getMonth() == (parseInt(chosenDate.value.split(".")[1]) -1)
		&& (parseInt(availables[constTemp].innerText)) == parseInt(chosenDate.value.split(".")[2])) {	
			initCalSetting(availables[constTemp]);
		}
	}


	
	//월 이름
	var monthNames = 
	[
	'January', 
	'February', 
	'March', 
	'April', 
	'May', 
	'June', 
	'July', 
	'August', 
	'September', 
	'October', 
	'November', 
	'December'
	];
	
	var monthName = document.getElementsByClassName("monthName");
	for(var i = 0; i < monthName.length; i++) {
		monthName[i].innerText = monthNames[(nowDate.getMonth() + i)%monthNames.length]
	}


	
	//년도 구하기
	var cyyyy = document.getElementsByClassName("yyyy");
	if(cyyyy[0].tagName.toUpperCase() == "INPUT") {
		cyyyy[0].value = nowDate.getFullYear();
		if(makeNextMonth) cyyyy[1].value = nextMonthDate.getFullYear();
	} else {
		cyyyy[0].innerHTML = nowDate.getFullYear();
		if(makeNextMonth) cyyyy[1].innerHTML = nextMonthDate.getFullYear();
	}
})();
