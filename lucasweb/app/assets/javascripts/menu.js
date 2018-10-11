//menu.js

function screenload(){
var header = document.getElementById("Cabecalho");
if(header != null){
  var sticky = header.offsetTop;	
}

window.onscroll = function() {
	if (header != null){
	  scrollMenu();
	}
};

function scrollMenu() {
if ((window.pageYOffset >= 0)&&(window.pageYOffset < 274)){
	header.style.top = null;
	header.style.bottom = "0";
	header.style.position = "fixed";
	header.style.width = "100%";
	header.style.opacity = "0.85";
	header.style.transitionDuration = "0.7s";
}else if (window.pageYOffset > 742) {
   header.style.opacity = "1";
   header.style.bottom = null;
   header.style.top = "0";
   header.style.position = "fixed";
   header.style.width = "100%";
}else if (window.pageYOffset > 274){
   header.style.position = "relative";
}

}

}


function openNav() {
    document.getElementById("SideMenu").style.width = "250px";
}

function closeNav() {
    document.getElementById("SideMenu").style.width = "0";
}