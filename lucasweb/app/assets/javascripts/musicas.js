/* musicas.js */

function colapse(){
  var coll = document.getElementsByClassName("collapsible_music");
  var i;

  for (i = 0; i < coll.length; i++) {
    coll[i].addEventListener("click", function() {
      this.classList.toggle("active");
      var content = this.nextElementSibling;
      if (content.style.maxHeight){
        content.style.maxHeight = null;
      } else {
        content.style.maxHeight = content.scrollHeight + "px";
      } 
    });
  }

  var player = document.getElementById('player');
  var buttonplay = document.getElementById('btnplay');
  var buttonstop = document.getElementById('btnstop');
  var duration;

  buttonplay.addEventListener('click', function(){
    if(player.paused){
      this.style.fontSize = "10px";
      this.innerHTML = "&#9611;&#9611;";
      player.play();
    }else{
      this.style.fontSize = "15px";
      this.innerHTML = "&#9654;";
      player.pause();
    }
  });

  buttonstop.addEventListener('click',function(){
     player.pause();
     player.currentTime = 0;
  });

  player.addEventListener('durationchange',function(){
    duration = player.duration;
  });

  player.addEventListener('timeupdate', function() {
      var currentTime = player.currentTime;
      var progress = document.getElementById('hp_range');
      progress.value = (currentTime/duration);
  });

}