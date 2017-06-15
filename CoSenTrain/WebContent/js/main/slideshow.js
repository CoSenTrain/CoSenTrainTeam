/**
 * 
 */

var slideIndex = 1;

function plusSlides(n) {
	showSlides(slideIndex += n);
}

function currentSlide(n) {
	showSlides(slideIndex = n);
}

function showSlides(n) {
	var i;
	var slides = document.getElementsByClassName("mySlides");
	var dots = document.getElementsByClassName("dot");
	if (n > slides.length) {
		slideIndex = 1
	}
	if (n < 1) {
		slideIndex = slides.length
	}
	for (i = 0; i < slides.length; i++) {
		slides[i].style.display = "none";
	}
	for (i = 0; i < dots.length; i++) {
		dots[i].className = dots[i].className.replace(" active", "");
	}
	slides[slideIndex - 1].style.display = "block";
	dots[slideIndex - 1].className += " active";
}

var intervalShow = function() {
	slideIndex++;
	showSlides(slideIndex);
}


showSlides(slideIndex);
var slidingInterval = setInterval('plusSlides(1)', 3000);

function stopSliding(fa) {
	if(fa.className == "fa fa-pause") {
		fa.className = "fa fa-play";
		fa.style.color = "crimson";
		clearInterval(slidingInterval);
	} else if(fa.className == "fa fa-play") {
		fa.className = "fa fa-pause";
		fa.style.color = "maroon";
		plusSlides(1);
		slidingInterval = setInterval('plusSlides(1)', 3000);
	}
}