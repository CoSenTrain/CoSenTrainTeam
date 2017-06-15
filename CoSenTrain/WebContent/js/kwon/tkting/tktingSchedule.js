/**
 * 
 */

function openCity(o, evt, cityName) {
	document.getElementById("tktingMethod").value = cityName;
	
	var tktingMethods = document.getElementsByClassName("tkting-method");
	for (var i = 0; i < tktingMethods.length; i++) {
		tktingMethods[i].innerText = o.innerText;
	}
	
	var i, tabcontent, tablinks;
	tabcontent = document.getElementsByClassName("tabcontent");
	for (i = 0; i < tabcontent.length; i++) {
		tabcontent[i].style.display = "none";
	}
	tablinks = document.getElementsByClassName("tablinks");
	for (i = 0; i < tablinks.length; i++) {
		tablinks[i].className = tablinks[i].className.replace(" active", "");
	}
	document.getElementById(cityName).style.display = "block";
	evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();